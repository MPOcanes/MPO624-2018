## Browser-only GitHub: 

#### Setup 
* consider installing the desktop client https ://desktop.github.com/
* make an account on github.com (the desktop client will prompt you on launch, or you can go directly). 
    * Browse the Guides at https ://guides.github.com/
        - Perhaps make yourself a simple web page at GitHub Pages
    * if you like, dig into deeper “training" https ://services.github.com/on-demand/

#### test of forking and pull requests (collaboration!) 

* From the master copy at https://github.com/MPO624/2018, Fork, edit PARTICIPANTLIST.md, and make a PR. 

-------------------------
## The overall course folder 
#### on your machine, backed up as a "fork" of the _master_ class repo

Let's get your fork of the course (github.com/myname/2018) onto your own computer — but in a way that you can easily sync with your github version (which functions as a backup). To do that, I use the Github desktop app (client). (there is command-line way, but the client helps you see some relationships, at least at first). 

To do this, open the GitHub desktop app (client), and find where it says “Clone an existing project from GitHub to your computer”. You will have to select a directory name on your own computer. Again, above about naming it. 

This folder will be special: it will have some hidden files in there (starting with .git) to keep track of all those versions and branches and forks and stuff (yes, the words are a bit of a blur at first), so you can keep verison control for yourself, and keep it synced with your fork of the course that you and everyone can see on GitHub.com. 

  * So I will use (home)/Jupyter/GitHubForks/MPO624-2018. 

----------------------
## For unidata-python-workshop setup (a professional launch into jupyter-python)
* Basically, follow the istructions at https://unidata.github.io/unidata-python-workshop/installation.html

   * install miniconda3 (the basic system, easily expanded) or anaconda (the big package with more than we need) from anaconda.com. The 3 refers to Python3. Python2 is deprecated soon.

   * Clone or Download (big green button) https://github.com/Unidata/unidata-python-workshop. Put it in a meaningful directory — the thoughfulness with which you organize YOUR computer’s file hierarchy will pay off in the long future. 

      * One naming suggestion would be (home)/MPO624/unidata-python-workshop. But maybe “624” won’t mean much to you next year or next decade, perhaps you prefer (home)/MPO_data_class/… Or maybe you think you will work with Jupyter for a long time, beyond just this course, and we will download notebooks from lots of places, some static (not forked). It’s good to have all your Jupyter notebooks in one file tree, as you will see.  So I put Jupyter/ as a top level directory. So I am using (myname)/Jupyter/unidata-python-workshop

   * Do this before class: it is fairly slow  step that downloads a lot of packages.
      * cd (your_directory)/unidata-python-workshop
      * conda env create -f environment.yml
      
   * If all goes well, dare to type
      * jupyter notebook

