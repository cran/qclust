\name{dmm_fn}
\alias{dmm_fn}
\title{
Component Densities of Gaussian Mixture Models with Associate Proportions
}
\description{
Component densities of Gaussian mixture models multiplied by its associated proportion for each data points.
}
\usage{
dmm_fn(x, means, vars, pis)
}
%- maybe also 'usage' for other objects documented here.
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
A matrix of n by m. n is the sample size. m is the complexity. Each column represents the data points' densities (multiplied by its associated proportion) for one component.
}
\author{
Yichen Qin, Carey E. Priebe
Maintainer: Yichen Qin <qinyn@ucmail.uc.edu>
}
