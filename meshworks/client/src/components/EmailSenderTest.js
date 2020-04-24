import React, {Component} from 'react';

import {Header, Input} from 'semantic-ui-react';

class EmailSenderTest extends Component {


  sendEmail = () => {
    // Do something
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
