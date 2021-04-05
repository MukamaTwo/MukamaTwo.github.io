---
layout: archive
permalink: /
---
<!--
Depracated FB api
![Josefsson](https://graph.facebook.com/100003338227386/picture?type=large)
-->
<img src="../images/bio-160x160.jpg" alt="Josefsson" />

Min krönika "[att lära sig språket](https://pdf-flip.se/Vart_Malmo/2021/Vart_Malmo_nr2_2021/15/)" publicerades i tidningen Vårt Malmö (202102 sida 15).

Håll koll på den nya utvecklingen på Josefssons <span style="color: #0000FF">[beroendeframkallande](https://mukama.design.blog/){:target="_blank"}</span> inlägg på wordpress.

<div id="pg_container">
  <div id="first">
    <h2>Senaste inläggen</h2>
    {% for post in site.posts %}
      {% include post-list.html %}
    {% endfor %}
  </div>
  <div id="second">
    <h2>Lite om b.l.o.g.g.e.n.</h2>
Denna är en 'personlig' blogg om det som händer runt mig och ibland om mig. Jag skriver mest korta inläggen om dagliga upplevelser.

Bloggens huvudmålet är att träna svenska. Man lär sig mer när man skriver, läser, hör och pratar.
Jag ber om ursäkt om det finns <br>
&nbsp;&nbsp;&nbsp;&nbsp; <i>många <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;små <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fel <br>
men men men...</i> du vet ju att innan jag kunde promenera, jag kröp!<br><br>

Flera år framöver vill jag titta tillbaka och skratta om mina dåliga stavningar och grammatik.

Njut av hur jag blanda mina upplevelser och händelser med fantasi och du kommer aldrig att vara densamma igen. Nu kör vi!
  </div>
  <div id="clear">
    <br><br>
    {% include rss-feedburner.html %}
  </div>
</div><!-- /.tiles -->
