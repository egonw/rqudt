newQuantity <- function(value=NA, unit=NA) {
  if (is.na(value) | is.na(unit))
    stop("You must provide a value and a unit")

  unitList <- findUnits(unit)
  unitObj <- unitList$get(as.integer(0))

  quantity <- .jnew(
   "com/github/jqudt/Quantity", as.double(value), unitObj
  )

  quantity
}

