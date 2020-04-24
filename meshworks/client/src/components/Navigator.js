import React from 'react';
import Uploader from './Uploader'
import {Menu, Header, Container, Button, Search} from 'semantic-ui-react'
import {Link} from "react-router-dom"

const Navigator = () => {
  return (
    <div>
      <Menu borderless fixed='top' inverted>
        <Menu.Item>
          <Header size='huge' color='blue'> Meshworks </Header>
        </Menu.Item>
        <Menu.Menu position='right'>
            <Menu.Item>
              <Button primary as={Link} to="/upload">Upload</Button>
            </Menu.Item>
            <Menu.Item>
              <Button secondary as={Link} to="/tests">Testpage</Button>
            </Menu.Item>
            <Menu.Item>
              <Search />
            </Menu.Item>
        </Menu.Menu>
      </Menu>
      <Container text style={{ marginTop: '7em' }}>
        This will be the feed.
      </Container>

    </div>
  )
}

export default Navigator;
