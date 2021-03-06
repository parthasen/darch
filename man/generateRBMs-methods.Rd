\docType{methods}
\name{generateRBMs}
\alias{generateRBMs}
\alias{generateRBMs,DArch-method}
\title{Generates the RBMs for the pre-training.}
\usage{
generateRBMs(darch, layers, genWeightFunc = generateWeights)

\S4method{generateRBMs}{DArch}(darch, layers, genWeightFunc = generateWeights)
}
\arguments{
  \item{darch}{A instance of the class
  \code{\link{DArch}}.}

  \item{layers}{An array with the sizes of the layers}

  \item{genWeightFunc}{The function for generating the
  weight matrices}
}
\value{
The DArch object with the generated RBMs
}
\description{
Used the layer sizes from the DArch object to create the
RBM objects for the pre-training.
}
\seealso{
\code{\link{DArch}} \code{\link{RBM}}
}

