convertTo <- function(quantity=null, unit=NA) {
  if (is.null(quantity) | is.na(unit))
    stop("You must provide a quantity and a unit")

  unitList <- findUnits(unit)
  unitObj <- unitList$get(as.integer(0))

  newQuantity <- quantity$convertTo(unitObj)

  newQuantity
}

