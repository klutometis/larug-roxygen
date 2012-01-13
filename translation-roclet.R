library(lisp)
library(roxygen2)
library(translate)

register.preref.parsers(parse.value, 'translate')

translate_roclet <- function()
  new_roclet(list(), "translate")

roc_process.translate <- function(roclet, partita, path) {
  from <- to <- NULL
  for (partitum in partita) {
    if (!is.null(partitum$translate)) {
      from.to <- unlist(strsplit(partitum$translate, ' '))
      from <- car(from.to)
      to <- cadr(from.to)
      break
    }
  }

  partita <- Map(function(partitum) {
    if (!is.null(partitum$introduction) &&
        !is.null(from)) {
      translation <- translate(partitum$introduction, from, to)
      partitum$introduction <- translation[[1]]
    }
    partitum
  }, partita)

  assign('parsed', partita, envir=parent.frame())
}

roc_output.translate <- function(...) NULL

roxygenize('random',
           roclets=c("collate", "namespace", "translate", "rd"))
