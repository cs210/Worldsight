import React from 'react';
import {List} from 'semantic-ui-react'

const ListTodo = ({ todos, deleteTodo }) => {
  return (
    <List>
      {
        todos &&
          todos.length > 0 ?
          (
            todos.map(todo => {
              return (
                <List.Item >
                  <List.Icon name='angle right'/>
                  <List.Content key={todo._id} onClick={() => deleteTodo(todo._id)}>
                    {todo.action}
                  </List.Content>
                </List.Item>
              )
            })
          )
          :
          (
            <li>No todos left</li>
          )
      }
    </List>
  )
}

export default ListTodo;
