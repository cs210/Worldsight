import React, {Component} from 'react';

import {Header, Input} from 'semantic-ui-react';

class EmailSenderTest extends Component {


  sendEmail = () => {
      // var Email = { send: function (a) { return new Promise(function (n, e) { a.nocache = Math.floor(1e6 * Math.random() + 1), a.Action = "Send"; var t = JSON.stringify(a); Email.ajaxPost("https://smtpjs.com/v3/smtpjs.aspx?", t, function (e) { n(e) }) }) }, ajaxPost: function (e, n, t) { var a = Email.createCORSRequest("POST", e); a.setRequestHeader("Content-type", "application/x-www-form-urlencoded"), a.onload = function () { var e = a.responseText; null != t && t(e) }, a.send(n) }, ajax: function (e, n) { var t = Email.createCORSRequest("GET", e); t.onload = function () { var e = t.responseText; null != n && n(e) }, t.send() }, createCORSRequest: function (e, n) { var t = new XMLHttpRequest; return "withCredentials" in t ? t.open(e, n, !0) : "undefined" != typeof XDomainRequest ? (t = new XDomainRequest).open(e, n) : t = null, t } };

      // Email.send({
      // Host: "smtp.gmail.com",
      // Username : "worldsightvr@gmail.com",
      // Password : "worldsightcs210",
      // To : 'aakanksha.j.saxena@gmail.com',
      // From : "worldsightvr@gmail.com",
      // Subject : "Testing",
      // Body : "Testin",
      // }).then(
      //   message => alert("mail sent successfully")
      // );
  }

  render() {
    return (
      <div>
      <Header as='h1'> Send Email Test </Header>
      <Input
        action={{
          onClick: this.sendEmail,
          color: 'primary',
          actionPosition: 'right',
          content: 'Send Email',
        }}
        defaultValue='worldsightvr@gmail.com'
      />
      </div>
    )
  }
}

export default EmailSenderTest;
