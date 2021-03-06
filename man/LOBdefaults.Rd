\name{LOBdefaults}
\alias{LOBdefaults}
\alias{default.LOBdbase}
\alias{default.adductHierarchies}
\alias{default.acylRanges}
\alias{default.oxyRanges}
\alias{default.componentCompTable}
\alias{default.rt.windows}
\docType{data}
\title{
LOBSTAHS default databases and database generation parameters 
}
\description{
Default databases (in \code{default.LOBdbase}), and the .RData files containing 
default ranges of structural properties used by \code{\link{generateLOBdbase}} 
to generate these databases.

Note that the format of these files has changed in LOBSTAHS version 1.1.2 and
greater.

Also described is \code{default.rt.windows}, which contains the default 
retention time windows (by lipid class) used by \code{\link{doLOBscreen}} when 
\code{rt.restrict = TRUE}.
}
\usage{data(default.LOBdbase)
data(default.adductHierarchies)
data(default.acylRanges)
data(default.oxyRanges)
data(default.componentCompTable)
data(default.rt.windows)}
\format{
  \describe{
    \item{\code{default.LOBdbase}}{A list of two \code{"\link{LOBdbase}"} 
    objects, which are the default LOBSTAHS databases for positive and negative 
    ion mode species, respectively. These were generated using 
    \code{\link{generateLOBdbase}} with the default values defined in 
    \code{default.adductHierarchies}, \code{default.acylRanges}, 
    \code{default.oxyRanges}, and \code{default.componentCompTable}.}
    \item{\code{default.adductHierarchies}}{A data frame containing 
    empirically-determined adduct ion hierarchy data, by lipid class.}
    \item{\code{default.acylRanges}}{A data frame containing ranges of numbers 
    of acyl carbon atoms for which \emph{in silico} data are generated for each 
    lipid class by \code{\link{generateLOBdbase}}.}
    \item{\code{default.oxyRanges}}{A data frame containing ranges of additional
    oxygen atoms to be considered on species of each lipid class when databases 
    are generated with \code{\link{generateLOBdbase}}.}
    \item{\code{default.componentCompTable}}{A data frame that defines the 
    elemental compositions of the various adducts, parent lipid "backbones," and
    pigments that are used by \code{\link{generateLOBdbase}}.}
    \item{\code{default.rt.windows}}{A data frame containing the default 
    retention time data for various lipids and parent lipid classes that are 
    used by \code{\link{doLOBscreen}} when \code{rt.restrict = TRUE}. These 
    retention time windows are specific to the HPLC-MS method currently used in 
    the Van Mooy Lab at Woods Hole Oceanographic Institution, where LOBSTAHS was
    developed. As described in \code{\link{doLOBscreen}}, users outside the Van 
    Mooy Lab should supply their own retention time data.}
  }
  }
\details{
Empirical determination of the retention time window data in 
\code{default.rt.windows} and adduct ion hierarchies in 
\code{default.adductHierarchies} are described in the references below.

The default ranges for the structural properties given in the other files were 
chosen to yield databases that encompass a broad variety of moieites across 
lipid types. Microsoft Excel spreadsheet templates are included with the package
in Resources/library/LOBSTAHS/doc for users wishing to modify any of the default
data inputs. Alternatively, the spreadsheet files may be downloaded 
\href{https://github.com/vanmooylipidomics/LOBSTAHS/tree/master/inst/doc/xlsx}{from a directory embedded within the package}.
These templates can be used to generate .csv files in formats appropriate for 
\code{\link{generateLOBdbase}} and \code{\link{doLOBscreen}}.
}
\source{\url{http://github.com/vanmooylipidomics/LOBSTAHS/}
}
\value{
  Various list and data.frame objects (as indicated above).
}
\references{
The LOBSTAHS package is presented in:

Collins, J.R., B.R. Edwards, H.F. Fredricks, and B.A.S. Van Mooy. 2016.
LOBSTAHS: An adduct-based lipidomics strategy for discovery and identification
of oxidative stress biomarkers. \emph{Analytical Chemistry} 88:7154-7162,
doi:\href{http://dx.doi.org/10.1021/acs.analchem.6b01260}{10.1021/acs.analchem.6b01260}.

Data for lipid classes BLL, PDPT, vGSL, sGSL, hGSL, hapGSL, and hapCER are as
described in:

Hunter J. E., M. J. Frada, H. F. Fredricks, A. Vardi, and B. A. S.
Van Mooy. 2015. Targeted and untargeted lipidomics of \emph{Emiliania huxleyi}
viral infection and life cycle phases highlights molecular biomarkers of
infection, susceptibility, and ploidy. \emph{Frontiers in Marine Science} 2:81,
doi:\href{http://dx.doi.org/10.3389/fmars.2015.00081}{10.3389/fmars.2015.00081}

Fulton, J. M., H. F. Fredricks, K. D. Bidle, A. Vardi, B. J. Kendrick, G. R.
DiTullio, and B. A. S. Van Mooy. 2014. Novel molecular determinants of viral
susceptibility and resistance in the lipidome of \emph{Emiliania huxleyi},
\emph{Environmental Microbiology} 16(4):1137-1149,
doi:\href{http://dx.doi.org/10.1111/1462-2920.12358}{10.1111/1462-2920.12358}.
}
\seealso{
  \code{\link{doLOBscreen}},
  \code{\link{generateLOBdbase}},
  \code{\linkS4class{LOBdbase}}
  \code{\link{LOBdbase}}
}
\keyword{datasets}
