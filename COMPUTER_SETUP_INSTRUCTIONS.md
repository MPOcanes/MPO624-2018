# To gain the power of Jupyter + Python,
## Set up Github and Miniconda3, from your PC or Mac

### I. Make your space on GitHub: 

1. Install the desktop client (app) https://desktop.github.com/
   - While you're at it, install the text editor atom https://atom.io/
   
2. Make an account on github.com (the desktop client will prompt you on launch, or you can go directly). 

#### Browse the Guides at https://guides.github.com/

  - Perhaps make a simple web page cover for your repo, using GitHub Pages
  - Perhaps study the repository game: https://learngitbranching.js.org/ 
      - git is a **minimum** set of rules needed for peers to collaborate on a thing. It's a fundamental aspect of group existence! Well worth the attention. You can do all our stuff more visually, from the client, but the git command lines show the bare bones behind it. 
   - If you like, dig into the deeper training https://services.github.com/on-demand/

#### Test: Your first Fork and Pull Request (PR) (our first collaboration!) 

Go to the master copy at https://github.com/MPO624/MPO624-2018
   * Fork it. 
   * Click _PARTICIPANTLIST.md_. 
   * Click the pencil icon, and edit the markdown (it should be self-explanatory). 
   * Commit your edits (with a non-default comment, if you like). 
   * When done, make a _Pull Request_. That comes to me, and you'll see my responses in your email. Or, you can always check the status of your request thread on the web site. 

-------------------------
### II. Fetch your Fork of the class repo onto your own machine

Let's get your fork of the course (github.com/myname/MPO624-2018) onto your own computer — but in a way that you can easily keep synced as you work on it.  You also need a local copy in order to be able to merge in any changes I make to the master MPO6424/MPO624-2018 repo. 

To do this, open the GitHub desktop app, and find where it says **Clone an existing project from GitHub to your computer**. You will have to select the directory name on your own computer. 

   *This folder will be special*: it will have some hidden files in there (starting with .git) to keep track of all those branches and forks and stuff. This helps you keep local verison control for yourself, and enables syncing with your Fork online. 

      * Naming is worth a lot of thought. How will all this fit into your larger intellectual life (as mapped into your computer)? For myself, I think Jupyter notebooks are a huge future, and it is nice to have them all in one folder tree. So I will use the name (home)/Jupyter/MPO624-2018. 

----------------------
### III. Install and launch Jupyter notebooks and Python, following the tracks of unidata-python-workshop

#### Follow the istructions at https://unidata.github.io/unidata-python-workshop/installation.html

   1. **install** miniconda3 (the basic system, easily expanded) or anaconda (the big package with more than we need) from anaconda.com. The 3 refers to Python3; Python2 will be deprecated soon.
   
   2. Copy the workshop repo  https://github.com/Unidata/unidata-python-workshop onto your local machine. If you think you may want to contribute back to those materials, use **Fork** as in step II. If you just want a fixed copy, use **Clone or Download** (big green button). The installation page has other ways to get it -- you only need one of these. Again, put it in a meaningfully named directory — mine is (home)/Jupyter/unidata-python-workshop. 

   3. To launch yourself into Jupyter, in unidata's workshop _environment_, you will need to open a **Terminal** in Mac or **Command Prompt** in Windows. Then, type these things there: 
   
      * **cd (your_directory)/unidata-python-workshop**
      * **conda env create -f environment.yml**
        * (This will take several minutes as the _environment_ is prepared -- downloading all the packages from the Web). 
      
   * If all goes well, you can now activate this _environment_ (so all those packages are avalable), and launch! 
      * Windows: **activate unidata-workshop**
      * Mac (bash shell): **source activate unidata-workshop**
      * **jupyter notebook**
      
      If it's all correct, a browser window should now pop up, with Jupyter running in it! You will see your file tree, beginning from the folder you launch jupyter in. **explore, learn to operate, and feel free to edit the notebooks/???.ipynb** files!

