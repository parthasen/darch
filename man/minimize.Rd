\docType{methods}
\name{minimize}
\alias{minimize}
\title{Minimize a differentiable multivariate function.}
\usage{
minimize( X, f, length, ...)
}
\arguments{
  \item{X}{Starting point. An Array of the weights.}

  \item{f}{Function for calculating the function value and
  the partial derivatives}

  \item{length}{Maximum number of line searches or maximum
  allowed number of function evaluations if negative}

  \item{...}{Additional Parameters for the function f}
}
\value{
The function returns the found solution "X", a vector of
function values "fX" indicating the progress made and "i"
the number of iterations (line searches or function
evaluations, depending on the sign of "length") used.
}
\description{
This function is a direct translation from the Matlab
source code of the minimize function from Carl Edward
Rasmussen.
}
\details{
Minimize a differentiable multivariate function.

Usage: [X, fX, i] <- minimize(X, f, length, P1, P2, P3, ...
)

where the starting point is given by "X" (D by 1), and the
function named in the string "f", must return a function
value and a vector of partial derivatives of f wrt X, the
"length" gives the length of the run: if it is positive, it
gives the maximum number of line searches, if negative its
absolute gives the maximum allowed number of function
evaluations. You can (optionally) give "length" a second
component, which will indicate the reduction in function
value to be expected in the first line-search (defaults to
1.0). The parameters P1, P2, P3, ... are passed on to the
function f.

The function returns when either its length is up, or if no
further progress can be made (ie, we are at a (local)
minimum, or so close that due to numerical problems, we
cannot get any closer). NOTE: If the function terminates
within a few iterations, it could be an indication that the
function values and derivatives are not consistent (ie,
there may be a bug in the implementation of your "f"
function). The function returns the found solution "X", a
vector of function values "fX" indicating the progress made
and "i" the number of iterations (line searches or function
evaluations, depending on the sign of "length") used. The
Polack-Ribiere flavour of conjugate gradients is used to
compute search directions, and a line search using
quadratic and cubic polynomial approximations and the
Wolfe-Powell stopping criteria is used together with the
slope ratio method for guessing initial step sizes.
Additionally a bunch of checks are made to make sure that
exploration is taking place and that extrapolation will not
be unboundedly large. See also: checkgrad Copyright (C)
2001 - 2006 by Carl Edward Rasmussen (2006-09-08).
}
\seealso{
\code{\link{DArch}}, \code{\link{minimizeAutoencoder}},
\code{\link{minimizeClassifier}}
}

