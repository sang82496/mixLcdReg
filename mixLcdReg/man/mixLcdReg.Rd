% Generated by roxygen2: do not edit by hand
% Please edit documentation in _main.Rmd.
\name{mixLcdReg}
\alias{mixLcdReg}
\title{Mixture of log-concave regression}
\usage{
mixLcdReg(
  X,
  Y,
  K,
  B = 0,
  min_count_ratio = 0,
  r_bar,
  lambda_alpha,
  lambda_theta,
  max_iter = 100,
  iter_eta = 1e-06
)
}
\arguments{
\item{X}{a T-by-p matrix of covariates, where \code{X[[t]]} being the p-vector of independent variable at time t}

\item{Y}{length T list with \code{Y[[t]]} being a n_t-by-d matrix}

\item{K}{number of clusters}

\item{min_count_ratio}{min count ratio}

\item{r_bar}{threshold for responsibility}

\item{lambda_alpha}{penalty parameter for alpha}

\item{lambda_theta}{penalty parameter for theta}

\item{max_iter}{number of maximum iterations of EM to perform}

\item{iter_eta}{threshold for the iteration. If the increment of loglikelihood is smaller than iter_eta,
we terminate the iterations.}

\item{number}{of binning}
}
\value{
X a T-by-p matrix of covariates, where \code{X[[t]]} being the p-vector of independent variable at time t

Y length T list with \code{Y[[t]]} being a n_t-by-d matrix

Y_count N_bin-vector indicating how many points belong to each bin

N the total number of observations of Y_i^(t) in Y

resp_init N_bin by K matrix. \code{resp_init[i, k]} being the initial estimate for P(Z_i = k|X, Y)

weight_init N_bin by K matrix. weight_init\link{i, k} represents initial weight of ith residual for kth group

idx_init N_bin by K logical matrix. idx_init\link{i, k} represents whether the corresponding initial weight is above r_bar

theta0_init length K list, with \code{theta0_init[[k]]} being the initial estimate for the intercept coefficient of the regression for kth group

theta_init length K list, with \code{theta_init[[k]]} being the p-by-1 vector.
Initial estimates for coefficients of the regression for kth group

alpha_init (p+1)-by-K matrix. The coefficients for the initial cluster probabilities.

resi_init length K list with \code{resi_init[[k]]} N_bin-by-d initial residual matrix

g_init length K list, with \code{g_init[[k]]} being the initial \code{mlelcd} for the kth group

resp N_bin by K matrix. \code{resp[i, k]} being the final estimate for P(Z_i = k|X, Y)

weight N_bin by K matrix. weight\link{i, k} represents initial weight of ith residual for kth group

idx N_bin by K logical matrix. idx\link{i, k} represents whether the corresponding final weight is above r_bar

theta0 length K list, with \code{theta0[[k]]} being the final estimate for the intercept coefficient of the regression for kth group

theta length K list, with \code{theta[[k]]} being the p-by-1 vector.
Final estimates for coefficients of the regression for kth group

alpha (p+1)-by-K matrix. The coefficients for the cluster probabilities.

resi length K list with \code{resi[[k]]} N_bin-by-d final residual matrix

g length K list, with \code{g[[k]]} being the final \code{mlelcd} for the kth group

Q a vector of the surrogate loglikelihoods of the parameters, stored at each iteration

Q_every a vector of the surrogate loglikelihoods of the parameters, stored at each step
}
\description{
Mixture of log-concave regression
}