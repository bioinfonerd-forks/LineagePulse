% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/srcLineagePulse_decompressParameters.R
\name{decompressDropoutRateByCell}
\alias{decompressDropoutRateByCell}
\title{Compute dropout rate parameter estimates from dropout rate model for a cell}
\usage{
decompressDropoutRateByCell(vecDropModel, vecMu = NULL,
  matPiConstPredictors = NULL, lsDropModelGlobal)
}
\arguments{
\item{vecDropModel}{(numerical vector number of model parameters)
{offset parameter, log(mu) paramter, parameters belonging to
constant predictors}
Parameters of dropout rate model for given cell.}

\item{vecMu}{(numerical vector number of genes)
Mean parameter estimates of all genes for given cell.}

\item{matPiConstPredictors}{(numerical matrix genes x number of 
constant model predictors) Other model predictors than offset
and the dynamically changing mean parameter. Examples are GC-
content and other gene-specific properties. This would be the 
global parameters as listed in the other decompression
function. Here those are not a list as there is only one object.}

\item{lsDropModelGlobal}{(list) 
Object containing meta-data of cell-wise dropout parameter models.}
}
\value{
vecPi (numerical vector number of cells)
Dispersion parameter estimates for given gene 
(one per cell for given gene).
}
\description{
Compute dropout rate parameter estimates 
from dropout rate model for a cell.
}
\seealso{
Called by \code{fitZINB}.
}
\author{
David Sebastian Fischer
}
