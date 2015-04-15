\name{Qclust}
\alias{Qclust}
\title{
Robust Estimation of Gaussian Mixture Models
}
\description{
Robust estimation of Gaussian mixture models and robust model-based clustering.
}
\usage{
Qclust(d, K = NULL, modelNames = NULL, q)
}
\arguments{
  \item{d}{
A data matrix, n by p. n is sample size, p is the dimension.
}
  \item{K}{
The complexity of the mixture model, an integer.
}
  \item{modelNames}{
A string indicate the type of "models".  The notation is consistent with the package mclust.
}
  \item{q}{
A tuning parameter, 0<q<=1. q<1 provides robust estimation.
}
}
\value{
The function returns a list which contains:
\item{parameters}{Estimated parameters of Gaussian mixture models}
}
\examples{
n = 200
set.seed(12345)
true_para=list()
true_para$pro=rep(1/3,3)
true_para$mean=matrix(c(-6,1.5,0,0,6,1.5),2,3)
true_para$variance$sigma=array(c(5,4,4,5,5,-4,-4,5,1.56,0,0,1.56),dim=c(2,2,3))
G=ncol(true_para$mean)
z = sample(1:G,n,true_para$pro,replace=TRUE)
z = sort(z)
X=matrix(NA,n,nrow(true_para$mean))
for (i in 1:G)
{
  X[z==i,]=rmvnorm(sum(z==i),true_para$mean[,i],true_para$variance$sigma[,,i])
}
plot(X,pch=20)
qfit=Qclust(X,K=3,modelNames="VVV",q=0.9)
plot(qfit,what="classification")
}
\references{
Ferrari, D. and Yang, Y., (2010). Maximum Lq-likelihood estimation, Annals of Statistics.\cr
Fraley, C., Raftery, A. E., Murphy, T. B., and Scrucca, L., (2012). mclust Version 4 for R: Normal Mixture Modeling for Model-Based Clustering, Classification, and Density Estimation. Technical Report No. 597, Department of Statistics, University of Washington.\cr
Fraley, C., and Raftery, A.E., (2002). Model-Based Clustering, Discriminant Analysis, and Density Estimation. Journal of the American Statistical Association, 97, 611-631.\cr
McLachlan, G.J., and Peel, D., (2000). Finite Mixture Models, Wiley, ISBN 0-471-00626-2.\cr
}
\author{
Yichen Qin, Carey E. Priebe\cr
Maintainer: Yichen Qin <qinyn@ucmail.uc.edu>\cr
URL: \url{http://homepages.uc.edu/~qinyn/qclust/}
}
