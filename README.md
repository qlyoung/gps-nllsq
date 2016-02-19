# gps-nllsq
  *application of nonlinear least squares optimization to GPS*

Fun little applied math project. Given the positions of several satellites in space and corresponding signal latencies
to an unknown point on Earth, how do we determine that point? Clock latency and atmospheric scattering must be accounted
for in order to obtain an accurate measurement. In this particular model there are 4 unknowns: the components of the
unknown location in 3-space and system clock latency. With 4 uniquely positioned satellites, calculation of residuals
yields a system of 4 nonlinear equations in 4 unknowns, the solution to which may be precisely determined by numerical
methods. With more satellites, however, the system becomes overdetermined and must be optimized. Here the chosen
optimization technique is the method of least squares. Since the numbers are rather messy, Matlab takes care of them.

Pretty neat!
