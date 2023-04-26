#' Generate a suitable parallel processing plan
#' @description Generate a suitable parallel processing future plan for your session. See `?future::plan` for more details on future plans.
#' @param strategy The parallel strategy to use. See `?future::plan` for details. If `NULL` (the default), an appropriate strategy will be detected.
#' @param workers The number of workers to use. If `NULL`, the arguments `RAM_per_worker` and `proportion_max_workers` will be used to calculate a suitable number of workers.
#' @param RAM_per_worker The memory (in gigabytes) to allocate to each worker when calculating a suitable number of workers. Ignored if argument `workers` is not `NULL`.
#' @param proportion_max_workers A value between 0 and 1. The maximum number of workers to allocate as a proportion of the total number of workers available (as detected by `future::availableCores()`). Ignored if argument `workers` is not `NULL`.
#' @examples 
#' \dontrun{
#' suitableParallelPlan()
#' }
#' @importFrom future availableCores multisession multicore plan supportsMulticore
#' @importFrom memuse Sys.meminfo
#' @export

suitableParallelPlan <- function(strategy = NULL,workers = NULL,RAM_per_worker = 8,proportion_max_workers = 0.75){
  
  if (is.null(strategy)) strategy <- ifelse(
    supportsMulticore(),
    'multicore',
    'multisession')
  
  if (is.null(workers)) {
    total_RAM <- Sys.meminfo()[['totalram']] %>% 
      gsub('[a-zA-Z]','',x = .) %>% 
      as.numeric()
    
    suitable_workers <- floor(total_RAM / RAM_per_worker)
    max_workers <- availableCores() * proportion_max_workers
    
    if (suitable_workers > max_workers) {
      workers <- max_workers 
    } else {
      workers <- suitable_workers
    }
  }
  
  plan(strategy,workers = workers)
  
  if (!is.character(strategy)) strategy <- class(strategy)[1]
  
  message(paste('Setting up a',strategy,'plan with',workers,'workers'))
}