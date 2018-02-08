## You have to know this much about environments

From the directory where you find this file, you must **create** the **MPO624 environment** like this: 

`conda env install -f MPO624_conda_environment.yml`

And of course, to "activate" an environment before launching jupyter, 
source activate MPO624

If we need more packages, more lines can be added to that file (it is easy to read). To **update** your environment, without reinstalling all its packages, step out of it first: 

`source deactivate`

`conda env _update_ -f MPO624_conda_environment.yml`

`source activate MPO624`

If you do all this a lot, conda can use a lot of disk space. You might like to use

`conda clean` 

The conda cheat sheet is one woth the paper to print it on, perhaps. 
