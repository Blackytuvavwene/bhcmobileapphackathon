import { CollectionConfig } from "payload/types";

// property purchase documents
const PropertyPurchaseDocuments : CollectionConfig = {
    slug: 'propertyPurchaseDocuments',
    labels: {
        singular: 'Property Purchase Document',
        plural: 'Property Purchase Documents',
    },
    admin:{
        useAsTitle: 'name',
    },
    upload: {
        staticDir: './public/propertyPurchaseDocuments',
        staticURL: 'propertyPurchaseDocuments',
    },
    fields: [
        // Add more fields as needed
        {
            name: 'name',
            type: 'text',
            label: 'Document Name',
            required: true,
        }
    ],
}

// export the collection config
export default PropertyPurchaseDocuments