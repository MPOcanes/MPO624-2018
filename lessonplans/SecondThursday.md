# Second thursday

## Last bits of setup

  - Everyone got the 223 github client? 
  - PC multiple desktops, window clearing? (native on Windows 10)
  
## Another "Landscape" Graphic 

  - Orientation to CS vs. Python vs. ADA-for-AOS: The web is ally, not friend
  - **Books** for the early journey
    - handouts from johnny-lin.com/intropy
    - advert for DeCaria (sundog press) 

## First things to know about Python
  * Case sensitive (capitalization matters!)
  * Indentation is meaningful (loops, conditions, function definition)
    * use \ for line continuation
  
  * Data types 
    * Dynamically typed (variable type is set when assigned, upcast when needed)
    * Strings in single or double quotes; triple it to verbatim special characters
    * True and False and None
  
  * Lists and tuples: indexing starts from 0 
    * Lists [] are ordered, mutable _(insert, remove, append)_
    * Tuples() are ordered, **immutable** 
    
  * Arrays are in the numpy module, not basic Python 
    * reshape, ravel, resize, squeeze(), etc. 
    
  * Dictionaries {key:value}. No order (no indexing).
  
  * Procedural approach: result = function(arguments, keywords)
    * arguments by position, then optional keyword=value 
    * 
    
  * Flow control
    * if <condition>:    <-- Note Colon!
        - action
    * while <condition>:   <-- Note Colon!
        - action that better change the condition!
    * for <item> in <iterable>:  <-- Iterable may be a list, or range(n) from 0 to n 
       - action  
  * Exceptions and errors 
    * try:    <-- Note Colon!
        - action
    * except:   <-- Note Colon!
      - backup action
    * raise (errortype) 

  * Object oriented syntax: the . symbol
    * An _object_ is an instance of a _class_
    * object.something is an _attribute_
    * object.method() makes the action happen 
    * dir(object) shows all available methods/attributes for its class
    * some have underscores like a.\_\_doc\_\_, "private" (definitional)
    * class names follow the CapWords convention
    
  * Modules and namespaces
    * import module (as shortname)
    * from module import submodule ... (as shortname)
  
# plunge into some Jupyter notebooks 
  - and how to interrogate and adapt existing Python code in them
  
## Jupyter: Help menu has it all, web has more. So much help!
### Why do I privelege these few? Random
  - http://jupyter-notebook-beginner-guide.readthedocs.io/en/latest/execute.html
  - https://www.dataquest.io/blog/jupyter-notebook-tips-tricks-shortcuts/
  - https://www.datacamp.com/community/tutorials/tutorial-jupyter-notebook

## More on Python and the SciPy landscape

http://www.scipy-lectures.org/
https://github.com/jakevdp



