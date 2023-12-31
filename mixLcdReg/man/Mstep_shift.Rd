% Generated by roxygen2: do not edit by hand
% Please edit documentation in _main.Rmd.
\name{Mstep_shift}
\alias{Mstep_shift}
\title{Mstep_shift (d = 1)}
\usage{
Mstep_shift(X_bin, Y_bin, theta, weight, idx, K)
}
\arguments{
\item{X_bin}{N_bin-by-p matrix, which is expanded version of X so that its dimension agrees with Y_bin's}

\item{Y_bin}{N_bin-by-d matrix, indicating the center of the bin}

\item{theta}{length K list, with \code{theta[[k]]} being the p-by-1 vector. Initial estimate for coefficients
of the regression for kth group}

\item{weight}{N_bin by K matrix. weight\link{i, k} represents weight of ith residual for kth group}

\item{idx}{N_bin by K logical matrix. idx\link{i, k} represents whether the corresponding weight is above r_bar}

\item{K}{number of clusters}
}
\value{
theta0 length K list, with \code{theta0[[k]]} being the estimate for the intercept coefficient
of the regression for kth group
}
\description{
Mstep_shift (d = 1)
}