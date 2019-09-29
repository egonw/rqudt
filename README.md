# rQUDT

R package for unit conversion using the QUDT ontology. It uses
[jQUDT]() 1.4.0-SNAPSHOT.

## Installation

Install with:

```R
install.packages("rJava") # if not present already
install.packages("devtools") # if not present already
library(devtools)
install_github("bridgedb/BridgeDbR")
```

## Example

```R
library(rQUDT)
q1 = rQUDT::newQuantity("203.7", "K")
q2 = rQUDT::convertTo(q1, "degC")
```

Or using the Open PHACTS extension

```R
library(rQUDT)
q1 = rQUDT::newQuantity("4.3", "nM")
q2 = rQUDT::convertTo(q1, "M")
```
