import React from "react";
import {
  Menu,
  Header,
  Button,
  Search,
  Icon,
} from "semantic-ui-react";
import Link from 'next/link';

// The _id field of an item instance in the database,
// that will be used as a test to render this scene.
const testItemID = '5ec2a96aeb559d151d5afefa';

const Navigator = () => {
  return (
    <div>
      <Menu borderless fixed="top" inverted>
        <Menu.Item>
          <Link href="/">
            <Header className="logo" weight="900">
              {" "}
              MESHWORKS!{" "}
            </Header>
          </Link>
        </Menu.Item>
        <Menu.Menu position="right">
          <Menu.Item>
            <Link href="/upload">
              <Button primary animated="vertical">
                <Button.Content visible> UPLOAD </Button.Content>
                <Button.Content hidden>
                  {" "}
                  <Icon name="arrow alternate circle up outline" />{" "}
                </Button.Content>
              </Button>
            </Link>
          </Menu.Item>
          <Menu.Item>
            <Link href={'/mesh/' + testItemID}>
              <Button>
                Meshes
              </Button>
            </Link>
          </Menu.Item>
          <Menu.Item>
            <Link href="/theming">
              <Button>
                Theme
              </Button>
            </Link>
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
