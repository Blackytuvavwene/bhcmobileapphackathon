import { CollectionConfig } from "payload/types";

// create a media collection config
const PropertyImages : CollectionConfig = {
    slug: 'propertyImages',
    upload: {
        staticURL: '/propertyImages',
        staticDir: './public/propertyImages',
        imageSizes: [
            {
                name: 'thumbnail',
                width: 300,
                height: 300,
                position: 'centre',
            },
            {
                name: 'card',
                width: 768,
                height: 1024,
                position: 'centre',
            },
            {
                name: 'tablet',
                width: 1024,
            }
        ],
    },
    admin:{
        useAsTitle: 'alt',
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
    labels: {
        singular: 'Property Image',
        plural: 'Property Images',
    },
    fields: [
        // Add more fields as needed
        {
            name: 'alt',
            type: 'text',
            label: 'Property Image Name',
            required: true,
        },
    ],
    timestamps: true,
}


// export the collection config
export default PropertyImages