\name{eila}
\alias{eila}
\title{A function to infer local ancestry}
\description{A function to infer local ancestry, using fused quantile
  regression and \eqn{k}{k}-means classifier.}

\usage{
eila(admixed, position, anc1, anc2, anc3 = NULL, lambda = 15, rng.seed = 172719943)
}

\arguments{
  \item{admixed}{A SNP matrix of admixted individuals with SNPs in the rows, samples in the
    columns. The elements of the matrix are the genotypes being coded as
    the number of copies of the variant allele present, 0, 1 or 2.}
  \item{position}{A vector for the physical postions of the SNPs}
  \item{anc1}{A SNP matrix of ancestry 1 samples with SNPs in the
    rows, samples in the columns. The elements of the matrix are the
    genotypes being coded as the number of copies of the variant
    allele present, 0, 1 or 2.}
  \item{anc2}{A SNP matrix of ancestry 2 samples with SNPs in the
    rows, samples in the columns. The elements of the matrix are the
    genotypes being coded as the number of copies of the variant
    allele present, 0, 1 or 2.}
  \item{anc3}{An optional SNP matrix of ancestry 3 samples with SNPs in the
    rows, samples in the columns (default NULL). The elements of the matrix are the
    genotypes being coded as the number of copies of the variant allele
    present, 0, 1 or 2. }
  \item{lambda}{A number controlling the smoothness of the fused
    quantile regression (default 15).}
  \item{rng.seed}{The seed used for the random number generator (default
    172719943) for reproducibility of simulated equally admixed individuals.}
}

\details{\code{eila} is an function for inferring local ancestry. 

  The admixed samples are assumed as descended from ancestry 1 
  ancestry 2, or ancestry 3. The data matrixes of admixed samples and
  ancestral samples are coded as thee number of copies of the variant
  allele present (0, 1, or 2). The physical positions of SNPs are in
  base pairs unit.

  The method for efficient inference of local ancestry (EILA) in admixed
  individuals is based on three steps. The first step assigns a
  numerical score (with a range of 0 to 1) to genotypes in admixed
  individuals in order to better quantify the closeness of the SNPs to a
  certain ancestral population. The second step uses fused quantile
  regression to identify breakpoints of the ancestral haplotypes. In the
  third step, the \eqn{k}-means classifier is used to infer ancestry at
  each locus. 

  The major strength of EILA is that it relaxes the assumption of
  linkage equilibrium and uses all genotyped SNPs rather than only
  unlinked loci to increase the power of inference. Another important
  strength of this method is its higher  accuracy and lower variation.
}

\value{
  \item{local.ancestry}{The inferred local ancestry matrix with the same
    dimensions of \code{admixed}. The elements of the matrix are local
    ancestry being coded as alleles identification from ancestries 1, 2, or
    3. For example, element 12 means one allele is from ancestry 1
    and the other allele is from ancestry 2.}
  \item{rng.seed}{The seed used to call \code{set.seed} for reproducibility.}
  \item{rng.state}{Prior to the call to \code{set.seed},
    \code{rng.state} is the value of \code{.Random.seed} should
    \code{.Random.seed} exist. Otherwise, NULL is returned.}
}

\references{
  Yang, J. J., LI, J., Buu, A., and Williams, L. K. (2013) Efficient
  Inference of Local Ancestry. Bioinformatics. doi: 10.1093/bioinformatics/btt488
}

\author{James J. Yang, Jia Li, and Anne Buu}

\seealso{set.seed}

\examples{
## Two ancestries
data(ceuyri)
res.eila <- eila(admixed  = ceuyri$admixed,
                 position = ceuyri$position,
                 anc1     = ceuyri$anc1,
                 anc2     = ceuyri$anc2)
cat("Overall accuracy:", mean((res.eila$local.ancestry ==
                  ceuyri$true.local.ancestry), na.rm=TRUE),"\n")

## Three ancestries
\dontrun{
data(ceuchdyri)
res.eila <- eila(admixed  = ceuchdyri$admixed,
                 position = ceuchdyri$position,
                 anc1     = ceuchdyri$anc1,
                 anc2     = ceuchdyri$anc2,
                 anc3     = ceuchdyri$anc3)
cat("Overall accuracy:", mean(res.eila$local.ancestry ==
           ceuchdyri$true.local.ancestry),"\n")
}
}

\keyword{local ancestry}
\keyword{quantile regression}
\keyword{k-means}
