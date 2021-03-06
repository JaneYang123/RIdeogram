% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ideogram.R
\name{ideogram}
\alias{ideogram}
\title{ideogram}
\usage{
ideogram(karyotype, overlaid = NULL, label = NULL, synteny = NULL,
  colorset1 = c("#4575b4", "#ffffbf", "#d73027"),
  colorset2 = c("#b35806", "#f7f7f7", "#542788"), width = 170,
  Lx = 160, Ly = 35, output = "chromosome.svg")
}
\arguments{
\item{karyotype}{karyotype data}

\item{overlaid}{overlaid data}

\item{label}{track label data}

\item{synteny}{synteny data}

\item{colorset1}{overlaid heatmap-1 color}

\item{colorset2}{overlaid heatmap-2 color}

\item{width}{width of plot region}

\item{Lx}{position of legend (x)}

\item{Ly}{position of legend (y)}

\item{output}{output file, only svg is supported}
}
\value{
output file
}
\description{
ideogram with overlaid heatmap annotation and optional track label
}
\examples{
# Loading the package
require(RIdeogram)

# Loading the testing data
data(human_karyotype, package="RIdeogram")
data(gene_density, package="RIdeogram")
data(Random_RNAs_500, package="RIdeogram")

# Checking the data format
head(human_karyotype)
head(gene_density)
head(Random_RNAs_500)

# Running the function
ideogram(karyotype = human_karyotype)
convertSVG("chromosome.svg", device = "png")

# Then, you will find a SVG file and a PNG file in your Working Directory.

}
\author{
Zhaodong Hao, Dekang Lv, Ying Ge, Jisen Shi, Dolf Weijers, Guangchuang Yu, Jinhui Chen
}
