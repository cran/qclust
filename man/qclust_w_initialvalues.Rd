\name{qclust_w_initialvalues}
\alias{qclust_w_initialvalues}
\title{
Estimate Gaussian Mixture Models with Initial Values
}
\description{
Robust estimation of Gaussian mixture models with given initial values given as arguement.
}
\usage{
qclust_w_initialvalues(d, means_init, vars_init, pis_init, q, tol = 1e-05)
}
\arguments{
  \item{d}{
A data matrix, n by p. n is sample size, p is the dimension.
}
  \item{means_init}{
Initial values for means.
}
  \item{vars_init}{
Initial values for variances.
}
  \item{pis_init}{
Initial values for proportions.
}
  \item{q}{
A tuning parameter, 0<q<=1.
}
  \item{tol}{
Tolerance level for the EM algorithm to converge.
}
}
\value{
This function returns a list which contains:
\item{means}{Estimated means}
\item{vars}{Estimated variances}
\item{pis}{Estimated proportions}
}
\author{
Yichen Qin, Carey E. Priebe
Maintainer: Yichen Qin <qinyn@ucmail.uc.edu>
}
