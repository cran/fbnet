#' initBN: a function to initialize the bayesian network.
#'
#' @param ped A ped object with information of the genotyped members. The ped object must be in Familias format.
#' @param bplotped An alternative ped object to be compared. 
#' @import graphics
#' @examples
#' ped <- list(
#'   id = c(1, 2, 3),
#'   father = c(0, 0, 1),
#'   mother = c(0, 0, 2),
#'   sex = c(1, 2, 1),  # 1 = male, 2 = female
#'   genotype = c("AA", "AB", "BB")
#' )
#' bplotped <- list(
#'   id = c(4, 5),
#'   father = c(0, 4),
#'   mother = c(0, 5),
#'   sex = c(1, 2),
#'   genotype = c("AB", "AA")
#' )
#' @export
#' @return A bayesian network.

initBN<-function(ped=NULL,bplotped=FALSE){

MUT_MODEL_NAMES <- c("none","equal","stepwise")
 
#if(exists("mmodel")) rm(mmodel)

 if(is.null(ped)){
   res <- initBN.fromVars(bplotped=bplotped)
 }else{
   res <- initBN.fromPed(ped,bplotped=bplotped)
 }
 return(res)
}

