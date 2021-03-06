\docType{methods}
\name{loadRBM}
\alias{loadRBM}
\title{Loads a RBM network}
\usage{
loadRBM(name="rbm")
}
\arguments{
  \item{name}{The name of the file without the ending
  ".net".}
}
\value{
\code{rbm} - The loaded RBM
}
\description{
Loads the RBM object from the filename given through the
parameter \code{name} plus the ending ".net".
}
\details{
Make sure when you load a RBM object that every file
written by the \code{\link{saveRBM}}-Function, specially
when the parameter \code{ff} of the saved RBM object is
\code{TRUE}, are in the working directory
}
\seealso{
\code{\link{saveRBM}}, \code{\link{loadRBMFFWeights}},
\code{\link{saveRBMFFWeights}}
}

