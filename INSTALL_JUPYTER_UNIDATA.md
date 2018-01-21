## Set up Jupyter+Python on your PC or Mac, and get the starter pack from Unidata

#### These instructions are summarized from https://unidata.github.io/unidata-python-workshop/installation.html

   1. **install** miniconda3 (the basic system, easily expanded), or full Anaconda (a big package with more than we need), as explained at https://conda.io/docs/user-guide/install/index.html. 
   
   2. Copy the workshop repository  https://github.com/Unidata/unidata-python-workshop onto your local machine. If you want a fixed copy, hit the big green **Clone or Download** button and get the .zip file. If you have a GitHub account, and want to potentially contrubute back to this workshop repository, you can Fork it. The installation page lined above has other ways to get it too. 
      - unzip it in a meaningfully named directory — mine is (home)/Jupyter/unidata-python-workshop

   3. Open a **Terminal** (in Mac) or **Command Prompt** (in Windows). Then, type these things there: 
   
      * **cd /(your_folder_path)/unidata-python-workshop**
      * **conda env create -f environment.yml**
        * (This will take several minutes as the unitata-workshop _environment_ is built, by downloading the requested set of libraries of modules from Python's package managers). 
      * Windows: **activate unidata-workshop**
      * Mac (bash shell): **source activate unidata-workshop**

   * The moment of truth:
      * **jupyter notebook**
      
If it's all correct, a browser window should now pop up, with Jupyter running in it! You will see your file tree, beginning from the folder you launch jupyter in. You are ready to **explore, learn to operate, and feel free to edit the notebooks/xxxx.ipynb** files!
