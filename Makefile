# Makefile for compiling LaTeX files into PDF

# Define the main document name
DOC = 矢量张量表述方式分析

# Default target executed
all: $(DOC).pdf

# Rule for converting LaTeX to PDF
$(DOC).pdf: $(DOC).tex
	pdflatex $(DOC).tex
	pdflatex $(DOC).tex # Run twice for updating references

# Clean up auxiliary files
clean:
	rm -f $(DOC).aux $(DOC).log $(DOC).out $(DOC).toc $(DOC).bbl $(DOC).blg

# Clean up all files except the source and Makefile
distclean: clean
	rm -f $(DOC).pdf