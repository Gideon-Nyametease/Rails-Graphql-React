import React from 'react';
import Users from './Users'
import User from './User'
class App extends React.Component {
  state = {
    selectedUser: null
  }

  selectUser = (user) => {
    this.setState({ selectedUser: user })
  }
  render (){
    return(
      <div className="">
        {this.state.selectedUser ?
          <User user={this.state.selectedUser} selectUser={this.selectUser} />:
          <Users selectUser={this.selectUser}/> 
        }
      </div>
    )
  };
}

export default App;
