
<p align=center><img src="https://raw.githubusercontent.com/biocswirl-dev-team/Templates/master/graphics_templates/BiocSwirl_bluegree_Hex.png" height="300" width="300"></p1>

# BiocSwirl

BiocSwirl is a series of in-depth swirlify generated courses used to teach bioinformatics workflows in R/Bioconductor using an interactive and easy to digest format. This project was the People's Choice Award for the Vancouver Bioinformatics Hackathon Hackseq2019. 


### Background 

There have been many resources available to interdisciplinary researchers for years now in the form of Rbookdown tutorials, in person workshops, and Youtube videos. However, each method of learning has its pros and cons - for blogpost and video type tutorials we have the inability to troubleshoot and raise our hands, for in-person workshops we have time limitations. 

Bioinformatics has grown in adoption in many traditional non-computer science fields that lack the time and energy to go truly in depth past copying and pasting code found online. Swirlstats and terminal-based Python courses such as browser-based Codeacademy, have shown to be efficient course structures to teach data science and statistics to complete beginners.  

During a 3-day hackathon, we developed `swirlify()`-style console/terminal based courses for the purposes of teaching bioinformatics workflow steps and good coding practices. The philosophy is to keep the GUI use and application switching as minimal as possible but the content itself very rich and informative. 

See also ![BiocTerm](https://github.com/biocswirl-dev-team/BiocTerm) for out interface companion to the course materials. The interface (BiocTerm) and R package (BiocSwirl) can be used independently of each other but are best used together for people who are interested in making the most of their learning experience.

<p align=center><img src="https://i.imgur.com/R6wubYn.png"></p1>

To view a demo, see [here](https://www.youtube.com/embed/ZCKbQZ9frVo)

### Features 
BiocSwirl includes 
- Interactive course material that goes from beginner's steps (package installation and environment setup) to low level, to high level analyses and visualizations

- Is easily configurable and breaks down complex bioinformatics workflows into simple, easy to chew steps. Includes standardized datasets to work with and checks your work

- Highly emphases good coding practices, open science, reproducibility, and YAML file format and templates make it easy to update a workflow to match current best practices and create/communicate your own workflows for within lab

- Example inputs and outputs 
- Course-specific package installations and standardized datasets 
- Ability to start at any point of the course material 
- Ability to save progress
- Compatability with BiocTerm 
- Lightweight install, you can install what you want and included datasets are not large. Processing of data is not resource heavy and so it will work on low spec systems  

Pending:
- Templates to communicate own workflow in notebook style 
- Multilanguage workflow course materials for use with BiocTerm 
- More courses 
- Output checker/"Smart Marker"

### Examples of use (GSE71585 dataset):
- [Low Level Analyses](biocswirl_package/courses/scrna_seq/lessons/low_level/low_level.yaml)   
a. Importing, raw data preprocessing   
b. Alignment  
c. Quality Control   
d. Normalization (with and without spike-ins)  
e. Dimensionality Reduction  
f. Correcting for batch effects  
- [High Level Analyses](biocswirl_package/courses/scrna_seq/lessons/high_level/high_level.yaml)  
a. Clustering methods, exploratory analyses    
b. Cell cycle phase classification from gene expression data  
c. HVG and marker gene identification  
- Visualizations for high-throughput data

### Further reference:
[Vignette](vignettes/package_intro.Rmd) - in progress

### Contributing

We are always looking for pull requests and active contributers, if you are interested in designing a course for us or have a feature in mind please submit an issue before doing a pull request. We are currently looking for help developing on Windows systems, bioinformatics workflows and concepts, and support for even more languages in BiocTerm. 

### Hackseq 2019 Team members:

| Name | GitHub ID | Work done |
| ---- | --------- | --------- |
| Lisa N. Cao | lisancao | User Environment & Interface Development |
| Jackie Lu | jql6 | User Environment & Interface Development (tmux) |
| Jeremy Fan | zhemingfan | User Environment & Interface Development |
| Mariam Arab | mariamarab | User Environment & Installation |
| Kate Tyshchenko | ktyshchenko | Documentation, Course Material |
| Paaksum Wong | paaksum | Course Material (main) |
| Sourav Singh | souravsingh | Course Material |   


### HackseqRNA 2020 Team members:

| Name | GitHub ID | Work done |
| ---- | --------- | --------- |
| Lisa N. Cao | lisancao | User Environment & Interface Development |
| Julia Philipp | JuliaPhilipp | Course Material (RNA-seq) |
| Nicolai von Kügelgen | Nicolai-vKuegelgen | Course Material (RNA-seq) |
| Elizabeth Hutchins | e-hutchins | Course Material (scRNA-seq & snRNA-seq) | 
| Benson Lee | bensonlee5 | User Environment & Interface Development |
| Matt Moss | mmoss609 | Course Material (ChIP-seq) |

[Details about hackseq19 project](github.com/lisancao/biocswirl/biocswirl_dev/hackseq_plan)
