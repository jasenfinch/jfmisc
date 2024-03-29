% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/unmatch.R
\name{unmatch}
\alias{unmatch}
\alias{\%!in\%}
\title{Unmatched operator}
\usage{
x \%!in\% y
}
\arguments{
\item{x}{vector or NULL: the values to be compared}

\item{y}{vector or NULL: the values to be compared against}
}
\description{
A binary operator to detect unmatched values. The opposite of the \code{\%in\%} operator.
}
\examples{
1:10 \%!in\% c(1,3,5,9)
}
