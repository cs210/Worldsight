import React, {useState, useEffect} from 'react';
import axios from 'axios';
import dynamic from 'next/dynamic';
import { useRouter } from 'next/router'

import {Container, Grid, Header} from 'semantic-ui-react';

const DynamicModelViewer = dynamic(
  () => import('../../components/ModelViewer.js'),
  { ssr: false }
)

// Using react hooks because next/router's useRouter only supports hooks.
// Refer to this doc for using hooks instead of classes:
// https://reactjs.org/docs/hooks-effect.html
export default function MeshPage ({children, href}) {
  const router = useRouter();
  const { id } = router.query;
  const [item, setItem] = useState({tags: [],});
  const [creationDate, setCreationDate] = useState('');
  const tagElements = item.tags.map((tag) =>
    <a className="ui tag label">{tag}</a>
  );

  async function fetchItem(id) {
    axios.get(`/api/items/${id}`)
      .then(res => {
        if(res.data){
          setItem(res.data);
        }
      })
      .catch(err => console.log(err))
  }


  useEffect(() => {
    fetchItem(id);
    if (item.createdAt) setCreationDate(item.createdAt.substring(0, 10));
  });

    return (
      <Grid divided='vertically'>
        <Grid.Row columns={2}>
          <Grid.Column textAlign='right'>
            <Header as='h1'> {item.name} </Header>
            <Container>
              <Header as='h3'> Mesh generated in </Header>
              {creationDate}
            </Container>
            {tagElements}
          </Grid.Column>
          <Grid.Column>
            <Container>
              <DynamicModelViewer />
            </Container>
          </Grid.Column>
        </Grid.Row>
      </Grid>

    )
}
