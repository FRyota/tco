#====================================================================#
#                                                                    #
# Copyright 2002-2014,2015                                           #
# Mikael Granvik, Jenni Virtanen, Karri Muinonen, Teemu Laakso,      #
# Dagmara Oszkiewicz                                                 #
#                                                                    #
# This file is part of OpenOrb.                                      #
#                                                                    #
# OpenOrb is free software: you can redistribute it and/or modify it #
# under the terms of the GNU General Public License as published by  #
# the Free Software Foundation, either version 3 of the License, or  #
# (at your option) any later version.                                #
#                                                                    #
# OpenOrb is distributed in the hope that it will be useful, but     #
# WITHOUT ANY WARRANTY; without even the implied warranty of         #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU  #
# General Public License for more details.                           #
#                                                                    #
# You should have received a copy of the GNU General Public License  #
# along with OpenOrb. If not, see <http://www.gnu.org/licenses/>.    #
#                                                                    #
#====================================================================#
#
# Gnuplot script for plotting the orbital-element probability-density
# function in Cartesian phase space overlaid by the VoV mapping
# ranges.
#
# Author:  MG
# Version: 2015-06-15
#
reset
set terminal postscript enhanced portrait linewidth 1.0 8.0
set out 'vov_results.ps'
unset key
set pointsize 0.2
set size 1.0,1.0
set origin 0.0,0.0
set multiplot
set size 0.5,0.33
set origin 0.0,0.66
set xlabel 'x [AU]'
set ylabel 'y [AU]'
plot 'vov_orbits.out' using 1:2 pt 7, \
'vov_nominal_orbit.out' using 1:2 with points pt 3 ps 3.0, \
'vov_sampling_grid.out' using 1:2:7:8 with yerrorbars lt 1
set size 0.5,0.33
set origin 0.5,0.66
set xlabel 'x [AU]'
set ylabel 'z [AU]'
plot 'vov_orbits.out' using 1:3 pt 7, \
'vov_nominal_orbit.out' using 1:3 with points pt 3 ps 3.0, \
'vov_sampling_grid.out' using 1:3:7:10 with yerrorbars lt 1
set size 0.5,0.33
set origin 0.0,0.33
set xlabel 'x [AU]'
set ylabel 'dx/dt [AU/d]'
plot 'vov_orbits.out' using 1:4 pt 7, \
'vov_nominal_orbit.out' using 1:4 with points pt 3 ps 3.0, \
'vov_sampling_grid.out' using 1:4:7:12 with yerrorbars lt 1
set size 0.5,0.33
set origin 0.5,0.33
set xlabel 'x [AU]'
set ylabel 'dy/dt [AU/d]'
plot 'vov_orbits.out' using 1:5 pt 7, \
'vov_nominal_orbit.out' using 1:5 with points pt 3 ps 3.0, \
'vov_sampling_grid.out' using 1:5:7:14 with yerrorbars lt 1
set size 0.5,0.33
set origin 0.0,0.0
set xlabel 'x [AU]'
set ylabel 'dz/dt [AU/d]'
plot 'vov_orbits.out' using 1:6 pt 7, \
'vov_nominal_orbit.out' using 1:6 with points pt 3 ps 3.0, \
'vov_sampling_grid.out' using 1:6:7:16 with yerrorbars lt 1
set size 0.5,0.33
set origin 0.5,0.0
set xlabel 'x [AU]'
set ylabel 'Unnormalized discrete p.d.f.'
plot 'vov_orbits.out' using 1:7 pt 7
unset multiplot
reset
