import { CollectionConfig } from "payload/types";

// create a property purchase collection config
const PropertyPurchase : CollectionConfig = {
    slug: 'propertyPurchase',
    labels: {
        singular: 'Property Purchase',
        plural: 'Property Purchases',
    },
    admin:{
        useAsTitle: 'propertyPurchasedBy.name',
    },
    access: {
        read: ({req:  {user}}) => {
            // return true is user role is admin
            if(user.role === 'admin' || user){
                return true
            }
        },
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
            name: 'propertyPurchased',
            type: 'relationship',
            label: 'Property Purchased',
            required: true,
            relationTo: [
                'property'
            ]
        },
        {
            name: 'propertyPurchasedBy',
            type: 'relationship',
            label: 'Property Purchased By',
            required: true,
            relationTo: [
                'users'
            ]
        },
        {
            name: 'price',
            type: 'text',
            label: 'Property Value',
            required: true,
        },
        {
            name: 'documents',
            type: 'array',
            label: 'Property Purchase Documents',
            required: true,
            fields: [
                {
                    name: 'document',
                    type: 'upload',
                    relationTo: 'propertyPurchaseDocuments',
                    required: true,
                }
            ]
        },
    ],
    timestamps: true,
}

// export the collection config
export default PropertyPurchase