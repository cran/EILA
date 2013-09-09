\name{ceuchdyri}
\docType{data}
\alias{ceuchdyri}
\title{The CEU-CHD-YRI admixed simulation data}
\description{The list data has five compoents: \code{admixed}, \code{anc1}, \code{anc2},
  \code{anc3}, \code{true.local.ancestry}, \code{position}.
  The data matrixes were simulated data using the allele frequencies from
  HapMap Population CEU (Utah residents with Northern and Western
  European ancestry from the CEPH collection), CHD (Chinese in
  Metropolitan Denver, Colorado), and  YRI (Yoruba in
  Ibadan, Nigeria (West Africa)).
}
\usage{ceuchdyri}

\format{
  A list consisting of \code{admixed} (10000 rows, 30 columns),
  \code{anc1} (10000 rows, 60 columns), \code{anc2} (10000 rows, 60
  columns), \code{anc3} (10000 rows and 60 columns),
  \code{true.local.ancestry} (10000 rows, 60 columns), and 
  \code{position} (a vector of length 10000).
  
  The elements of the matrixes (\code{admixed}, \code{anc1},
  \code{anc2}, \code{anc3}) are the genotypes being coded as the number of copies of
  the variant allele present, 0, 1 or 2.  The elements of matrix
  true.local.ancestry are the true local ancestries being coded
  as alleles identification from ancestries 1, 2, or 3. The physical
  positions (in base pairs unit) are in position.
}

\source{none}

\references{
  Yang, J. J., LI, J., Buu, A., and Williams, L. K. (2013) Efficient
  Inference of Local Ancestry. Bioinformatics. doi: 10.1093/bioinformatics/btt488
}

\examples{
  data(ceuchdyri)
  str(ceuchdyri)
}

\keyword{datasets}
