## Set up Jupyter+Python on your PC or Mac
### and get the "workshop" starter pack of notebooks from Unidata

#### These instructions are summarized from https://unidata.github.io/unidata-python-workshop/installation.html. More detail can be found there.

--------------

   1. **install** miniconda3 (the basic system, which gets expanded on demand), or full Anaconda (a big package with more than we need), as explained at https://conda.io/docs/user-guide/install/index.html. 
      - **Windows users:** I must recommend Anaconda, which has a "Navigator" GUI for setting up environments and launching jupyter. I don't know enough about Windows's command-line interface and how paths are set to help you with the challenges of the miniconda approach.  
   
   2. **Clone** Unidata's great workshop materials, with a few of my touches, from https://github.com/brianmapes/unidata-python-workshop onto your local machine. To do this, hit the big green **Clone or Download** button and the **Download ZIP**.  
   
      - unzip it into a meaningfully named directory. You may want to rename the folder to something shorter than unidata-python-workshop-master, if you like. My own path fot it is _(home)/Jupyter/unidata-python-workshop_. 

   3. Create the unidata-workshop-mapes _environment_. This will take several minutes as the requested set of modules is downloaded from Python's package managers. To do this step, 
 
   - Mac: open a **Terminal**, which should be running the bash shell, and type these things:    
         * **cd /(your_folder_path)/unidata-python-workshop-master** 
            - (whatever file path you chose for the unzipped folder of materials)
         * **conda env create -f environment.yml**
         
   - PC or Mac (if you installed full Anaconda package): From the Navigator, Environments area, Import and use the system finder to open the environment.yml file. 

   - PC (miniconda approach): open a **Command Prompt**, and type the same things as the Mac above

   4. Enter (or _activate_) the environment where those packages have been installed, and launch! 
      * PC or Mac (Anaconda Navigator): Select the unidata-workshop-mapes environment, then double-click the jupyter logo
      
      * Mac (bash shell): **source activate unidata-workshop-mapes**
      * Windows (command prompt approach): **activate unidata-workshop-mapes**
      * Either of the above: **jupyter notebook**
      
---------------------
If you did it right, a browser window should now pop up, with localhost:8888... in the URL. This is the browser face of the jupyter notebook server, which is running on your own local machine (which is called _localhost_). 

** Firefox broswer may not work as well as Chrome or Safari

You will see a file tree, beginning from the folder where you launched **jupyter notebook**. You are ready to explore, and learn to operate and modify, the most valuable resource there: **notebooks/(folder)/xxxx.ipynb** files. Start with notebooks/Jupyter_Notebooks/... to learn to operate the notebooks. That is part of my recommended pathways for beginners: https://github.com/brianmapes/unidata-python-workshop/blob/master/notebooks/ABOUT_THESE_NOTEBOOKS.md. 

Are you new to Python but know some programming concepts? Consider my ultra-summarized list of first things about _parsing_ python, well enough to understand and adjust notebooks, at https://github.com/MPO624/MPO624-2018/blob/master/PYTHON_SYNTAX_101.md. 

By the way, you can browse _static_ versions of all these same Unidata notebooks on GitHub.com: https://github.com/Unidata/unidata-python-workshop/tree/master/notebooks/Jupyter_Notebooks. 

Excited? GitHub.com is full of so many more great executable notebooks! Web-search "jupyter gallery", and explore... If you like something, they are all free, just use the **Raw** button to download them. 

This is going to change scientific communication forever...
