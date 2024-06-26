% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/StreamSurvivalMA.R
\name{StreamsurMA}
\alias{StreamsurMA}
\title{\if{html}{\out{<div class="sourceCode">}}\preformatted{        The survival prediction of renewable model averaging and its extension
}\if{html}{\out{</div>}}}
\usage{
StreamsurMA(t, par_ori, data_train, data_test, p, e, n_block)
}
\arguments{
\item{t}{Time ponit}

\item{par_ori}{The intitial parameter value}

\item{data_train}{The training dataset}

\item{data_test}{The test dataset}

\item{p}{The dimension of covariates used to construct the submodels}

\item{e}{The dimension of important covarites contained in each submodel}

\item{n_block}{The number of individuals at every stream data batch}
}
\value{
\if{html}{\out{<div class="sourceCode">}}\preformatted{       The predictive survival probability, online updating parameters of submodels, online updating model averaging weights and computation time
}\if{html}{\out{</div>}}
}
\description{
\if{html}{\out{<div class="sourceCode">}}\preformatted{  The function provides the survival prediction results of
 the cumulative estimating equation model averaging method (CEE),
 and the cumulative updated estimating equation model averaging method (CUEE),
 the renewable model averaging method and its extension for stream survival data.
 The function achieves the survival prediction of individuals
 and the online-updating weights under stream datasets and calculates the running time.
 The parameter estimators of every submodel can be obtained in it.
}\if{html}{\out{</div>}}
}
\examples{
  library(survival); data_train <- packagedata("data_Train.csv")[,-1];
    data_test <- packagedata("data_Test.csv")[,-1];
    t=median(data_test$time); p=6; e=1; par_ori<-c(rep(1/(p-1),p-1));
    n_block=200; res<-StreamsurMA(t,par_ori,data_train,data_test,p,e,n_block)
}
