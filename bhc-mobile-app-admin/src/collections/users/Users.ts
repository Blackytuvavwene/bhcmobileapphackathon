import { CollectionConfig } from 'payload/types'

const Users: CollectionConfig = {
  slug: 'users',
  auth: true,
  admin: {
    useAsTitle: 'email',
  },
  fields: [
    // Email added by default
    {
      name: 'role',
      type: 'select',
      label: 'Role',
      options: [
        {
          value: 'admin',
          label: 'Admin',
        },
        {
          value: 'user',
          label: 'User'
        }
      ]
    }
  ],
}

export default Users
