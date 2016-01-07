#!/bin/sh
cd /Users/mterwilliger
rsync -av --exclude-from=.rsync-exclude /Users/mterwilliger/ /Volumes/LittleOrangeOne/WayfarerBkp/
