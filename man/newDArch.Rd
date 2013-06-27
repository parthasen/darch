\name{newDArch}
\alias{newDArch}
\title{Constructor function for DArch object.}
\usage{
  newDArch(layers, batchSize, ff = FALSE, logfile = "",
    logLevel = log4r:::INFO,
    genWeightFunc = generateWeights)
}
\arguments{
  \item{layers}{Array of layer sizes.}

  \item{batchSize}{Size of the batches}

  \item{ff}{Indicates whether the \code{\link[ff]{ff}}
  package is used for the weights, biases and outputs}

  \item{logfile}{The file for saving the log messages. The
  default prints the log messages to the console.}

  \item{logLevel}{The logging level.  See
  \code{\link{setLogLevel}} for details.}

  \item{genWeightFunc}{The function for generating the
  weight matrices}
}
\value{
  The new DArch object
}
\description{
  TODO: Doc ...
}
