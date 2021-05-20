# AU PhD Thesis LaTeX template 

There is no official AU LaTeX template so we have adapted our own based on a template passed between PhD Students.
We suggest that you use this template for your PhD thesis.

The template expects you to use `pdfdlatex` for compilation of latex code and `bibtex` for bibliography compilation. 

# Build 

## Setup 

## Command line with Make 

In your terminal change directory to the root folder of your thesis repository and type `make`.

### Clean compile timed generated LaTeX files

If you want to clean files such as `.aux` and `.toc` you can run `make clear` which removes all files generate at compile time by `pdflatex` and `bibtex`.
**NOTE** this increase compilation time when you do your next compile. 


## TexStudio or TexMaker with Make 

Setting up the compilation process in TexStudio and TexMaker using latex commands is none trivial and we recommend you simply use the Makefile and adopt it based on your needs. 
It will still be possible to build using TexStudio and TexMaker by providing a user defined build option where you simply need to provide `make` as the command used for build. 
This will run `make` in the root directory. 

# Special Packages

In this section we explain the usage of some special LaTeX packages used in the template that may be novel to you. 

## Chapterbib


