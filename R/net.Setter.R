#' Sets the batch size of the \code{\link{Net}}.
#'
#' @param net A instance of the class \code{\link{Net}}.
#' @param value Object of the class \code{numeric}.
#' 
#' @seealso \code{\link{Net}}
#' 
#' @export
#' @docType methods
#' @rdname setBatchSize-methods
#' @include net.R
setGeneric("setBatchSize<-",function(net,value){standardGeneric("setBatchSize<-")})

#' @rdname setBatchSize-methods
#' @aliases setBatchSize<-,Net-method
#' @name setBatchSize
setReplaceMethod(
  f="setBatchSize",
  signature="Net",
  definition=function(net,value){
    net@batchSize <-value
    return (net)
  }
)

#' Sets if the weights are saved as ff objects
#'
#' @param net A instance of the class \code{\link{Net}}.
#' @param value Boolean value which indicates if the weights are saved as ff 
#' objects
#' 
#' @seealso \code{\link{Net}}
#' 
#' @export
#' @docType methods
#' @rdname setFF-methods
#' @include net.R
setGeneric("setFF<-",function(net,value){standardGeneric("setFF<-")})

#' @rdname setFF-methods
#' @aliases setFF<-,Net-method
#' @name setFF
setReplaceMethod(
  f="setFF",
  signature="Net",
  definition=function(net,value){
    net@ff <- value
    return (net)
  }
)

#' Sets the error function of the \code{\link{Net}}.
#'
#' @param net A instance of the class \code{\link{Net}}.
#' @param value Object of the class \code{function}.
#' 
#' @seealso \code{\link{Net}}
#' 
#' @export
#' @docType methods
#' @rdname setErrorFunction-methods
setGeneric("setErrorFunction<-",function(net,value){standardGeneric("setErrorFunction<-")})

#' @rdname setErrorFunction-methods
#' @aliases setErrorFunction<-,Net-method
#' @name setErrorFunction
setReplaceMethod(
  f="setErrorFunction",
  signature="Net",
  definition=function(net,value){
    net@errorFunction <- value
    return (net)
  }
)

#' Sets the log level for the \code{\link{Net}}.
#'
#' The log levels a defined by the \code{\link{futile.logger}} package.
#' The following levels a available:
#' \tabular{ll}{
#' TRACE\cr 
#' DEBUG\cr
#' INFO\cr
#' WARN\cr
#' ERROR\cr
#' FATAL 
#' }
#' 
#' @param net A instance of the class \code{\link{Net}}.
#' @param value Object of the class \code{numeric}.
#' 
#' @seealso \code{\link{Net}}
#' 
#' @export
#' @docType methods
#' @rdname setLogLevel-methods
setGeneric("setLogLevel<-",function(net,value){standardGeneric("setLogLevel<-")})

#' @rdname setLogLevel-methods
#' @aliases setLogLevel<-,Net-method
#' @name setLogLevel
setReplaceMethod(
  f="setLogLevel",
  signature="Net",
  definition=function(net,value){
    if(value == TRACE | 
       value == DEBUG |
       value == WARN | 
       value == ERROR | 
       value == FATAL |
       value == INFO){
      flog.threshold(value)
    }else{
      flog.warn(net@logger,paste("It is not possible to set the log level to",value))
      flog.info(net@logger,paste("The current log level is:",flog.logger()$threshold))
    }
    return (net)
  }
)

#' Sets the function for generating weight matrices.
#' 
#' The function have to return a matrix with number of units in the lower layer
#' as number of rows and number of units in the upper layer as the number of 
#' columns.
#'
#' @param net A instance of the class \code{\link{Net}}.
#' @param value Object of the class \code{function}.
#' 
#' @seealso \code{\link{Net}}
#' 
#' @export
#' @docType methods
#' @rdname setGenWeightFunction-methods
setGeneric("setGenWeightFunction<-",function(net,value){standardGeneric("setGenWeightFunction<-")})

#' @rdname setGenWeightFunction-methods
#' @aliases setGenWeightFunction<-,Net-method
#' @name setGenWeightFunction
setReplaceMethod(
  f="setGenWeightFunction",
  signature="Net",
  definition=function(net,value){
    net@genWeightFunction <- value
    return (net)
  }
)

#' Sets the final momentum of the \code{\link{Net}}.
#' 
#' @param net A instance of the class \code{\link{Net}}.
#' @param value Object of the class \code{numeric}.
#' 
#' @seealso \code{\link{Net}}
#' 
#' @export
#' @docType methods
#' @rdname setFinalMomentum-methods
setGeneric("setFinalMomentum<-",function(net,value){standardGeneric("setFinalMomentum<-")})

#' @rdname setFinalMomentum-methods
#' @aliases setFinalMomentum<-,Net-method
#' @name setFinalMomentum
setReplaceMethod(
  f="setFinalMomentum",
  signature="Net",
  definition=function(net,value){
    net@finalMomentum <-value
    return (net)
  }
)

#' Sets the momentum of the \code{\link{Net}}.
#' 
#' @param net A instance of the class \code{\link{Net}}.
#' @param value Object of the class \code{numeric}.
#' 
#' @seealso \code{\link{Net}}
#' 
#' @export
#' @docType methods
#' @rdname setMomentum-methods
setGeneric("setMomentum<-",function(net,value){standardGeneric("setMomentum<-")})

#' @rdname setMomentum-methods
#' @aliases setMomentum<-,Net-method
#' @name setMomentum
setReplaceMethod(
  f="setMomentum",
  signature="Net",
  definition=function(net,value){
    net@momentum <-value
    return (net)
  }
)

#' Sets the momentum switch of the \code{\link{Net}}.
#' 
#' @param net A instance of the class \code{\link{Net}}.
#' @param value Object of the class \code{numeric}.
#' 
#' @seealso \code{\link{Net}}
#' 
#' @export
#' @docType methods
#' @rdname setMomentumSwitch-methods
setGeneric("setMomentumSwitch<-",function(net,value){standardGeneric("setMomentumSwitch<-")})

#' @rdname setMomentumSwitch-methods
#' @aliases setMomentumSwitch<-,Net-method
#' @name setMomentumSwitch
setReplaceMethod(
  f="setMomentumSwitch",
  signature="Net",
  definition=function(net,value){
    net@momentumSwitch <-value
    return (net)
  }
)

#' Sets the learning rate for the weights.
#' 
#' @param net A instance of the class \code{\link{Net}}.
#' @param value Object of the class \code{numeric}.
#' 
#' @seealso \code{\link{Net}}
#' 
#' @export
#' @docType methods
#' @rdname setLearnRateWeights-methods
setGeneric("setLearnRateWeights<-",function(net,value){standardGeneric("setLearnRateWeights<-")})

#' @rdname setLearnRateWeights-methods
#' @aliases setLearnRateWeights<-,Net-method
#' @name setLearnRateWeights
setReplaceMethod(
  f="setLearnRateWeights",
  signature="Net",
  definition=function(net,value){
    net@learnRateWeights <-value
    return (net)
  }
)

#' Adds a list of statistics to the network
#' 
#' The list of statistics can contain values about errors, miss 
#' classifications and other useful things from the pre-training or fine-tuning
#'  of a deep architecture.
#' 
#' @usage setStats(net) <- value
#'
#' @param net A instance of the class \code{\link{Net}}.
#' @param value Statistics for the \code{\link{Net}}.
#'  
#' @export
#' @docType methods
#' @rdname setStats-methods
#' @include net.R
setGeneric("setStats<-",function(net,value){standardGeneric("setStats<-")})

#' @rdname setStats-methods
#' @aliases setStats<-,Net-method
#' @name setStats
setReplaceMethod(
  f="setStats",
  signature="Net",
  definition=function(net,value){
    net@stats <- value
    return (net)
  }
)
