import React from 'react'
import { useQuery } from '@apollo/react-hooks'
import gql from 'graphql-tag'
import UserAvatar from './UserAvatar'
import Contacts from './Contacts'

const GET_USER = gql`
query User($id: ID!) {
    user(id: $id) {
      contacts {
        firstName
        lastName
        phoneNumber
        email
        twitter
      }
    }
  }
`;

function User({ user, selectUser}) {
    const { loading, error, data } = useQuery(GET_USER, {
        variables: { id: user.id }
    });

    if (loading) return 'Loading...';
    if (error) return `Error ${error.message}`;

    return(
        <React.Fragment>
            <div className="">
                <button className="" onClick={selectUser.bind(this, null)}>
                    Back
                </button>
            </div>
            <div className="">
                <div className="">
                    <UserAvatar user={user}/>
                </div>
                <div className="">
                    <Contacts contacts={data.user.contacts} user={user}/>
                </div>
            </div>
        </React.Fragment>
    )
}

export default User;