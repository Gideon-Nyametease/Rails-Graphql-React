import React from 'react'

function Contacts ({contacts, user}) {
    return(
        <React.Fragment>
            <div className="">
                <h3 className="">
                    {user.username}'s Contacts
                </h3>
                {
                    contacts.map(contact => (
                        <div key={contact.id}>
                            <div className="">
                                <h4 className="">
                                    <div> {contact.first_name} {contact.last_name}</div>
                                </h4>
                            </div>
                        </div>
                    ))
                }
            </div>
        </React.Fragment>
    )
}

export default Contacts