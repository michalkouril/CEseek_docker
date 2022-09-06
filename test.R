
library(Biostrings)
library(GenomicRanges)

source("CEseek_scanner.R")

filepath1 <- system.file("extdata", "someORF.fa", package="Biostrings")

fasta.seqlengths(filepath1, seqtype="DNA")

x1 <- readDNAStringSet(filepath1)


tf <-readRDS("SimpleMotifs.CEseek_format.RDS")

CEscan.out <- CEseek_scanner (input.seqs=x1, tf.pwms=tf , length.gap=c(0,11), half.gap=30, match.thres="80%")
