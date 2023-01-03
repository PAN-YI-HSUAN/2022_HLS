# ResNet Image Classifier on PYNQ-Z2
## Introduction
ResNet:  
We select ResNet to implement the image classifier for its high accuracy and relative small model.
After try and error, we find that ResNet8 meet our initial goal the most.

## Major optimization
ResNet:  
Light-weight: we achieve 84.51% accuracy while reduce 99% parameters of original benchmark model (ResNet18).
Max-utilized: we achieve 89.33% accuracy with a the larget model we can fit on PYNQ-Z2.

## Folder structure

## Build step
ResNet:  
Please install python package in requirement.txt file, then simply run ResNet_training.py.