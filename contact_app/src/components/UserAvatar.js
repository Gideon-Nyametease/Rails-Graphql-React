import React from 'react'
import Gravatar from 'react-gravatar'

const UserAvatar = ({user}) => (
    <React.Fragment>
        <Gravatar email={user.email} size={200}/>
        <div className="">{user.username}</div>
        <p className="">{user.email}</p>
        <p className="">{user.contactsCount}</p>
    </React.Fragment>
)

export default UserAvatar;