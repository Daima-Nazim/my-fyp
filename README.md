# my-fyp
AI Disease Description and Health Subscription
**Objective**
Diabetic Retinopathy and Cataract is leading cause of blindness in the workingage population of the world.
The aim is to provide a user friendly web base platform to simultaneously detect eye diseases and classify the detected disease as Diabetic Retinopathy or Cartaract.

**Data Set**
The data set for this project is takken from the Kaggle website.The links to download the data set are as follow:
https://www.kaggle.com/c/diabetic-retinopathy-detection
https://www.kaggle.com/jr2ngb/cataractdataset

**Prerequisities :**
You will need to install:
1. Visual Studio (minimum vs2013)
2. SQL Server Database
3. Anaconda
4. Python (Minimum 3)
5. Jupiter Notebook
6. Tensorflow
7. Keras


**For Front End :**
1.Using **Visual Studio** for building the web site from where 
User login 
Upload eye image
View Reports and
Admin panel where admin able to mange the website.
You can download Visual Studio from following link:
https://visualstudio.microsoft.com/downloads/
Here is complete guide to setup visual studio:
https://docs.microsoft.com/en-us/visualstudio/install/install-visual-studio?view=vs-2019

2.For **SQL Server Database** use following link to download:
https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15
Here is complete step-to-step guide to SQL Server Management Tool:
https://www.sqlshack.com/sql-server-management-studio-step-step-installation-guide/


**For Back End:**

**1. Installing Python Packages:**
Python is available for all three major operating systems -Microsoft Windows,MAC OS X and Linux,the installer,as well as the documentation, can be downloded from the officail Python website:
https://www.python.org

**Note**

You can check your current version of Python by executing

       $ python -V

**Pip**

The additional packages that we will be using throughout this book can be installed via the pip installer program, which has been part of the Python standard library since Python 3.3.

**2. Anaconda**
 Anaconda is a free—including commercial use—enterprise-ready Python distribution that bundles all the essential Python packages for data science, math, and engineering in one user-friendly cross-platform distribution. The Anaconda installer can be downloaded at http://continuum.io/downloads#py34, and an Anaconda quick start-guide is available at https://store.continuum.io/static/img/Anaconda-Quickstart.pdf.

After successfully installing Anaconda, we can install new Python packages using the following command:

conda install packagename
  
Existing packages can be updated the following command:

conda update packagename


**3. Core packages**
The version numbers of the major Python packages that were used for writing this book are listed below. Please make sure that the version numbers of your installed packages are equal to, or greater than, those version numbers to ensure the code examples run correctly:

**Open CV **- OpenCV-Python is a library of Python bindings designed to solve computer vision problems. OpenCV-Python makes use of Numpy, which is a highly optimized library for numerical operations.

          pip install opencv-python
   
NumPy 1.9.1

SciPy 0.14.0

scikit-learn 0.15.2

matplotlib 1.4.0

pandas 0.15.2

Tensorflow : open-source library     

        ( pip install tensorflow )      or use  (conda install tensorflow)

Keras : It is a powerful and easy-to-use free open source Python library for developing and evaluating deep learning models.

       ( pip install keras )      or use  (conda install keras)
     

**4. Jupyter Notebook**
Some readers weere wondering about the .ipynb of the code files -- these files are IPython notebooks. I chose IPython notebooks over plain Python .py scripts, because I think that they are just great for data analysis projects! IPython notebooks allow us to have everything in one place: Our code, the results from executing the code, plots of our data, and documentation that supports the handy Markdown and powerful LaTeX syntax!

The Jupyter notebook can be installed as usually via pip.

$ pip install jupyter notebook

Alternatively, we can use the Conda installer if we have Anaconda or Miniconda installed:

$ conda install jupyter notebook

To open a Jupyter notebook, we use 'cd' to move to the directory that contains your code examples, e.g,.

$ cd ~/code/python-machine-learning-book

and launch jupyter notebook by executing

$ jupyter notebook

Jupyter will start in our default browser (typically running at http://localhost:8888/). Now, we can simply select the notebook you wish to open from the Jupyter menu.

**5. Download and Use the Jupiter NoteBook Code in your computer:**

First click on "Raw" button that is on code in github

Then, press ctrl+s to save it as .ipynb (Note that you'll have to manually type '.ipynb' after the file name to make this work, as files from GitHub are saved as text files as 
default.)

Open jupyter notebook

Go to location where you saved .ipynb file

Open file, you will see the code


**Cloning a repository using the command line : 
**
On GitHub, navigate to the main page of the repository.

Above the list of files, click  Code.

"Code" button

To clone the repository using HTTPS, under "Clone with HTTPS", click . To clone the repository using an SSH key, including a certificate issued by your organization's SSH certificate authority, click Use SSH, then click . To clone a repository using GitHub CLI, click Use GitHub CLI, then click .

The clipboard icon for copying the URL to clone a repository

Open Git Bash.

Change the current working directory to the location where you want the cloned directory.

Type git clone, and then paste the URL you copied earlier.

$ git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY

Press Enter to create your local clone.

$ git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY

> Cloning into `Spoon-Knife`...
> remote: Counting objects: 10, done.
> remote: Compressing objects: 100% (8/8), done.
> remove: Total 10 (delta 1), reused 10 (delta 1)
> Unpacking objects: 100% (10/10), done.
 
 **Note**
 
 Git should be installed on your computer to use git commands,for download use can use this link:https://git-scm.com/downloads


**Extraction and Preprocessing**
The preprocessing pipeline is the following:

**1.Resize All Images**

The given images were mostly very large. ~2000 by ~2000. So to keep things unifrom all images were scaled down to 512 by 512.

**2.Gaussain Bluring of Images**

The method is simple. Straightforward. Has sound reasoning. And can be implemented in only a single line of code:
cv2.GaussainBlur(image, 3*3,50)

We simply take a single channel of an image and convolve it with the following 3 x 3 kernel:

0	1	0
1	-4	1
0	1	0
 
**3.Data Augmentation**

All images were rotated 90, 120, 180, and 270 degrees.

**4.Circular Cropping****

We use thiis technique to remove the extra space around and get more closer and clear look of image.

 **5.Singular value decomposition (SVD)**

It is used to remove noise and create sharpness in image to get more insight from it.


**Note:**
All these Extraction and preprocessing techniques code are in this repository.
