# Instructions 

Containers are a powerful tool for data scientists because they allow you to standardise your environments and easily share experiments with fellow data scientist while ensuring that the dependencies are consistent.

The following exercise will test your ability to learn new technologies and tools. 
You are not expected to finish everything, but it is highly encouraged. 

This should help you get started: 
* https://training.docker.com/course/developer---beginner-linux-containers
* https://training.docker.com/course/developer---intermediate (of interest)
* https://towardsdatascience.com/how-docker-can-help-you-become-a-more-effective-data-scientist-7fc048ef91d5
* https://conda.io/docs/user-guide/install/linux.html

PART 1:
1) Write a Dockerfile (https://docs.docker.com/engine/reference/builder/#shell) that has/does the following:
    
    2) It should be built from CentOS-7
    
    3) Update the OS
    
    4) Install conda using miniconda (doing this through Anaconda is cheating)
    
        5) Install python 3.5+ using conda
    
        6) Install Jupyter using conda
    
        7) Install pandas library and it's dependencies using conda
    
    8) Include the csv file in the container.
    
    9) Include the pandas_notebook that was provided in the home directory.
    
    9) SET the enviroment variable $CSV_FILE_DIR to point to the directory you put the csv file in
    
    10) Run jupyter in no-browser mode (hint: use TINI)    
        - the jupyter UI should be served on port 9000

11) Build your Dockerfile    

From your terminal run: docker -it -p 9000:9000 <tag of your image>    
Access jupyter from your local machine. (Hint: use chrome) 
Run the pandas_notebook in jupyter

PART 2:  
Back in your Dockerfile    
1) Install spark-standalone and all dependencies.
    - make sure you can import the pyspark libraries from within a jupyter notebook
2) Include the spark_notebook that was provided in the home directory.
From your terminal run: docker -it -p 9000:9000 <tag of your image>    
Access jupyter from your local machine. (Hint: use chrome) 
Run the spark_notebook in jupyter

PART 3: (Bonus)
Do whatever you want. Show off.
Some ideas:
* Get hadoop + spark working
* In the spirit of sharing work through containers. Build a container that is able to run a side / university project you've done. 
* ASCII image print out


Finally: Zip the Dockerfile(s) and all relevant files and then send it to us with the docker build and docker run commands that we should run
