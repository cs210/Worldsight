import React, {Component} from 'react';

import {Header, Input} from 'semantic-ui-react';
import emailjs from 'emailjs-com';

const service_id = "gmail";
const user_id = "user_GPvH16KTRm7olTHDX1cdy"
const template_id = "template_jPWa5xhn";

class EmailSenderTest extends Component {

  state = {
    email: ""
  }

  handleChange = (e) => {
    this.setState({
      email: e.target.value
    });
  }

  sendEmail = () => {
    var template_params = {
     "reply_to": this.state.email,
    }
    emailjs.send(service_id, template_id, template_params, user_id)
  }

  render() {

    return (
      <div>
      <Header as='h1'> Send Email Test </Header>
      <Input
        onChange={this.handleChange}
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
