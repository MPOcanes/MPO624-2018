## First things to know about Python
#### Acknowledgements: Chapters 3 and 7 of http://www.johnny-lin.com/pyintro/

  * _Case sensitive_ (capitalization matters!)
  * _Indentation is meaningful_ (loops, conditions, function definition)
    * unless you see \ at the end of the previous line
      * thus, \ allows arbitrary indents, for clarity, of multi-line long statements 
  * Multiple commands can be on a line separated by ;
  
  * Data types 
    * _Dynamically typed_ (variable type is set when assigned, upcast when needed)
    * _Strings_ are in single or double quotes; triple it to verbatim special characters
    * _True, False_ and _None_ are Boolean and empty values
  
  * _Lists and tuples_. Indexing starts from 0. [0:1] means ONLY the first element
    * Lists [] are ordered, mutable _(you can insert, remove, append)_
    * Tuples() are ordered, immutable 
    
  * _Arrays_ are in the numpy module, not basic Python 
    * reshape, ravel, resize, squeeze(), etc. 
    
  * _Dictionaries_ are unordered sets of {key:value} pairs. 
  
   * _Flow control_
    * if <condition>:    <-- Note Colon!
        - action
    * while <condition>:   <-- Note Colon!
        - action that had better change the condition!
    * for <item> in <iterable>:  <-- Iterable may be a list, or range(n) from 0 to n 
       - action  
  * Exceptions and errors 
    * try:    <-- Note Colon!
        - action
    * except:   <-- Note Colon!
      - backup action
                    
    * raise (errortype) 

  * _Procedural syntax_: result = function(arguments, keywords)
    * arguments must be present, ordered by position; then _keyword=value,..._ optionally in any order 
 
  * _Object oriented syntax_: the . symbol
    * An _object_ is an instance of a _class_
    * object.something is an _attribute_
    * object.method() calls the method (makes its action happen) 
    * dir(object) shows all available methods/attributes for its class
    * some core methods have underscores like a.\_\_doc\_\_ are "private" (definitional). Don't mess with these. 
    * _class_ names follow the CapWords convention
   
  * _Modules and namespaces_: The heart of Python's power
    * import module (as shortname) 
    * from module import submodule ... (as shortname)
    * modules are objects: they have attribiutes and methods
      * Hover over an object and hit _shift+tab_ in Jupyter to see its definition
      * Hover to the right of . and hit _tab_ to see autocomplete help on its available attributes and methods
