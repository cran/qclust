\name{dmm_noweights_fn}
\alias{dmm_noweights_fn}
\title{
Component Densities of Gaussian Mixture Models
}
\description{
Component densities of Gaussian mixture models for each data points.
}
\usage{
dmm_noweights_fn(x, means, vars, pis)
}
\arguments{
  \item{x}{
A matrix of n by p. n is the sample size. p is the dimension.
}
  \item{means}{
Means of the Gaussian mixture model.
}
  \item{vars}{
Variances of the Gaussian mixture model.
}
  \item{pis}{
Proportions of the Gaussian mixture model.
}
}
\value{
A matrix of n by m. n is the sample size. m is the complexity. Each column represents the data points' densities for one component.
}
\author{
Yichen Qin, Carey E. Priebe
Maintainer: Yichen Qin <qinyn@ucmail.uc.edu>
}
