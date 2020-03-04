# R4CommBook
Belajar R untuk Jurnalistik dari buku Practical R for Mass Communication and Journalism

## Tips & Trick RStudio

### Setting Proxy di Windows

1. Create/Edit File .Renviron
```
	options(internet.info = 0)

	http_proxy=http://10.10.0.6:3128
	https_proxy=http://10.10.0.6:3128
```

2. Setting di Console R / RStudio
```
	Sys.setenv(http_proxy="http://10.10.0.6:3128")
	Sys.setenv(https_proxy="http://10.10.0.6:3128")
```

### Setting Proxy di Git
```bash
	git config --global http.proxy http://10.10.0.6:3128
	git config --global core.gitproxy "git-proxy"

	# unset
	git config --global --unset http.proxy
	git config --global --unset core.gitproxy
```
Referensi : 
1. [r-studio-github-and-proxy](https://indranilgayen.wordpress.com/2017/01/16/r-studio-github-and-proxy/)
2. https://gist.github.com/SmiddyPence/d404b3354f45df293f9c

### Cheatsheet RStudio

### Package Manager Packrat
```bash
  packrat::init(options = list(vcs.ignore.src = TRUE))
  Initializing packrat project in directory:
  - "E:/RProjects/R4CommBook"
  
  Adding these packages to packrat:
              _      
      packrat   0.5.0
  
  Fetching sources for packrat (0.5.0) ... OK (CRAN current)
  Snapshot written to "E:/RProjects/R4CommBook/packrat/packrat.lock"
  Installing packrat (0.5.0) ... 
  	OK (downloaded binary)
  Initialization complete!
  
  Restarting R session...
  
  
  packrat::status()
  packrat::snapshot()
  packrat::restore()
  
  packrat::bundle()
  packrat::unbundle()
  
  # packrat::set_opts(external.packages = c("devtools", "knitr"))
  # packrat::set_opts(local.repos = c("~/projects/R"))
  # packrat::opts$external.packages()
  # packrat::opts$external.packages(c("devtools", "knitr"))

```

### Recommended Packages
```r
  install.packages("tidyverse")
  install.packages("rio")
  install.packages("pacman")
  
```

```r
  pacman::p_load("htmltab", "readxl", "googlesheets", "janitor", "readr", "tibble")
  pacman::p_load("jabr")
```


