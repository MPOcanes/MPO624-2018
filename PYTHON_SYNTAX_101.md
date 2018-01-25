## First things to know about Python
#### Acknowledgements: Chapters 3 and 7 of http://www.johnny-lin.com/pyintro/

  * Case sensitive (capitalization matters!)
  * Indentation is meaningful (loops, conditions, function definition)
    * use \ for line continuation
  
  * Data types 
    * Dynamically typed (variable type is set when assigned, upcast when needed)
    * Strings in single or double quotes; triple it to verbatim special characters
    * True and False and None
  
  * Lists and tuples: indexing starts from 0 
    * Lists [] are ordered, mutable _(insert, remove, append)_
    * Tuples() are ordered, immutable 
    
  * Arrays are in the numpy module, not basic Python 
    * reshape, ravel, resize, squeeze(), etc. 
    
  * Dictionaries {key:value}. No order (no indexing).
  
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

  * Procedural syntax: result = function(arguments, keywords)
    * arguments by position, then optional keyword=value 
 
  * Object oriented syntax: the . symbol
    * An _object_ is an instance of a _class_
    * object.something is an _attribute_
    * object.method() makes the action happen 
    * dir(object) shows all available methods/attributes for its class
    * some have underscores like a.\_\_doc\_\_, "private" (definitional)
    * class names follow the CapWords convention
   
  * Modules and namespaces
    - import module (as shortname)
    - from module import submodule ... (as shortname)
  
