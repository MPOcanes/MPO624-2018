## Set up Jupyter+Python on your PC or Mac
### and get the "workshop" starter pack of notebooks from Unidata

#### These instructions are summarized from https://unidata.github.io/unidata-python-workshop/installation.html. More detail can be found there.

--------------

   1. **install** miniconda3 (the basic system, easily expanded), or full Anaconda (a big frozen package with more than we need), as explained at https://conda.io/docs/user-guide/install/index.html. 
   
   2. **Clone** Unidata's great workshop materials, with a few of my touches, from https://github.com/brianmapes/unidata-python-workshop onto your local machine. To do this, hit the big green **Clone or Download** button and the **Download ZIP**.  
   
      - unzip it into a meaningfully named directory. You may want to rename the folder to something shorter than unidata-python-workshop-master, if you like. My own path fot it is _(home)/Jupyter/unidata-python-workshop_. 

   3. Open a **Terminal** (in Mac) or **Command Prompt** (in Windows). Then, type these things there: 
   
      * **cd /(your_folder_path)/unidata-python-workshop-master** 
         - (or whatever file path you chose for the unzipped materials)
      * **conda env create -f environment.yml**
        * This will take several minutes as the unidata-workshop-mapes _environment_ is built by downloading the requested set of modules from Python's package managers. 

   * Enter (or _activate_) the environment where those packages have been installed:
      * Windows: **activate unidata-workshop-mapes**
      * Mac (bash shell): **source activate unidata-workshop-mapes**
   * The moment of truth! 
      * **jupyter notebook**
      
---------------------
If you did it right, a browser window should now pop up, with localhost:8888... in the URL. This is the browser face of the jupyter notebook server, which is running on your own machine (called _localhost_). 

** Firefox broswer may not work as well as Chrome or Safari

You will see a file tree, beginning from the folder where you launched **jupyter notebook**. You are ready to explore, and learn to operate and modify, the most valuable resource there: **notebooks/(folder)/xxxx.ipynb** files. Start with notebooks/Jupyter_Notebooks/... to learn to operate the notebooks. That is part of my recommended pathways for beginners: https://github.com/brianmapes/unidata-python-workshop/blob/master/notebooks/ABOUT_THESE_NOTEBOOKS.md. 

Are you new to Python but know some programming concepts? Consider my ultra-summarized list of first things about _parsing_ python, well enough to understand and adjust notebooks, at https://github.com/MPO624/MPO624-2018/blob/master/PYTHON_SYNTAX_101.md. 

By the way, you can browse _static_ versions of all these same Unidata notebooks on GitHub.com: https://github.com/Unidata/unidata-python-workshop/tree/master/notebooks/Jupyter_Notebooks. 

Excited? GitHub.com is full of so many more great executable notebooks! Web-search "jupyter gallery", and explore... If you like something, they are all free, just use the **Raw** button to download them. 

This is going to change scientific communication forever...
