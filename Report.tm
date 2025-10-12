<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<\doc-title>
    Advanced Quantum Optics:

    Quantum Emitter simulation with FDTD
  </doc-title>|<doc-author|<author-data|<author-name|Jules
  STEVENOT>|<\author-affiliation>
    September 2025
  </author-affiliation>>>>

  <abstract-data|<\abstract>
    We will conduct in this paper a brief report of a practical work about
    the simulation of a Quantum Emitter (QE) in various environments using
    FDTD software named RSoft CAD Environment<math|<rsup|<tiny|TM>>>. This
    work is firstly made as a first touch about FDTD simulation and QE study
    for M2 Physics students.

    The work consists in three different parts with different environment,
    firstly in Vacuum, then in air with a rectangular cuboid (PEC or gold
    material) interaction and lastly with (golden) plasmonic nano-antenna
    interaction.\ 

    This work involves multiple Python codes in order to treat the different
    data from simulations.\ 
  </abstract>>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Introduction>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Material
    & Methods> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <with|par-left|1tab|2.1<space|2spc>Software and units system
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|2.2<space|2spc>Desired values
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|1tab|2.3<space|2spc>Programs details and repository
    structure <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3<space|2spc>Results>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <with|par-left|1tab|3.1<space|2spc>Vacuum - no material
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|3.2<space|2spc>Perfect Electrical Conductor (PEC)
    cases <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|2tab|3.2.1<space|2spc>QE perpendicular to the PEC surface
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|2tab|3.2.2<space|2spc>QE parallel to the PEC surface
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|3.3<space|2spc>Golden surface
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|3.4<space|2spc>QE with golden nanoantenna
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|2tab|3.4.1<space|2spc>One antenna
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>>

    <with|par-left|2tab|3.4.2<space|2spc>Two antennas
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4<space|2spc>(brief)
    Discussion> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5<space|2spc>Conclusion>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16><vspace|0.5fn>
  </table-of-contents>

  <new-page>

  <section|Introduction>

  <label|lipsum>

  <\large>
    This report presents a brief study of a Quantum Emitter (QE) simulated in
    different electromagnetic environments using FDTD method implemented in
    <em|RSoft CAD Environment<math|<rsup|TM>>>. The objective is to observe
    how the local environment affects the radiated power, decay rate and
    quentum yield of the emitter.\ 

    \;

    Starting from a reference case in vacuum, we progressively introduce
    interactions with a Perfect Electric Conductor (PEC), a gold surface, and
    plasmonic nanoantennas in order to visualize how material properties and
    geometry modify the emission characteristics.

    \;

    This work aims to provide a first contact with quantum optics simulation
    tools and to connect it with numerical observations, using advanced
    quantum physical concepts: the Local Density of States (LDOS).

    \;

    Please, feel free to look at the Python codes provided in order to link
    it with the following analyses. The respective codes for each part is
    specified in the following section.
  </large>

  <new-page>

  <section|Material & Methods>

  <subsection|Software and units system>

  Using the software RSoft CAD Environment<math|<rsup|<tiny|TM>>> we need to
  define the Quantum Emitter (QE) and its physical properties/environment
  before launching any simulation.

  The different parameters are:

  <\itemize>
    <item>Emission wavelength: <math|800 nm>;

    <item>Computation window: <math|2*\<times\>2\<times\>2 \<mu\>m<rsup|3>>;

    <item>Dipole at <math|<around*|(|0,0,0|)>> the center of the window that
    is oriented differently through parts;

    <item>Meshgrid of 10 nm cell along each direction;

    <item>Time limit for the simulation: <math|6 \<mu\>s>.
  </itemize>

  The software uses a non-SI units set and we need to transform data in order
  to process them in calculations. To do so, we know that
  <math|\<varepsilon\><rsub|0>\<approx\>8.854\<times\>10<rsup|-12>> SI and
  <math|\<mu\><rsub|0>\<approx\>4*\<pi\>\<times\>10<rsup|-7>> SI and we can
  thus build the impedance <math|Z<rsub|0>=<sqrt|<frac|\<mu\><rsub|0>|\<varepsilon\><rsub|0>>>>
  and rebuild correct data with it.\ 

  For example, the values of magnetic field <math|H<rsub|comp>> need to be
  divided by <math|Z<rsub|0>> in order to be in <math|A.m<rsup|-1>> (and
  multiplied by <math|10<rsup|6>>).

  <subsection|Desired values>

  For the computations, we need some theoretical formula:

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<cal-P\>>|<cell|=>|<cell|<big|oiint><rsub|S><around*|\<langle\>|<wide|\<Pi\>|\<vect\>>|\<rangle\>>\<cdot\><wide|\<mathd\>S|\<vect\>><eq-number>>>|<row|<cell|>|<cell|=>|<cell|<big|oiint><rsub|S><frac|\<Re\><around*|{|<wide|E<rsub|0>|\<vect\>>\<exterior\><wide|H<rsub|0>|\<vect\>>|}>|2>\<cdot\><wide|\<mathd\>S|\<vect\>><eq-number><label|eqP1>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<omega\>|2>*\<Im\><around*|{|<wide|p<rsup|\<ast\>>|\<vect\>>\<cdot\><wide|E|\<vect\>>|}><eq-number><label|eqP2>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|<wide|p|\<vect\>>>|<cell|=>|<cell|p*e<rsup|-i<around*|(|\<omega\>t+\<varphi\><rsub|p>|)>>*<wide|u<rsub|p>|\<vect\>><eq-number>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|\<cal-P\><rsub|0>
    <around*|(|vacuum|)>>|<cell|=>|<cell|<frac|p<rsup|2>|12*\<pi\>>\<times\><frac|\<omega\>|\<varepsilon\>*\<varepsilon\><rsub|0>>*k<rsup|3>;<space|2em>k=<frac|2*\<pi\>|\<lambda\>>=<frac|\<omega\>|c><eq-number>>>|<row|<cell|\<Leftrightarrow\><space|1em>p>|<cell|=>|<cell|<sqrt|<frac|12*\<pi\>*\<varepsilon\>*\<varepsilon\><rsub|0>|\<omega\>*k<rsup|3>>*\<cal-P\><rsub|0>>=<sqrt|<frac|12*\<pi\>*\<varepsilon\>*\<varepsilon\><rsub|0>|c**k<rsup|4>>*\<cal-P\><rsub|0>><eq-number><label|eqnorme>>>|<row|<cell|\<varphi\><rsub|p>>|<cell|=>|<cell|\<varphi\><rsub|E<rsub|0>>+arcsin<around*|(|<frac|2*\<cal-P\>|\<omega\>*E<rsub|0>*p>|)><eq-number><label|eqphase>>>>>
  </eqnarray*>

  We can briefly prove <math|<around*|(|7|)>>:

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<cal-P\>>|<cell|=>|<cell|<frac|\<omega\>|2>*\<Im\><around*|{|<wide|p<rsup|\<ast\>>|\<vect\>>\<cdot\><wide|E|\<vect\>>|}><eq-number>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<omega\>|2>*\<Im\><around*|{|p*E<rsub|0>*e<rsup|i<around*|(|\<omega\>t+\<varphi\><rsub|p>|)>>*e<rsup|-i<around*|(|\<omega\>t+\<varphi\><rsub|E<rsub|0>>|)>>|}>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<omega\>*p*E<rsub|0>|2>*\<Im\><around*|{|*e<rsup|i
    <around*|(|\<varphi\><rsub|p>-\<varphi\><rsub|E<rsub|0>>|)>>|}>>>|<row|<cell|\<cal-P\>>|<cell|=>|<cell|<frac|\<omega\>*p*E<rsub|0>|2>\<times\>sin<around*|(|\<varphi\><rsub|p>-\<varphi\><rsub|E<rsub|0>>|)><eq-number><label|eqP3>>>|<row|<cell|\<Leftrightarrow\><space|1em>sin<around*|(|\<varphi\><rsub|p>-\<varphi\><rsub|E<rsub|0>>|)>>|<cell|=>|<cell|<frac|2*\<cal-P\>|\<omega\>*p*E<rsub|0>>>>|<row|<cell|\<varphi\><rsub|p>>|<cell|=>|<cell|\<varphi\><rsub|E<rsub|0>>+arcsin<around*|(|<frac|2*\<cal-P\>|\<omega\>*E<rsub|0>*p>|)><space|10em><qed>>>>>
  </eqnarray*>

  By the way, an important value is the phase shift
  <math|\<Delta\>\<varphi\>=\<varphi\><rsub|p>-\<varphi\><rsub|E<rsub|0>>>
  which is the only physicaly revelant data (because it is not
  simulation-dependant).

  \;

  Note that the goal will be first to calculate the power from
  <math|<around*|(|2|)>> on each face of the QE and then to build the dipole
  moment <math|<wide|p|\<vect\>>> (norme first then phase) all in the vacuum.

  We can then work with surrounding matter to observe different properties
  and use the quantum relation:

  <\eqnarray*>
    <tformat|<table|<row|<cell|<frac|P|P<rsub|0>>>|<cell|=>|<cell|<frac|\<gamma\>|\<gamma\><rsub|0>><eq-number>>>|<row|<cell|<around*|{|<frac|P<rsub|tot>|P<rsub|0>>=<frac|P<rsub|rad>|P<rsub|0>>+<frac|P<rsub|abs>|P<rsub|0>>|}>>|<cell|\<equiv\>
    >|<cell|<around*|{|<frac|\<gamma\>|\<gamma\><rsub|0>>=<frac|\<gamma\><rsub|rad>|\<gamma\><rsub|0>>+<frac|\<gamma\><rsub|loss>|\<gamma\><rsub|0>>|}><eq-number>>>>>
  </eqnarray*>

  <subsection|Programs details and repository structure>

  We want to end this section by explaining the structure of files and
  programs used throughout this study.\ 

  The simulation can be found in folders named \PVacuumDATA/\P, \PPECDATA\Q,
  \PAuDATA\Q, <text-dots> and <text-dots>

  They contain raw datafiles from the software and are treated in python
  files (names are related to the folders).

  The core algorithm was made with the Vacuum case (simplest) and is slightly
  modified for the other cases.

  \;

  <em|Please for the next results, follow the Python codes provided for
  details, this study will not go deep into the code in order to, willingly,
  shorten this paper.>

  <new-page>

  <section|Results>

  This part will present results and answer some guiding questions to
  understand better QE-related phenomena and FDTD software manipulation.

  <subsection|Vacuum - no material>

  The FDTD measure is made on a simulation by using 6 monitors all around the
  QE in order to get the following values with the program
  <verbatim|Vacuum.py>:

  <\verbatim-code>
    Xbot: P = 0.33 mW

    Xtop: P = 0.33 mW

    Ybot: P = 0.93 mW

    Ytop: P = 0.93 mW

    Zbot: P = 0.93 mW

    Ztop: P = 0.93 mW

    \;

    Total Power: Ptot = 4.398 mW

    Norme of dipole moment: 1.13e-24 \ C m

    \;

    Angle of dipole moment: 9.02\<degree\>

    The other theoretical value is 188.97\<degree\>

    \;

    Reconstruction with first angle 9.02\<degree\>: 4.398 mW == Simulation
    4.398 mW

    Reconstruction with second angle 188.97\<degree\>: 4.398 mW == Simulation
    4.398 mW

    Dephasage: 2.30e-02\<degree\> or 1.80e+02\<degree\>
  </verbatim-code>

  \;

  We build the power on each surface by using eq. (<reference|eqP1>) paying
  attention to <math|<wide|\<mathd\><rsup|2>S|\<vect\>>> orientation
  depending on the surface (should point outside of the structure) and
  recalling that the meshgrid unit is a cell of
  <math|10\<times\>10<space|1em>nm<rsup|2>>.

  Summing on each surface gives the Total Power Emitted by the QE. In the
  vacuum this will be called <math|\<cal-P\><rsub|0>> because there are no
  subsidiary effects.\ 

  Then using eq. (<reference|eqnorme>) we can deduce the norme of the dipole
  moment: <math|p>.\ 

  <em|Nota bene: here, in the formula, <math|\<varepsilon\>=1> due to
  vacuum.>

  \;

  Finally, we can obtain the absolute phase of <math|<wide|p|\<vect\>>> or
  the phase shift <math|\<Delta\>\<varphi\>> from eq. (<reference|eqphase>)
  but another monitor needs to be used in order to obtain the electric field
  value AT QE coordinates: <math|E<rsub|0>>.\ 

  This <math|E<rsub|0>>-field is vectorially oriented in the same way as the
  QE (which oscillating is linearly), so we need to pay attention to this in
  the simulation.

  <\strong>
    Two possible values for <math|\<varphi\><rsub|p>>:
  </strong>

  we know from eq. (<reference|eqphase>) that the phase is obtained from an
  <verbatim|arcsinus>, but mathematically, one <verbatim|arcsin> value is the
  image of 2 angles in the unit circle! The <verbatim|arcsin> function is
  obviousely bijective but only in the segment
  <math|<around*|]|-<frac*|\<pi\>|2>;<frac*|\<pi\>|2>|[>>, so other solutions
  can be obtained by modulus and the unit circle is defined on
  <math|<around*|[|0:2\<pi\>|[>> so two values exist {at least} between
  0-360<math|<rsup|\<circ\>>> linked by a <math|\<pi\>> rad translation.

  Simplest example could be <math|sin<around*|(|\<pi\>|)>=sin<around*|(|0|)>=0>.

  Finally, we can test to rebuild the power by using eq. (<reference|eqP3>)
  and hopefully recover the same value.

  We physically expect a phase shift very low between the electric field and
  the dipole moment, which is verified here for the first phase value. This
  way, we can chose which phase value is the most relevant with respect to
  phase shift!

  \;

  We can conclude by noting, for the next cases that in the vacuum we found a
  power of <math|\<approx\>4.398<space|1em>mW>.

  <subsection|Perfect Electrical Conductor (PEC) cases>

  A PEC is a material that acts like a mirror for waves and we expect to see
  this kind of phenomenon throughout two examples.

  <subsubsection|QE perpendicular to the PEC surface><label|pecgood>

  We set the simulation such that the QE dipole moment is oriented along
  <math|<wide|e<rsub|z>|\<vect\>>> while the PEC is a surface covering the
  <math|x\<nocomma\>O\<nocomma\>y> plan. Actually we set a distance of 20 nm
  between QE and PEC surface.

  The program <verbatim|PEC.py> gives:

  \;

  <\verbatim>
    Radiated Power: Prad = 8.676 mW

    Angle of dipole moment: 90.00\<degree\>

    The other theoretical value is 269.95\<degree\>

    \;

    Reconstruction with first angle 90.00\<degree\>: 8.689 mW == Simulation
    8.676 mW

    Reconstruction with second angle 269.95\<degree\>: -0.384 mW !=
    Simulation 8.676 mW

    Dephasage: 4.81e-02\<degree\> or 1.80e+02\<degree\>

    \;

    Total power: Ptot = 8.689 mW

    \;

    gamma_r/gamma_0 = 1.97

    gamma/gamma_0 = 1.98

    Quantum yield is ~~ 1.00
  </verbatim>

  \;

  In this simulation, we know that theoretically two angles are possible
  mathematically to build the Total Power <math|P<rsub|tot>> but only one
  coincides with the value we had in Vacuum. We thus will select this angle
  as the right one throughout the next programs.\ 

  <em|N.B.> <em|we can also take notice that this angle is also the one for
  which the phase shift (between dipole moment and electric field phases) is
  the lowest. This result reinforces the choice of angle.>

  Also, the Power Radiated <math|P<rsub|rad>=P<rsub|tot>> in this case which
  is completely relevant and \ expected because the PEC should not absorb the
  radiation from QE! We can also notice that the power is twice larger than
  in vacuum. We will discuss this further in Discussion <reference|discPEC>.

  We use relation (10) as such:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|<frac|P<rsub|rad>|P<rsub|0>>=<frac|\<gamma\><rsub|r>|\<gamma\><rsub|0>>>>|<row|<cell|<frac|P<rsub|tot>|P<rsub|0>>=<frac|\<gamma\>|\<gamma\><rsub|0>>>>>>>
  </equation*>

  And we fine almost the same results. We can deduce from (11) that
  <math|<frac|P<rsub|loss>|P<rsub|0>>=<frac|P<rsub|tot>-P<rsub|rad>|P<rsub|0>>=0>
  in this case. As said above, this is expected because PEC is a perfectly
  non-absorbing material.\ 

  Finally, the quantum yielf can be defined as:

  <\equation*>
    q=<frac|\<gamma\><rsub|r>|\<gamma\>>=<frac*|<frac|\<gamma\><rsub|r>|\<gamma\><rsub|0>>|<frac|\<gamma\>|\<gamma\><rsub|0>>>
  </equation*>

  and in this case is obviousely equal to one, <math|q=1>.<new-page>

  <subsubsection|QE parallel to the PEC surface>

  \ We use the same settings as before but we only modify the orientation of
  the dipole moment (of the QE) to be parallel to the PEC surface.\ 

  The program <verbatim|PEC_ex.py> gives:

  \;

  <\verbatim>
    Radiated Power: Prad = 86.232 \<mu\>W

    Angle of dipole moment: 90.00\<degree\>

    Phase shift: 6.77e-04\<degree\>

    \;

    Total power: Ptot = 126.791 \<mu\>W

    \;

    gamma_r/gamma_0 = 0.02

    gamma/gamma_0 = 0.03

    Quantum yield is ~~ 0.68
  </verbatim>

  \;

  So, in this case, the most important information is the fact the total and
  radiated powers are extremely low (1,000 times) compared to previous case.
  This means the PEC destroys some electromagnetic waves? Does it lock the
  quantum field in a more restricted way? We will also answer that in
  Discussion <reference|discPEC>.

  Also, we find in this case very low values of relative decay of
  radiated/total power (<math|\<gamma\><rsub|r>/\<gamma\><rsub|0>> and
  <math|\<gamma\>/\<gamma\><rsub|0>>) but we can still try to compute the
  quantum yield and as expected, it is not one anymore. The yield is of the
  order of 68% which means that the system loses some of its energy in a way
  or another that cannot be retrieved by the user. The computed loss is
  <math|40.559 \<mu\>W> that vanishes.

  \;

  The conclusion we can deduce from these two last experiments is that the
  orientation of the QE greatly impacts the way we can interact with the
  system and should be considered experimentally with care. Moreover, if we
  expect to use a non perfect mirror (which is the only thing possible in
  experiments) we need to take care of the absorbtion of the material AND
  this possible destruction of energy due to orientation. Finally, for
  obvious reasons, the best orientation is to set the dipole moment
  perpendicular to the surface of surrounding material in order to have
  maximum power.

  \;

  <new-page>

  <subsection|Golden surface>

  We take exactly the same settings of simulation as the first PEC
  experiment, see <reference|pecgood>, but we just change the kind of
  material used, here <verbatim|Au> gold, which changes the simulation due to
  different properties of this metal. We know that gold is an excellent
  electrical conductor but it still absorbs some EM radiation as any
  material.

  The program <verbatim|Au.py> gives:

  <\verbatim>
    Radiated Power: Prad = 13.44 mW

    Angle of dipole moment: 90.00\<degree\>

    Phase shift: 1.15e-01\<degree\>

    \;

    Total power: Ptot = 20.69 mW

    \;

    gamma_r/gamma_0 = 3.06

    gamma/gamma_0 = 4.70

    Quantum yield is ~~ 0.65
  </verbatim>

  \;

  We see that the right orientation of QE allows us to recover a decent power
  radiated of the order of 10-20 mW. The relative decays values are 3 to 4
  times greater than 1 which means the decays are far more high than the
  vacuum reference. Finally, the quantum yield is approximately of the order
  of the parallel PEC with 65%. The loss of <math|\<approx\>7 mW> is purely
  absorbed by the gold surface in this case, knowing it is a pretty good
  conductor, we can't expect far better for a metallic surface experimentaly
  and thus need to consider around 35% loss. <new-page>

  <subsection|QE with golden nanoantenna>

  We set at 15nm from the dipole one or two golden antenna which are
  simulated as spheres of 170nm diameter.\ 

  <subsubsection|One antenna>

  Remark: in this case we set the dipole moment along the diameter of the
  sphere (which is an analogy with the perpendicular PEC case).

  The program named <verbatim|Antenum.py> outputs:

  <\verbatim>
    Radiated Power: Prad = 35.05 mW

    Angle of dipole moment: 90.00\<degree\>

    Phase shift: 2.29e-01\<degree\>

    \;

    Total power: Ptot = 41.19 mW

    \;

    gamma_r/gamma_0 = 7.97

    gamma/gamma_0 = 9.37

    Quantum yield is ~~ 0.85
  </verbatim>

  \;

  These results are quite suprising at first because we see that the sphere
  of gold increases the total and radiated power of the QE around the order
  of 35-40 mW; thus, the quantum relative decays are far more important and
  we have a quantum yield of 85% which is more than with a gold surface.

  This means the user, \Pconnecting\Q the golden sphere and using it as a
  receiptor, can access to more power and with less losses. Here the loss if
  <math|\<approx\>6mW> but it gives a ratio of 15% only!\ 

  We indeed understand that experimentally, this kind of setup will be the
  most interesting one because we need to use less (expensive) metal for
  better results.

  <subsubsection|Two antennas>

  In this simulation we will dispose two spheres around the quantum emitter,
  which dipole moment is oriented along the line passing through both
  spheres' centres.

  The program <verbatim|Antenae.py> provides:

  <\verbatim>
    Radiated Power: Prad = 235.78 mW

    Angle of dipole moment: 90.00\<degree\>

    Phase shift: 1.55e+00\<degree\>

    \;

    Total power: Ptot = 257.66 mW

    \;

    gamma_r/gamma_0 = 53.61

    gamma/gamma_0 = 58.59

    Quantum yield is ~~ 0.92
  </verbatim>

  \;

  Supringly, in this case the power is demultiplicated and we find high
  relative decay rates/ power either total or radiated for the lowest losses
  (8%). We can think about it and see it as a resonance between both antenas,
  which is called Purcell Effect. This is finally the most interesting case
  that should be used during experiments in order to recover the most results
  with amplified powers, which is important for low values of power in order
  to be detected.\ 

  <new-page>

  <section|Discussion><label|discPEC>

  The variations observed in radiated and total powers can be interpreted
  through the concept of the <strong|Local Density of States (LDOS)>. The
  LDOS, noted <math|\<rho\><around*|(|<wide|r|\<vect\>>,\<omega\>|)>>,
  represents the number of available electromagnetic modes per unit volume
  and frequency at the emitter position <math|<wide|r|\<vect\>>>. It controls
  the spontaneous emission rate <math|\<Gamma\>>:

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<Gamma\><around*|(|<wide|r|\<vect\>>,\<omega\>|)>>|<cell|=>|<cell|<frac|\<pi\>*\<omega\>|3*\<hbar\>*\<varepsilon\><rsub|0>>*<around*|\||<wide|p|\<vect\>>|\|><rsup|2>*\<rho\><around*|(|<wide|r|\<vect\>>,\<omega\>|)><eq-number>>>>>
  </eqnarray*>

  Thus, any modification of the environment that alters
  <math|\<rho\><around*|(|<wide|r|\<vect\>>,\<omega\>|)>> affects directly
  the emission rate and thus the power and quantum yield of the QE!

  <\itemize>
    <item>Vacuum case:
  </itemize>

  In the free space, the LDOS is uniform and isotropic, leading to a
  reference emission rate <math|\<Gamma\><rsub|0>> and power
  <math|P<rsub|0>>.

  <\itemize>
    <item>PEC surface:
  </itemize>

  For a dipole perpendicular to a \Pperfect mirror\Q, the field reflected by
  the PEC interferes (constructively) with the QE dipole field. This doubles
  the LDOS near the emitter and we find something like
  <math|<frac*|\<rho\>|\<rho\><rsub|0>>\<approx\>2> . This explains the
  observed factor 2 in <math|P<rsub|r>> and the unity quantum yield
  (<math|q\<approx\>1>) expliciting the non-absorption phenomenon using PEC.\ 

  Conversely, when the dipole is parallel to the PEC, there is destructive
  interfences that cancel local modes leading to extremely weak emission of
  the QE.\ 

  <\itemize>
    <item>Gold case:
  </itemize>

  Here the material is absorbant which is seen with a quantum yield around
  0.65. The LDOS description here can be seen as the Joule effect heating
  (from absoprtion) that corresponds to excitation of non-radiative LDOS
  modes.

  <\itemize>
    <item>Nanoantennas:
  </itemize>

  These kind of contraption creates a strong local field confinement and
  resonance phenomenon of the LDOS. With one antenna, the LDOS and emission
  rate increase by on order of magnitude; with two antennas, the coupliung
  between LDOS modes produces a resonant cavity boosting effectively the
  emission.

  \;

  Overall, the results confirm that the spontaneous emission rate of a QSE is
  not an intrisic property of the emitter but depends highly on the
  configuration of its surrounding. The goal can be seen as the optimization
  of the environment in order to boost the LDOS (mirros structures, resonant
  cavities, etc.) and try to reduce absorption (depends on the material used)
  and reduce destructive interference. wri

  \;

  <new-page>

  <section|Conclusion>

  \;

  \ \ All the results we described in 3. Results are summed up in the
  following table:

  <\big-table*|<tabular|<tformat|<table|<row|<cell|<block*|<tformat|<cwith|1|-1|2|2|cell-background|pastel
  grey>|<cwith|1|-1|4|4|cell-background|pastel
  grey>|<cwith|1|-1|6|6|cell-background|pastel
  grey>|<cwith|1|-1|3|3|cell-background|#f0f0f0>|<cwith|1|-1|5|5|cell-background|#f0f0f0>|<cwith|1|-1|7|7|cell-background|#f0f0f0>|<table|<row|<cell|<math|cases\\values
  of interest>>|<cell|<math|P<rsub|rad>>>|<cell|<math|P<rsub|loss>>>|<cell|<math|P<rsub|tot>>>|<cell|<math|<frac*|\<gamma\><rsub|r>|\<gamma\><rsub|0>>>>|<cell|<math|<frac*|\<gamma\><rsub|>|\<gamma\><rsub|0>>>>|<cell|<math|q>>>|<row|<cell|Vacuum>|<cell|4.40
  mW>|<cell|0>|<cell|4.40 mW>|<cell|N/A>|<cell|N/A>|<cell|N/A>>|<row|<cell|PEC
  <math|\<perp\>> surface>|<cell|8.68 mW>|<cell|13.0
  <math|\<mu\>>W>|<cell|8.69 mW>|<cell|1.97>|<cell|1.98>|<cell|100%>>|<row|<cell|PEC
  <math|//> surface>|<cell|86.23 <math|\<mu\>>W>|<cell|40.56
  <math|\<mu\>>W>|<cell|126.79 <math|\<mu\>>W>|<cell|0.02>|<cell|0.03>|<cell|68%>>|<row|<cell|<verbatim|Au>
  surface>|<cell|13.44 mW>|<cell|7.25 mW>|<cell|20.69
  mW>|<cell|3.06>|<cell|4.70>|<cell|65%>>|<row|<cell|<verbatim|Au>
  antena>|<cell|35.05 mW>|<cell|6.14 mW>|<cell|41.19
  mW>|<cell|7.97>|<cell|9.37>|<cell|85%>>|<row|<cell|2 <verbatim|Au>
  antennas>|<cell|235.78 mW>|<cell|21.88 mW>|<cell|257.66
  mW>|<cell|53.61>|<cell|58.59>|<cell|92%>>>>>>>>>>>
    Summing up all results of simulations
  </big-table*>

  \;

  Through different simulated environments used in this paper, we have shown
  that the emission of a QE depends strongly on its surroundings. The PEC
  case highlighted interference efefcts and orientation dependance between QE
  dipole and the environment. The gold surface however introduced absorption
  losses and the nanoantennas, by contrast, produced a strong enhancement of
  the radiated power (which can be explained with LDOS
  amplification/coupling).

  These results confirm that the spontaneous emission rate is not dependant
  solely on the QE but is dependant also on the electromagnetic environment.
  Optimizing the environment \U by controlling materials, distances,
  orientations, etc. \U is the key to improve light-matter interaction in
  practical quantum / nanophotonic systems.

  <section*|Bibliography>

  The following references have been used to apprehend the subject and where
  skimmed through and not very well developped, to barely have the keys to
  understand how to treat this subject. \ 

  <\itemize>
    <item>L. Novotny and B. Hecht, <em|Principles of Nano-Optics>, 2nd ed.,
    Cambridge University Press, 2012.

    <math|\<Rightarrow\>> Used to understand LDOS mainly

    <item>E. M. Purcell, \PSpontaneous Emission Probabilities at Radio
    Frequencies,\Q <em|Physical Review>, vol. 69, p. 681, 1946.

    <math|\<Rightarrow\>> Purcell effect - link between emission rate to the
    photonic environment

    <item>T. H. Taminiau, F. D. Stefani, and N. F. van Hulst, \POptical
    Nanorod Antennas as Tunable Enhancers of Single-Molecule Emission,\Q
    <em|Nano Letters>, vol. 11, pp. 1020\U1024, 2011.

    <math|\<Rightarrow\>> plasmonic nanoantennas enhancing quantum emission
  </itemize>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|3.2.2|7>>
    <associate|auto-11|<tuple|3.3|8>>
    <associate|auto-12|<tuple|3.4|9>>
    <associate|auto-13|<tuple|3.4.1|9>>
    <associate|auto-14|<tuple|3.4.2|9>>
    <associate|auto-15|<tuple|4|10>>
    <associate|auto-16|<tuple|5|11>>
    <associate|auto-17|<tuple|5|11>>
    <associate|auto-18|<tuple|5|11>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|2.1|3>>
    <associate|auto-4|<tuple|2.2|3>>
    <associate|auto-5|<tuple|2.3|4>>
    <associate|auto-6|<tuple|3|5>>
    <associate|auto-7|<tuple|3.1|5>>
    <associate|auto-8|<tuple|3.2|6>>
    <associate|auto-9|<tuple|3.2.1|6>>
    <associate|discPEC|<tuple|4|10>>
    <associate|eqP1|<tuple|2|3>>
    <associate|eqP2|<tuple|3|3>>
    <associate|eqP3|<tuple|9|3>>
    <associate|eqnorme|<tuple|6|3>>
    <associate|eqphase|<tuple|7|3>>
    <associate|lipsum|<tuple|1|2>>
    <associate|pecgood|<tuple|3.2.1|6>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|table>
      <\tuple|normal>
        Summing up all results of simulations
      </tuple|<pageref|auto-17>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Material
      & Methods> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Software and units system
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Desired values
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Programs details and
      repository structure <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Results>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Vacuum - no material
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Perfect Electrical Conductor
      (PEC) cases <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|2tab>|3.2.1<space|2spc>QE perpendicular to the
      PEC surface <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|2tab>|3.2.2<space|2spc>QE parallel to the PEC
      surface <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Golden surface
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|3.4<space|2spc>QE with golden nanoantenna
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|2tab>|3.4.1<space|2spc>One antenna
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|2tab>|3.4.2<space|2spc>Two antennas
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Discussion>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Conclusion>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>