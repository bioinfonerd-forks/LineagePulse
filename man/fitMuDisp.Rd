% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/srcLineagePulse_fitMeanDispersion.R
\name{fitMuDisp}
\alias{fitMuDisp}
\title{Coordinate mean and dispersion parameter co-estimation step}
\usage{
fitMuDisp(matCountsProc, vecNormConst, lsMuModel, lsDispModel, lsDropModel,
  matWeights)
}
\arguments{
\item{matCountsProc}{(matrix genes x cells)
Observed read counts, not observed are NA.}

\item{vecNormConst}{(numeric vector number of cells) 
Model scaling factors, one per cell.}

\item{lsMuModel}{(list)
Object containing description of gene-wise mean parameter models.}

\item{lsDispModel}{(list)
Object containing description of gene-wise dispersion parameter models.}

\item{lsDropModel}{(list)
Object containing description of cell-wise drop-out parameter models.}

\item{matWeights}{(numeric matrix cells x mixtures) [Default NULL]
Assignments of cells to mixtures (for strMuModel="MM").}
}
\value{
list
\itemize{
\item matMuModel (numeric matrix genes x mu model parameters)
Contains the mean model parameters according to the used model.
\item lsmatBatchModelMu (list) 
Fit of batch correction models for mean parameter.
\item matDispModel (numeric matrix genes x disp model parameters)
Contains the dispersion model parameters according to the used model.
\item lsmatBatchModelDisp (list) 
Fit of batch correction models for dispersion parameter.
\item vecConvergence (numeric vector number of genes) 
Convergence status of optim for each gene.
\item vecLL (numeric vector number of genes) Likelihood of model fit.
}
}
\description{
Auxillary function that calls the estimation functions for the
different mean and dispersion models according to their needs. Note that one
function has to be coded for each combination of mean and dispersion
models.
}
\seealso{
Called by \code{fitModel}. Calls fitting wrappers:
\code{fitImpulseZINB},
\code{fitContinuousZINB}.
}
\author{
David Sebastian Fischer
}
