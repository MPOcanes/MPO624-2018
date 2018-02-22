## Set up Jupyter+Python on your PC or Mac
### and get the "workshop" starter pack of notebooks from Unidata

#### These instructions are summarized from https://unidata.github.io/unidata-python-workshop/installation.html. More detail can be found there.

--------------

   1. **Install** [miniconda3](https://conda.io/miniconda.html) (the basic system, which you expand as needed), or full [Anaconda](https://www.anaconda.com/download/) (a 2 GB package with a GUI interface called **Navigator**.). 
   
      - **Windows users with little Command Prompt skill:** _I recommend Anaconda, which has a **"Navigator"** GUI_ for setting up environments and launching jupyter. I just don't know enough about Windows to help you with the challenges of the PC miniconda approach.  
   
   2. **Download** Unidata's great workshop materials with a few of my touches, from https://github.com/brianmapes/unidata-python-workshop onto your local machine. To do this, hit the big green **Clone or Download** button and the **Download ZIP**.  (Or if you know what it means in GitHub, and think you will want to contribute back some improvements you make, you can **Fork** it.)
   
      - unzip it into a _meaningfully named_ directory in your _consciously considered_ folder tree. You may want to rename the folder to something shorter than unidata-python-workshop-master. My own path for it is `(home)/Jupyter/unidata-python-workshop`. 

   3. **Create** the unidata-workshop-mapes _environment_. This will take several minutes as the requested set of modules is downloaded from Python's package managers. To do this step, 
 
   - from Anaconda Navigator
      - Select the *Environments* tab at left, and hit Import. Fined the *Specification file* environment.yml in the folder of your downloaded package from step 2. Importing will take a few minutes. 

   - Miniconda approach
      - Mac: open a **Terminal**, which should be running the bash shell
      - Windows: open a **Command Prompt**
      
      - Type these things, in whichever case:    
         * **cd /(your_folder_path)/unidata-python-workshop-master** 
            - (whatever path you chose in step 2)
         * **conda env create -f environment.yml**
        
   4. Enter (or _activate_) the environment where those packages have been installed, and launch! 
      * Anaconda Navigator: In the **Home** tab at left, select the desired "channel" (Navigator's word for an _environment_), then double-click the jupyter logo.
      
      * Mac (bash shell): **source activate unidata-workshop-mapes**, then **jupyter notebook**
      * Windows (command prompt approach): **activate unidata-workshop-mapes**, then **jupyter notebook**
      
If you did it right, a browser window should now pop up, with localhost:8888... in the URL. This is the browser face of the jupyter notebook server, which is running on your own local machine (which is called _localhost_). 

---------------------
### Warning: Firefox broswer may not work as well as Chrome, some have found
---------------------


You will see a file tree, beginning from the folder where you launched **jupyter notebook**. You are ready to explore, and learn to operate and modify, the most valuable resource there: _notebooks/(folder)/xxxx.ipynb_ files. 

Start with notebooks/Jupyter_Notebooks/... to learn to operate the notebooks. That is part of my recommended pathways for beginners: https://github.com/brianmapes/unidata-python-workshop/blob/master/notebooks/ABOUT_THESE_NOTEBOOKS.md. 

Are you new to Python, but know some programming concepts? Consider my ultra-summarized list of first things about parsing python code, well enough to understand and adjust notebooks, at https://github.com/MPO624/MPO624-2018/blob/master/PYTHON_SYNTAX_101.md. 

By the way, you can browse _static_ versions of all these same Unidata notebooks on GitHub.com: https://github.com/Unidata/unidata-python-workshop/tree/master/notebooks/Jupyter_Notebooks. 

Excited? GitHub.com is full of so many more great executable notebooks! Web-search "jupyter gallery", and explore... Or select related topics under [unidata's page](https://github.com/Unidata/unidata-python-workshop/). 

If you find a .ipynb you like, right-click the **Raw** button to download it to your collection. 
