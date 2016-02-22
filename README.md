# gps-nllsq
  *application of nonlinear least squares optimization to GPS*

Fun little applied math project. Given the positions of several satellites in space and corresponding signal latencies
to an unknown point on Earth, how can that point be determined? Clock latency and atmospheric scattering must be accounted
for in order to obtain an accurate measurement. In this particular model there are 4 unknowns: the components of the
unknown location in 3-space and system clock latency. With 4 uniquely positioned satellites, calculation of residuals
yields a system of 4 nonlinear equations in 4 unknowns, the solution to which may be precisely determined by numerical
methods. With more satellites, however, the system becomes overdetermined and must be optimized. Here the chosen
optimization technique is the method of least squares. Since the numbers are rather messy, Matlab takes care of them.

Pretty neat!

License
-------
```
Copyright (C) 2016  Quentin Young

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see http://www.gnu.org/licenses/.
```
