import { CollectionConfig } from "payload/types";

// fault reporting collection config
const FaultReports : CollectionConfig = {
    slug: 'faultReports',
    labels: {
        singular: 'Fault Report',
        plural: 'Fault Reports',
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
        {
            name: 'supportingFiles',
            label: 'Supporting Files',
            type: 'array',
            fields: [
                {
                    name: 'name',
                    type: 'upload',
                    label: 'Name',
                    required: true,
                    relationTo: 'faultReportFiles',
                }
            ]
        }
    ],
}

// export the collection config
export default FaultReports