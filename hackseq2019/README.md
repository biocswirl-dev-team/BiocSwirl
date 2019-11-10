# BiocSwirl: Terminal based Bioconductor Courses 

##### Keywords: 
Tutorials, Communication, scRNA-seq, Workflow Design, Command Line

### Package purpose:
There have been many resources available to interdisciplinary researchers for years now in the form of Rbookdown tutorials, in person workshops, and Youtube videos. However, each method of learning has its pros and cons - for blogpost and video type tutorials we have the inability to troubleshoot and raise our hands, for in-person workshops we have time limitations. 

Bioinformatics has grown in adoption in many traditional non-computer science fields that lack the time and energy to go truly in depth past copying and pasting code found online. Swirlstats and terminal-based Python courses such as browser-based Codeacademy, have shown to be efficient course structures to teach data science and statistics to complete beginners.  

***`BiocSwirl`, inspired by such courses, aims to make learning bioinformatics concepts hands on through the development of course material that takes you through the common bioinformatics workflows.*** 

### Package details:
During a 3-day hackathon, we developed `swirlify()`-style console/terminal based courses for the purposes of teaching bioinformatics workflow steps and good coding practices. The philosophy is to keep the GUI use and application switching as minimal as possible but the content itself very rich and informative. 
Bioconductor, Radian, bioSyntax (shoutout to hackseq 2016!), are examples of some packages we use to teach workflow steps, file types, and concepts in R.

We also develop **biovim**: a powerful bioinformatics editor, and **biocterm**: a terminal environment for our course. BiocTerm is a standalone terminal application that acts as the ideal interface for those conducting bioinformatics as it integrates our custom editor, biovim (a vim installation bundled with bio plugins), radian (an r console), and tmux (our customized terminal wrapper) in a contained instance. Our interface supports R, Bash, and vim.     

BiocSwirl is our R package and course installation client, used to deliver our interactive courses and can be run within console. **Please refer [here](biocswirl_package/courses/scrna_seq/docs/lessonplan_template) for the lesson plan. In this hackathon (hackseq19) we focus on scRNA-seq.** For future projects, the plan is to add other courses (for example, whole-genome sequencing) and make lessons for other languages (for instance, Python).

The interface (BiocTerm) and R package (BiocSwirl) can be used independently of each other but are best used together for people who are interested in making the most of their learning experience.

### Installation:
Please refer to the [installation instructions](biocswirl_dev/devenv_install) for `BiocSwirl` setup details.

Biocterm: 

Biovim: 

BiocSwirl: 



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

### Team members:

| Name | GitHub ID | Work done |
| ---- | --------- | --------- |
| Lisa N. Cao | lisancao | User Environment & Interface Development |
| Jackie Lu | jql6 | User Environment & Interface Development (tmux) |
| Jeremy Fan | zhemingfan | User Environment & Interface Development |
| Mariam Arab | mariamarab | User Environment & Installation |
| Kate Tyshchenko | ktyshchenko | Documentation, Course Material |
| Paaksum Wong | paaksum | Course Material (main) |
| Sourav Singh | souravsingh | Course Material |   

[Details about hackseq19 project](biocswirl_dev/hackseq_plan)


### Contributing

We are always looking for pull requests and active contributers, if you are interested in designing a course for us or have a feature in mind please submit an issue before doing a pull request. We are currently looking for help developing on Windows systems, bioinformatics workflows and concepts, and support for even more languages in BiocTerm. 

