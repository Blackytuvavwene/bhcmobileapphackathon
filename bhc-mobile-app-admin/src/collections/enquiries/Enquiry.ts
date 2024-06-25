import { CollectionConfig } from "payload/types";

// enquiry collection config
const Enquiry : CollectionConfig = {
    slug: 'enquiry',
    labels: {
        singular: 'Enquiry',
        plural: 'Enquiries',
    },
    admin:{
        useAsTitle: 'name',
    },
    fields: [
        // Add more fields as needed
        {
            name: 'name',
            type: 'text',
            label: 'Name',
            required: true,
        },
        {
            name: 'email',
            type: 'email',
            label: 'Email',
            required: true,
        },
        {
            name: 'message',
            type: 'textarea',
            label: 'Message',
            required: true,
        },
    ],
}

// export the collection config
export default Enquiry