#!/usr/bin/python

global vina_path
vina_path = "/Users/AJames/Desktop/vina/bin"

import os
path = '/Users/AJames/Desktop/Running_vina'

for root, dirs, files in os.walk(path):
    for name in files:
        if name.endswith("conf.txt"):
            print("Executing configuration file and applying vina docking")
            myfile = open(name, "r")
            os.system("%s/vina --config conf.txt --log log.txt"%(vina_path))
