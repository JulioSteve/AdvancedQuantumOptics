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
    \;
  </table-of-contents>

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
    <tformat|<table|<row|<cell|\<cal-P\>>|<cell|=>|<cell|<big|oiint><rsub|S><around*|\<langle\>|<wide|\<Pi\>|\<vect\>>|\<rangle\>>\<cdot\><wide|\<mathd\>S|\<vect\>><eq-number>>>|<row|<cell|>|<cell|=>|<cell|<big|oiint><rsub|S><frac|\<Re\><around*|{|<wide|E<rsub|0>|\<vect\>>\<exterior\><wide|H<rsub|0>|\<vect\>>|}>|2>\<cdot\><wide|\<mathd\>S|\<vect\>><eq-number>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<omega\>|2>*\<Im\><around*|{|<wide|p<rsup|\<ast\>>|\<vect\>>\<cdot\><wide|E|\<vect\>>|}><eq-number>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|<wide|p|\<vect\>>>|<cell|=>|<cell|p*e<rsup|-i<around*|(|\<omega\>t+\<varphi\><rsub|p>|)>>*<wide|u<rsub|p>|\<vect\>><eq-number>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|\<cal-P\><rsub|0>
    <around*|(|vacuum|)>>|<cell|=>|<cell|<frac|p<rsup|2>|12*\<pi\>>\<times\><frac|\<omega\>|\<varepsilon\>*\<varepsilon\><rsub|0>>*k<rsup|3>;<space|2em>k=<frac|2*\<pi\>|\<lambda\>>=<frac|\<omega\>|c><eq-number>>>|<row|<cell|\<Leftrightarrow\><space|1em>p>|<cell|=>|<cell|<sqrt|<frac|12*\<pi\>*\<varepsilon\>*\<varepsilon\><rsub|0>|\<omega\>*k<rsup|3>>*\<cal-P\><rsub|0>><eq-number>>>|<row|<cell|\<varphi\><rsub|p>>|<cell|=>|<cell|\<varphi\><rsub|E<rsub|0>>+arcsin<around*|(|<frac|2*\<cal-P\>|\<omega\>*E<rsub|0>*p>|)><eq-number>>>>>
  </eqnarray*>

  We can briefly prove <math|<around*|(|7|)>>:

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<cal-P\>>|<cell|=>|<cell|<frac|\<omega\>|2>*\<Im\><around*|{|<wide|p<rsup|\<ast\>>|\<vect\>>\<cdot\><wide|E|\<vect\>>|}><eq-number>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<omega\>|2>*\<Im\><around*|{|p*E<rsub|0>*e<rsup|i<around*|(|\<omega\>t+\<varphi\><rsub|p>|)>>*e<rsup|-i<around*|(|\<omega\>t+\<varphi\><rsub|E<rsub|0>>|)>>|}>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<omega\>*p*E<rsub|0>|2>*\<Im\><around*|{|*e<rsup|i
    <around*|(|\<varphi\><rsub|p>-\<varphi\><rsub|E<rsub|0>>|)>>|}>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<omega\>*p*E<rsub|0>|2>\<times\>sin<around*|(|\<varphi\><rsub|p>-\<varphi\><rsub|E<rsub|0>>|)>>>|<row|<cell|\<Leftrightarrow\><space|1em>sin<around*|(|\<varphi\><rsub|p>-\<varphi\><rsub|E<rsub|0>>|)>>|<cell|=>|<cell|<frac|2*\<cal-P\>|\<omega\>*p*E<rsub|0>>>>|<row|<cell|\<varphi\><rsub|p>>|<cell|=>|<cell|\<varphi\><rsub|E<rsub|0>>+arcsin<around*|(|<frac|2*\<cal-P\>|\<omega\>*E<rsub|0>*p>|)><space|10em><qed>>>>>
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

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|2|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-2|<tuple|1.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-3|<tuple|1.2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Material
      & Methods> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>