# Notes to self basically

# To make pkgs.txt file:

xbps-query -l >> pkgs-pre.txt
cat pkgs.txt # to verify
awk '{print $2}' pkgs-pre.txt >> pkgs.txt
