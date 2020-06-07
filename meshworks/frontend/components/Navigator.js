import React from "react";
import {
  Menu,
  Header,
  Button,
  Search,
  Icon,
} from "semantic-ui-react";
import { useRouter } from 'next/router'
import Link from 'next/link';

// The _id field of an item instance in the database,
// that will be used as a test to render this scene.
const testItemID = '5ed0e67611d9284f63e74984';

const Navigator = () => {
  const router = useRouter();

  let uploadMenu = router.pathname === '/upload' ? <div/>:
    <Menu.Item>
      <Link href="/upload">
        <Button primary animated="vertical">
          <Button.Content visible> UPLOAD! </Button.Content>
          <Button.Content hidden>
            {" "}
            <Icon name="arrow alternate circle up outline" />{" "}
          </Button.Content>
        </Button>
      </Link>
    </Menu.Item>

  let browseMenu = router.pathname === '/' ? <div/>:
    <Menu.Item>
      <Link href='/'>
        <Button>
          Browse
        </Button>
      </Link>
    </Menu.Item>


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
          {uploadMenu}
          {browseMenu}
          <Menu.Item>
            <Link href='/about'>
              <Button>
                About
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
