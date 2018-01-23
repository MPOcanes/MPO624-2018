## Set up Jupyter+Python on your PC or Mac, and get the starter pack from Unidata

#### These instructions are summarized from https://unidata.github.io/unidata-python-workshop/installation.html

   1. **install** miniconda3 (the basic system, easily expanded), or full Anaconda (a big package with more than we need), as explained at https://conda.io/docs/user-guide/install/index.html. 
   
   2. Copy the workshop repository  https://github.com/Unidata/unidata-python-workshop onto your local machine. If you simply want a _frozen_ copy, hit the big green **Clone or Download** button and get the .zip file. If you have made a GitHub account (see https://github.com/MPO624/MPO624-2018/blob/master/GITHUB_QUICKSTART.md), and want to potentially contrubute back to this workshop repository, you can _Fork_ it. The unidata installation page linked above has other ways to get it too. 
   
      - unzip it in a meaningfully named directory — mine is (home)/Jupyter/unidata-python-workshop

   3. Open a **Terminal** (in Mac) or **Command Prompt** (in Windows). Then, type these things there: 
   
      * **cd /(your_folder_path)/unidata-python-workshop** 
         - (or perhaps unidata-python-workshop-master, if you did the zipfile route)
      * **conda env create -f environment.yml**
        * This will take several minutes as the unitata-workshop _environment_ is built, by downloading the requested set of libraries of modules from Python's package managers. 

   * The moment of truth:
      * Windows: **activate unidata-workshop**
      * Mac (bash shell): **source activate unidata-workshop**
      
      * **jupyter notebook**
      
If you did it all right, a browser window should now pop up, with Jupyter running in it! 

You will see a file tree, beginning from the folder you launched jupyter in. You are ready to **explore, and learn to operate and modify, the most valuable resource there: notebooks/xxxx.ipynb** files. Start with notebooks/ Jupyter_Notebooks/...

By the way, you can borwse static versions of these notebooks on GitHub.com, which renders .ipynb files natively: https://github.com/Unidata/unidata-python-workshop/tree/master/notebooks/Jupyter_Notebooks

And GitHub.com is full of so many more! Web-search "jupyter gallery" and behold...
