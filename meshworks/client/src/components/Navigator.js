import React from "react";
import "@google/model-viewer";

import {
  Menu,
  Header,
  Container,
  Button,
  Search,
  Icon,
  Grid,
  Image,
} from "semantic-ui-react";
import { Link } from "react-router-dom";

const Navigator = () => {
  return (
    <div>
      <Menu borderless fixed="top" inverted>
        <Menu.Item>
          <Header primary weight="900">
            {" "}
            Meshworks{" "}
          </Header>
        </Menu.Item>
        <Menu.Menu position="right">
          <Menu.Item>
            <Button primary animated="vertical" as={Link} to="/upload">
              <Button.Content visible> UPLOAD </Button.Content>
              <Button.Content hidden>
                {" "}
                <Icon name="arrow alternate circle up outline" />{" "}
              </Button.Content>
            </Button>
          </Menu.Item>
          <Menu.Item>
            <Button as={Link} to="/tests">
              Testpage
            </Button>
          </Menu.Item>
          <Menu.Item>
            <Button as={Link} to="/theming">
              Theme Review
            </Button>
          </Menu.Item>
          <Menu.Item>
            <Search />
          </Menu.Item>
        </Menu.Menu>
      </Menu>
      <Container text style={{ marginTop: "7em" }}>
        This will be the feed.
        <model-viewer
          src="shared-assets/models/cube.glb"
          alt="A 3D model of an astronaut"
          auto-rotate
          camera-controls
        ></model-viewer>
        <model-viewer
          src="third_party/Astronaut/Astronaut.glb"
          alt="A 3D model of an astronaut"
          auto-rotate
          camera-controls
        ></model-viewer>
      </Container>
    </div>
  );
};

export default Navigator;
