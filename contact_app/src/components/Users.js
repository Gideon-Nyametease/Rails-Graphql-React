import React from 'react'
import { useQuery } from '@apollo/react-hooks'
import gql from 'graphql-tag'
import UserAvatar from './UserAvatar'
// import CreateUser from './CreateUser'

const GET_USERS = gql`
    {
        users {
            id
            username
            email
            contactsCount
        }
    }
`;

function Users({ selectUser}) {
    const { loading, error, data } = useQuery(GET_USERS);

    if (loading) return 'Loading...';
    if (error) return `Error ${error.message}`;

    return(
        <div className="">
            {
                data.users.map(user => (
                    <div key={user.id} className="" onClick={selectUser.bind(this, user)}>
                        <UserAvatar user={user}/>
                    </div>
                ))
            }
        </div>
    )
}

export default Users;