import React from 'react';
import {List} from 'semantic-ui-react'

const ListItem = ({ items, deleteItem }) => {
  console.log('items:', items);

  return (
    <List>
      {
        items && items.length > 0
          ? (
            items.map(item => {
              return (
                <List.Item >
                  <List.Icon name='angle right'/>
                  <List.Content key={item._id} onClick={() => deleteItem(item._id)}>
                    {item.name}
                  </List.Content>
                </List.Item>
              )
            })
          )
          : (<li>No items uploaded</li>)
      }
    </List>
  )
}

export default ListItem;
