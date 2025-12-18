<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Poynting non-linear
  lemma>|<doc-author|<author-data|<author-name|Jules STEVENOT>>>>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<wide|\<Pi\>|\<vect\>>>|<cell|=>|<cell|<wide|E|\<vect\>>\<exterior\><wide|H|\<vect\>><eq-number>>>|<row|<cell|>|<cell|=>|<cell|<frac|<wide|E|\<vect\>>+<wide|E<rsup|\<ast\>>|\<vect\>>|2>\<exterior\><frac|<wide|H|\<vect\>>+<wide|H<rsup|\<ast\>>|\<vect\>>|2><eq-number>>>>>
  </eqnarray*>

  Indeed, <math|\<forall\>z\<in\>\<bbb-C\>;\<exists\><around*|(|a,b|)>\<in\>*\<bbb-R\><rsup|2>\|z=a+i*b>
  and thus <math|<frac|z+<wide|z|\<bar\>>|2>=<frac|a+i*b+a-i*b|2>=a=\<Re\><around*|(|z|)>>

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<Leftrightarrow\>\<space\>**4*<wide|\<Pi\>|\<vect\>>>|<cell|=>|<cell|<wide|E|\<vect\>>\<exterior\><wide|H|\<vect\>>+<wide|E|\<vect\>>\<wedge\><wide|H<rsup|\<ast\>>|\<vect\>>+<wide|E<rsup|\<ast\>>|\<vect\>>\<exterior\><wide|H|\<vect\>>+<wide|E<rsup|\<ast\>>|\<vect\>>\<wedge\><wide|H<rsup|\<ast\>>|\<vect\>><eq-number>>>>>
  </eqnarray*>

  Note: <math|<wide|X|\<vect\>>=<wide|E|\<vect\>> or <wide|H|\<vect\>>> by
  definition, <math|<wide|X|\<vect\>>=<wide|X<rsub|0>|\<vect\>>*e<rsup|-i\<omega\>*t>>
  such that,

  <\eqnarray*>
    <tformat|<table|<row|<cell|4*<wide|\<Pi\>|\<vect\>>>|<cell|=>|<cell|<around*|(|<wide|E<rsub|0>|\<vect\>>\<exterior\><wide|H<rsub|0>|\<vect\>>|)>e<rsup|-2\<omega\>*t>+<wide|E<rsub|0>|\<vect\>>\<exterior\><wide|H<rsub|0><rsup|\<ast\>>|\<vect\>>+<wide|E<rsub|0><rsup|\<ast\>>|\<vect\>>\<exterior\><wide|H<rsub|0>|\<vect\>>+<around*|(|<wide|E<rsub|0><rsup|\<ast\>>|\<vect\>>\<exterior\><wide|H<rsub|0><rsup|\<ast\>>|\<vect\>>|)>e<rsup|2\<omega\>*t><eq-number>>>>>
  </eqnarray*>

  And by doing an average over time:

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|\<langle\>|<wide|\<Pi\>|\<vect\>>|\<rangle\>>>|<cell|=>|<cell|<frac|1|4><around*|(|<wide|E<rsub|0>|\<vect\>>\<exterior\><wide|H<rsub|0><rsup|\<ast\>>|\<vect\>>+<wide|E<rsub|0><rsup|\<ast\>>|\<vect\>>\<exterior\><wide|H<rsub|0>|\<vect\>>|)><eq-number>>>>>
  </eqnarray*>

  Note that <math|z+<wide|z|\<bar\>>=a+i*b+a-i*b=2*a=2*\<Re\><around*|(|z|)>>

  Thus, we proved that,

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|\<langle\>|<wide|\<Pi\>|\<vect\>>|\<rangle\>>>|<cell|=>|<cell|<frac|\<Re\><around*|(|<wide|E<rsub|0><rsup|\<ast\>>|\<vect\>>\<exterior\><wide|H<rsub|0><rsup|\<ast\>>|\<vect\>>|)>|2><eq-number>>>>>
  </eqnarray*>

  And we can define the power <math|\<cal-P\>> by:

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<cal-P\>>|<cell|=>|<cell|<big|oiint><rsub|S><around*|\<langle\>|<wide|\<Pi\>|\<vect\>>|\<rangle\>>\<cdot\><wide|\<mathd\><rsup|2>S|\<vect\>><eq-number>>>>>
  </eqnarray*>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>