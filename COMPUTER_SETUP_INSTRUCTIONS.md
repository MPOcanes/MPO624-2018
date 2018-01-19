## 1. Make an account, and try browser exercises on GitHub: 

#### Setup 
* Install the desktop client https://desktop.github.com/
   * While you're at it, install the text editor atom https://atom.io/
* Make an account on github.com (the desktop client will prompt you on launch, or you can go directly). 
    * Browse the Guides at https://guides.github.com/
        - Perhaps make yourself a simple web page at GitHub Pages
    * This is fun like a game: https://learngitbranching.js.org/ 
        - Remember, git is a **minimum** set of rules needed for peers to collaborate on a thing. It's a fundamental aspect of existence! Well worth your attention. 
    * if you like, dig into deeper “training" https://services.github.com/on-demand/

#### test forking and pull requests (our first collaboration!) 

* Go to the master copy at https://github.com/MPO624/2018
   * Fork it, edit PARTICIPANTLIST.md, and make a Pull Request (it comes to me). 

-------------------------
## 2. Now, fetch your Fork of the class repo and put it your own machine

Let's get your fork of the course (github.com/myname/2018) onto your own computer — but in a way that you can easily sync with your github version (which functions as a backup), and also merge in any changes I make to the master MPO6424/2018 repo. To do that, you can use the Github desktop app (aka client, aka GUI). There is command-line way to do everything, but the GUI helps you see some relationships, at least at first. 

To do this, open the GitHub desktop app, and find where it says “Clone an existing project from GitHub to your computer”. You will have to select a directory name on your own computer. 

   *This folder will be special*: it will have some hidden files in there (starting with .git) to keep track of all those branches and forks and stuff (yes, the words are a bit of a blur at first). This is 1. so you can keep local verison control for yourself, and 2. so you can keep it synced with your fork of the course that you and everyone can see on GitHub.com, and 3. a pathway to contributing your improvements back to the top-level course materials! 

      * Naming is worth a lot of thought. How will all this fit into your larger intellectual life (as mapped into your computer)? For myself, I think Jupyter notebooks are a huge future, and it is nice to have them all in one folder tree. So I will use the name (home)/Jupyter/MPO624-2018. 

----------------------
## 3. Let's install and launch jupyter notebooks and python, from unidata-python-workshop

* Basically, follow the istructions at https://unidata.github.io/unidata-python-workshop/installation.html

   * **install** miniconda3 (the basic system, easily expanded) or anaconda (the big package with more than we need) from anaconda.com. The 3 refers to Python3. Python2 is deprecated soon.

   * Clone or Download (big green button) https://github.com/Unidata/unidata-python-workshop. Or, the installation page has several other ways to get it. You only need one. Again, put it in a meaningfully named directory — the thoughfulness with which you organize YOUR computer’s file hierarchy now will pay off in the long future. If you wanted to actually contribute back to the unidata-python-workshop repo, you might Fork it on GitHub and then fetch your copy, as you did for the class repo in 2. above. 

   * To get launched into Jupyter work, you will need to open a "Terminal" in Mac or "Command Prompt" in Windows and type these things there. 
   
      * **cd (your_directory)/unidata-python-workshop**
      * **conda env create -f environment.yml**
      
   * If all goes well, you can now activate the environment (where all those packages are installed), and launch! 
      * Windows: **activate unidata-workshop**
      * Mac (bash shell): **source activate unidata-workshop**
      * type **jupyter notebook**
      
      A browser window should now pop up with Jupyter running in it! You can explore, operate, and edit the notebooks/???.ipynb files!

