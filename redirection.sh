#!/bin/bash
ls /etc > out.txt #normal output
ls /no/file 2> err.txt #errors only
ls /etc >> out.txt #append output
ls /etc| tee both.txt #screen +file
