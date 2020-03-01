---
layout: archive
title: Kontakt
permalink: /kontakt/
---
<div>
  <form id="kontaktForm" action="{{ site.url }}/php/sendmail.php" method="POST" onsubmit="formSubmited()">
    <table style="width:500px">
        <tr>
            <td style="width:100px">
              Subjekt:
            </td>
            <td>
              <input type="text" name="subject" value="Om bloggen!"/>
            </td>
        </tr>
        <tr>
            <td>
              Namn:
            </td>
            <td>
              <input type="text" name="nameTo" required>
            </td>
        </tr>
        <tr>
            <td>
              Epost:
            </td>
            <td>
              <input type="email" name="replyto" required>
            </td>
        </tr>
        <tr>
            <td style="vertical-align:top">
              Meddelande:
            </td>
            <td>
              <textarea name="message" rows="10" required></textarea>
            </td>
        </tr>
        <tr>
            <td> &nbsp;
            </td>
            <td>
                <input type="submit" value="Send">
            </td>
        </tr>
    </table>
    <input type="hidden" name="_next" value="/">
  </form>
</div>
