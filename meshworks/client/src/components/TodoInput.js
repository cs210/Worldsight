import React, {Component} from 'react';
import axios from 'axios';
import { Input } from 'semantic-ui-react'

class TodoInput extends Component {
  state = {
    action: ""
  }

  addTodo = () => {
    const task = {action: this.state.action}
    if(task.action && task.action.length > 0){
      axios.post('/api/todos', task)
        .then(res => {
          if(res.data){
            this.props.getTodos();
            this.setState({action: ""});
          }
        })
        .catch(err => console.log(err));
    }else {
      console.log('input field required');
    }
  }

  handleChange = (e) => {
    this.setState({
      action: e.target.value
    });
  }

  render() {
    let {action} = this.state;
    return (
      <div>
          <Input action={{
            onClick: this.addTodo,
            color: 'primary',
            actionPosition: 'right',
            content: "Add Todo"
          }}
          type="text" onChange={this.handleChange} value={action} />
      </div>
    )
  }

}

export default TodoInput