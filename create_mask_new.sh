#!/bin/bash

fslmaths rh.ribbon.fmri.nii.gz -add lh.ribbon.fmri.nii.gz mask.nii.gz # combine rh+lh ribbons
