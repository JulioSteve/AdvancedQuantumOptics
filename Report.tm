<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<\doc-title>
    Advanced Quantum Optics:

    Quantum Emitter (QE) simulation with FDTD
  </doc-title>|<doc-author|<author-data|<author-name|Jules
  STEVENOT>|<\author-affiliation>
    September 2025
  </author-affiliation>>>>

  <abstract-data|<\abstract>
    We will conduct in this paper a brief report of a practical work about
    the simulation of a QE in various environments using FDTD software named
    RSoft CAD Environment<math|<rsup|<tiny|TM>>>. This work is firstly made
    as a first touch about FDTD simulation and QE study for M2 Physics
    students.

    The work consists in three different parts with different environment,
    firstly in Vacuum, then in air with a rectangular cuboid (PEC or gold
    material) interaction and lastly with (golden) plasmonic nano-antenna
    interaction.\ 
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
  </table-of-contents>

  <new-page>

  <section|Introduction>

  <label|lipsum>

  <\strong>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed
    sagittis justo. Proin dignissim lacus enim, id bibendum lorem blandit eu.
    Morbi condimentum urna vel justo efficitur, ut tincidunt augue aliquam.
    Pellentesque ut enim neque. Nullam porta ex nec neque semper, ac
    fringilla risus porttitor. Proin vestibulum nulla vitae augue mattis
    mollis. Curabitur a condimentum leo. Curabitur mollis tincidunt metus id
    euismod. Mauris quis mollis ante. Curabitur sit amet nisl vel nunc
    dapibus semper. Proin ut augue quis augue fringilla pulvinar. Duis turpis
    est, sagittis eget efficitur tincidunt, finibus ac sem.

    Sed lobortis felis ut tortor sodales ultricies. Duis egestas, felis eu
    euismod tempor, neque orci ullamcorper metus, sed commodo nisi libero
    vitae quam. In ac nunc at turpis ornare imperdiet eget porttitor mauris.
    Integer eros diam, maximus porttitor felis et, ullamcorper lobortis
    ipsum. Etiam vel nisl placerat, elementum ante eu, volutpat mauris. Donec
    tristique posuere porttitor. Nullam eu nulla eget felis volutpat
    fermentum. Nulla ac iaculis libero, in tempus mi. Vivamus sit amet libero
    vitae nisl facilisis dapibus tempor eget orci. Cras eu enim diam.
    Vestibulum elementum erat eget tincidunt scelerisque.

    Sed sagittis luctus turpis vitae fringilla. Pellentesque risus erat,
    suscipit id velit a, finibus feugiat orci. Donec finibus rhoncus neque,
    in commodo magna. Pellentesque ut efficitur purus. Curabitur et felis sed
    felis dapibus fermentum. Sed non dictum diam. Etiam sed finibus velit,
    vitae vestibulum neque. Integer dui arcu, dictum quis dui sed, convallis
    consectetur metus. Sed ut tempus metus. Aenean efficitur pretium justo
    quis iaculis. Duis lacinia, eros at iaculis dapibus, risus tellus
    convallis nisl, eget pellentesque tellus velit sed ex. Nam finibus mollis
    ligula id consectetur.

    Vestibulum consectetur enim vel quam tempus interdum. Cras eu erat nec
    nulla facilisis bibendum at quis risus. Curabitur et porta enim, in
    pulvinar ex. Cras nec felis in odio egestas congue. Nam id fringilla
    quam, gravida vehicula ante. Praesent placerat nec lacus quis malesuada.
    Interdum et malesuada fames ac ante ipsum primis in faucibus.

    Nullam nec nisl ut dui vulputate venenatis a gravida risus. Aliquam
    pretium neque massa, eu tempus massa consectetur ac. Aliquam interdum
    odio sed tortor iaculis, in bibendum arcu convallis. Proin pretium
    dapibus pharetra. Fusce elit tellus, scelerisque at volutpat at,
    consectetur vitae tellus. Vivamus sit amet lectus pharetra, fermentum
    erat et, lacinia turpis. Phasellus viverra enim vitae libero rhoncus, sed
    ultricies nisi tristique. Aliquam erat volutpat. Sed erat lacus, tempus
    eget ultrices sit amet, pretium id eros. Phasellus venenatis, odio in
    elementum vestibulum, ipsum velit pulvinar arcu, tempor tempor sem turpis
    vel sem. Quisque dui nibh, luctus ut dolor varius, malesuada fringilla
    orci. Integer vel egestas lorem, eget rhoncus ipsum. Nunc egestas iaculis
    ipsum, ornare finibus ipsum. Mauris congue dictum orci, sed suscipit sem
    tincidunt sit amet.

    \;
  </strong>

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
  details, this study will not go deep into the code for willingly shorten
  this paper.>

  <new-page>

  <section|Results>

  This part will present results and answer some guiding questions to
  understand better QE-related phenomena and FDTD software manipulation.

  <subsection|Vacuum - no material>

  The FDTD measure is made on a simulation by using 6 monitors all around the
  QE in order to get the following values:

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

  <subsection|Perfect Electrical Conductor (PEC) case>

  \;

  <new-page>

  <section|(brief) Discussion>

  \;

  <new-page>

  <section|Conclusion>

  \;

  \ \ 
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|5|?>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|2.1|3>>
    <associate|auto-4|<tuple|2.2|3>>
    <associate|auto-5|<tuple|2.3|4>>
    <associate|auto-6|<tuple|3|5>>
    <associate|auto-7|<tuple|3.1|5>>
    <associate|auto-8|<tuple|3.2|?>>
    <associate|auto-9|<tuple|4|?>>
    <associate|eqP1|<tuple|2|3>>
    <associate|eqP2|<tuple|3|3>>
    <associate|eqP3|<tuple|9|?>>
    <associate|eqnorme|<tuple|6|3>>
    <associate|eqphase|<tuple|7|3>>
    <associate|lipsum|<tuple|1|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
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
    </associate>
  </collection>
</auxiliary>