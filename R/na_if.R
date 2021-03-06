#' Replace certain values with NA
#' 
#' There are following options for \code{value}: 
#' \itemize{ \item{\code{vector}}{ Vector of values which should be replaced
#' with \code{NA} in \code{x}. } \item{\code{logical vector/matrix/data.frame}}{
#' NA's will be set in places where \code{value} is TRUE. \code{value} will be
#' recycled if needed.} \item{\code{function}}{ NA's will be set in places where
#' \code{value(x)} is TRUE. Function will be applied columnwise. Additionally,
#' there are special functions for common cases of comparison. For example
#' \code{na_if(my_var, gt(98))} will replace all values which are greater than
#' 98 in \code{my_var} with NA. For detailed description of special functions
#' see \link{criteria}} } \code{mis_val} is an alias for the \code{na_if} with
#' absolutely the same functionality.
#' 
#' @param x vector/matrix/data.frame/list
#' @param value vector/matrix/data.frame/function
#'   
#' @return x with NA's instead of \code{value}
#' 
#' @seealso For reverse operation see \link{if_na}, \link{if_val} for more
#'   general recodings.
#'   
#' @examples
#' a = c(1:5, 99)
#' 
#' # 99 to NA
#' na_if(a, 99)    # c(1:5, NA)
#' 
#' a %na_if% 99    # same result
#' 
#' # values which greater than 5 to NA
#' na_if(a, gt(5)) # c(1:5, NA)
#' 
#' set.seed(123)
#' dfs = data.frame(
#'       a = c("bad value", "bad value", "good value", "good value", "good value"),
#'       b = runif(5)
#' )
#' 
#' # rows with 'bad value' will be filled with NA
#' # logical argument and recycling by columns
#' na_if(dfs, dfs$a=="bad value")
#' 
#' a = rnorm(50)
#' # values greater than 1 or less than -1 will be set to NA
#' # special functions usage
#' na_if(a, lt(-1) | gt(1))
#' 
#' # values inside [-1, 1] to NA
#' na_if(a, -1 %thru% 1)
#' @export
na_if = function(x, value){
    if(!length(value)) return(x)
    if_val(x, from=list(value)) = list(NA)
    x
}

#' @rdname na_if
#' @export
'na_if<-' = function(x, value){
    if(!length(value)) return(x)
    if_val(x, from=list(value)) = list(NA)
    x
}

#' @rdname na_if
#' @export
'%na_if%' = na_if


#' @rdname na_if
#' @export
mis_val = na_if

#' @rdname na_if
#' @export
'mis_val<-' = `na_if<-`

#' @rdname na_if
#' @export
'%mis_val%' = na_if