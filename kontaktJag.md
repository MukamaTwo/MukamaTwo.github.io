---
layout: archive
title: Kontakt
permalink: /kontakt/
---
<div>
  <form id="kontaktForm" action="https://getsimpleform.com/messages?form_api_token=7a21bc139ac802871a6211d11627f49f" method="POST">
    <table style="width:500px">
        <tr>
            <td style="width:100px">
              Subjekt:
            </td>
            <td>
              <input type="text" name="_subject" value="Om bloggen!"/>
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
              <input type="email" name="_replyto" required>
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
    <input type='hidden' name='redirect_to' value="{{ site.url }}/tackar/">
  </form>
</div>
