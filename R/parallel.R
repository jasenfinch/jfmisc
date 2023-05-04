#' Generate a suitable parallel processing plan
#' @rdname parallel
#' @description Generate a suitable parallel processing future plan for your session. See `?future::plan` 
#' for more details on future plans.
#' @param strategy The parallel strategy to use. See `?future::plan` for details.
#' @param workers The number of workers to use.
#' @param RAM_per_worker The memory (in gigabytes) to allocate to each worker when calculating a suitable 
#' number of workers. 
#' @param proportion_max_workers A value between 0 and 1. The maximum number of workers to allocate as a 
#' proportion of the total number of workers available (as detected by `future::availableCores()`). 
#' @param ... Arguments to pass to `future::plan()`.
#' @examples 
#' ## Return a suitable parallel strategy for the current session
#' suitableParallelStrategy()
#' 
#' ## Return a suitable number parallel workers based on the system resources.
#' suitableParallelWorkers()
#' 
#' \dontrun{
#' ## Generate a suitable parallel plan
#' suitableParallelPlan()
#' }
#' @importFrom future availableCores multisession multicore plan supportsMulticore
#' @importFrom memuse Sys.meminfo
#' @export

suitableParallelPlan <- function(strategy = suitableParallelStrategy(),
                                 workers = suitableParallelWorkers(),
                                 ...){
  
  plan(strategy,workers = workers,...)
  
  if (!is.character(strategy)) strategy <- class(strategy)[1]
  
  message(paste('Setting up a',strategy,'plan with',workers,'workers'))
}

#' @rdname parallel
#' @export

suitableParallelStrategy <- function(){
  strategy <- ifelse(
    supportsMulticore(),
    'multicore',
    'multisession')
  
  strategy
}

#' @rdname parallel
#' @export

suitableParallelWorkers <- function(RAM_per_worker = 8,proportion_max_workers = 0.75){
  
  total_RAM <- Sys.meminfo()[['totalram']] %>% 
    gsub('[a-zA-Z]','',x = .) %>% 
    as.numeric()
  
  suitable_workers <- floor(total_RAM / RAM_per_worker)
  max_workers <- ceiling(availableCores() * proportion_max_workers)
  
  if (suitable_workers > max_workers) {
    workers <- max_workers 
  } else {
    workers <- suitable_workers
  }
  
  if (workers < 1){
    workers <- 1
  }
  
  return(workers)
}