findUnits <- function(unit=NA){
  if (is.na(unit)) stop("You must provide either a unit")

  factory <- .jcall(
   "com/github/jqudt/onto/UnitFactory",
     "Lcom/github/jqudt/onto/UnitFactory;",
     "getInstance"
    )
  units <- factory$findUnits(unit)

  units
}

