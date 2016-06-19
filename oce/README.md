# Conda Recipe for oce

sudo apt-get install freeglut3-dev is required n Ubuntu

anaconda build doesn't alow yum install freeglut-devel on centos, so .binstar.yml is removed

requires:

conda config --add channels DLR-SC