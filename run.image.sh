#!/bin/bash

sudo docker stop ufsc_latex-ubuntu; sudo docker rm ufsc_latex-ubuntu

sudo docker run -it --name ufsc_latex-ubuntu \
     -d ufsc/latex-ubuntu:14.04

