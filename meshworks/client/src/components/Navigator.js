import React from "react";
import "@google/model-viewer";

import {
  Menu,
  Header,
  Container,
  Button,
  Search,
  Icon,
  Image,
} from "semantic-ui-react";
import { Link } from "react-router-dom";

const Navigator = () => {
  return (
    <div>
        <Menu borderless fixed='top' inverted>
          <Menu.Item>
            <Header as={Link} to ="/" className="logo" weight='900'> MESHWORKS! </Header>
          </Menu.Item>
          <Menu.Menu position='right'>
              <Menu.Item>
                <Button primary animated='vertical' as={Link} to="/upload">
                  <Button.Content visible> UPLOAD </Button.Content>
                  <Button.Content hidden> <Icon name='arrow alternate circle up outline'/> </Button.Content>
                </Button>
              </Menu.Item>
              <Menu.Item>
                <Button as={Link} to="/mesh">Meshes</Button>
              </Menu.Item>
              <Menu.Item>
                <Button as={Link} to="/tests">Testpage</Button>
              </Menu.Item>
              <Menu.Item>
                <Button as={Link} to="/theming">Theme</Button>
              </Menu.Item>
              <Menu.Item>
                <Search />
              </Menu.Item>
          </Menu.Menu>
        </Menu>
    </div>
  );
};

export default Navigator;
