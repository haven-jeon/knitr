\name{rocco}
\alias{rocco}
\title{Knit R Markdown using the classic Docco style}
\usage{
rocco(input, ...)
}
\arguments{
  \item{input}{path of the input R Markdown file}

  \item{...}{arguments to be passed to
  \code{\link{knit2html}}}
}
\value{
  An HTML file is written, and its name is returned.
}
\description{
  The classic Docco style is a two-column layout, with text
  in the left and code in the right column.
}
\details{
  The output HTML page supports resizing and hiding/showing
  the two columns. Move the cursor to the center of the
  page, and it will change to a bidirectional resize
  cursor; drag the cursor to resize the two columns. Press
  the key \code{t} to hide the code column (show the text
  column only), and press again to hide the text column
  (show code).
}
\examples{
rocco_view = function(input) {
    o = rocco(input, header = "", quiet = TRUE)
    if (interactive()) 
        browseURL(o)
}
# knit these two vignettes using the docco style
rocco_view(system.file("doc", "docco-classic.Rmkd", package = "knitr"))
rocco_view(system.file("doc", "knit_expand.Rmd", package = "knitr"))
}
\author{
  Weicheng Zhu and Yihui Xie
}
\references{
  The Docco package by Jeremy Ashkenas:
  \url{https://github.com/jashkenas/docco}
}
