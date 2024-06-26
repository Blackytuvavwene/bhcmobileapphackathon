import { CollectionConfig, Field } from 'payload/types'


// create a property collection config
const Property : CollectionConfig = {
    slug: 'property',
    labels: {
        singular: 'Property',
        plural: 'Properties',
    },
    admin:{
        useAsTitle: 'name',
    },
    access: {
        read: () => true,
        create: ({req:  {user}}) => {
            // return true is user role is admin
            if(user.role === 'admin'){
                return true
            }
        },
        update: ({req:  {user}}) => {
            // return true is user role is admin
            if(user.role === 'admin'){
                return true
            }
        },
        delete: ({req:  {user}}) => {
            // return true is user role is admin
            if(user.role === 'admin'){
                return true
            }
        },
    },
    fields: [
        // Add more fields as needed
        {
            name: 'name',
            type: 'text',
            label: 'Property Name',
            required: true,
        },
        {
            name: 'value',
            type: 'text',
            label: 'Property Value',
            required: true,
        },
        {
            name: 'description',
            type: 'text',
            label: 'Property Description',
            required: true,
        },
        {
            name: 'location',
            type: 'group',
            label: 'Property Location',
            fields: [
                {
                    name: 'address',
                    type: 'text',
                    label: 'Property Address',
                    required: true,
                },
                {
                    name: 'type',
                    type: 'select',
                    label: 'Type of Location',
                    options: [
                        {
                            label: 'City',
                            value: 'city',
                        },
                        {
                            label: 'Village',
                            value: 'village',
                        },
                        {
                            label: 'Town',
                            value: 'town',
                        }
                    ],
                    // required: true,
                }
            ]
        },
        {
            name:'images',
            type: 'array',
            label: 'Property Images',
            fields: [
                {
                    name: 'image',
                    type: 'upload',
                    relationTo: 'propertyImages',
                },
            ],
        },
        // category should be text
        {
            name: 'category',
            type: 'text',
            label: 'Property Category',
            // required: true,
        }

    ],
    timestamps: true,
}

// export the collection config
export default Property