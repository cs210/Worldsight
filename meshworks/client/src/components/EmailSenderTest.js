import React, {Component} from 'react';

import {Header, Input} from 'semantic-ui-react';
import emailjs from 'emailjs-com';

class EmailSenderTest extends Component {

  render() {

    var service_id = "gmail";
    var user_id = "user_GPvH16KTRm7olTHDX1cdy"
    var template_id = "template_jPWa5xhn";
    var template_params = {
     "reply_to": "worldsightvr@gmail.com",
    }

    return (
      <div>
      <Header as='h1'> Send Email Test </Header>
      <Input
        action={{
          onClick: emailjs.send(service_id, template_id, template_params, user_id),
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
