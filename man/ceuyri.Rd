\name{ceuyri}
\docType{data}
\alias{ceuyri}
\title{The CEU-YRI admixed simulation data}
\description{The list data has five compoents: \code{admixed}, \code{anc1}, \code{anc2},
  \code{true.local.ancestry}, \code{position}.
  The data matrixes were simulated data using the allele frequencies from
  HapMap Population CEU (Utah residents with Northern and Western
  European ancestry from the CEPH collection) and  YRI (Yoruba in
  Ibadan, Nigeria (West Africa)).
}
\usage{ceuyri}

\format{
  A list consisting of \code{admixed} (2300 rows, 30 columns),
  \code{anc1} (2300 rows, 60 columns), \code{anc2} (2300 rows, 60
  columns), \code{true.local.ancestry} (2300 rows, 60 columns), and
  \code{position} (a vector of length 2300).
  
  The elements of the matrixes (\code{admixed}, \code{anc1}, \code{and2}) are the genotypes
  being coded as the number of copies of the variant allele present, 0,
  1 or 2.  The elements of matrix true.local.ancestry are the true local ancestries being coded
  as alleles identification from ancestries 1 or 2. The physical
  positions (in base pairs unit) are in position.
}

\source{none}

\references{
  Yang, J. J., LI, J., Buu, A., and Williams, L. K. (2013) Efficient
  Inference of Local Ancestry. Bioinformatics. doi: 10.1093/bioinformatics/btt488
}

\examples{
  data(ceuyri)
  str(ceuyri)
}

\keyword{datasets}
