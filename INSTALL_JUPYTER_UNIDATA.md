## Set up Jupyter+Python on your PC or Mac
### and get the "workshop" starter pack of notebooks from Unidata

#### These instructions are summarized from https://unidata.github.io/unidata-python-workshop/installation.html. More detail can be found there.

--------------

   1. **install** miniconda3 (the basic system, easily expanded), or full Anaconda (a big frozen package with more than we need), as explained at https://conda.io/docs/user-guide/install/index.html. 
   
   2. Clone Unidata's workshop repository  https://github.com/Unidata/unidata-python-workshop onto your local machine. To get a copy, hit the big green **Clone or Download** button and **get .zip file**. (_If you are a more advanced user who wants to potentially contribute back to this workshop repo, and have your GitHub capabilities set up as explained at https://github.com/MPO624/MPO624-2018/blob/master/GITHUB_QUICKSTART.md, you can _Fork_ it instead; or the unidata installation page linked above has other options._) 
   
      - unzip it into a meaningfully named directory. You may rename the folder to something shorter than unidata-python-workshop-master if you like. My own path suggestion is (home)/Jupyter/unidata-python-workshop. 

   3. Open a **Terminal** (in Mac) or **Command Prompt** (in Windows). Then, type these things there: 
   
      * **cd /(your_folder_path)/unidata-python-workshop-master** 
         - (or whatever file path you chose for the unzipped materials)
      * **conda env create -f environment.yml**
        * This will take several minutes as the unitata-workshop _environment_ is built, downloading the requested set of modules from Python's package managers. 

   * Enter (or _activate_) the environment where those packages have been installed:
      * Windows: **activate unidata-workshop**
      * Mac (bash shell): **source activate unidata-workshop**
   * The moment of truth! 
      * **jupyter notebook**
      
---------------------
If you did it all right, a browser window should now pop up, with localhost:888 in the URL area. This is the browser face of the jupyter notebook server, running on your own machine, which you just launched. You will see a file tree, beginning from the folder where you launched **jupyter notebook**. You are ready to explore, and learn to operate and modify, the most valuable resource there: **notebooks/(folder)/xxxx.ipynb** files. Start with notebooks/Jupyter_Notebooks/... to learn to operate the notebooks. Part of my recommended pathways for beginners: https://github.com/brianmapes/unidata-python-workshop/blob/master/notebooks/ABOUT_THESE_NOTEBOOKS.md New to Python but know some programming concepts? Consider my tips about _parsing_ python well enough to understand notebooks, at https://github.com/MPO624/MPO624-2018/blob/master/PYTHON_SYNTAX_101.md. 

By the way, you can browse _static_ versions of all these same notebooks on GitHub.com: https://github.com/Unidata/unidata-python-workshop/tree/master/notebooks/Jupyter_Notebooks. 

GitHub.com is full of so many more great executable notebooks! Web-search "jupyter gallery", and explore... If you like something, they are all free, just use the **Raw** button to download them. This is going to change scientific communication forever...! 
