import { CollectionConfig } from "payload/types"

// fault report files
const FaultReportFiles : CollectionConfig = {
    slug: 'faultReportFiles',
    upload: {
        staticDir: './public/faultReportFiles',
        staticURL: 'faultReportFiles',
    },
    admin: {
        useAsTitle: 'name',
    },
    access: {
        read: () => true,
        create: ({req:  {user}}) => {
            // return true is user role is admin or user is authenticated
            if(user.role === 'admin' || user){
                return true
            }
        },
        update: ({req:  {user}}) => {
            // return true is user role is admin or user is authenticated
            if(user.role === 'admin' || user){
                return true
            }
        },
        delete: ({req:  {user}}) => {
            // return true is user role is admin or user is authenticated
            if(user.role === 'admin' || user){
                return true
            }
        }
    },
    fields: [
        {
            name: 'name',
            type: 'text',
            label: 'Name',
            required: true,
        }
    ]
}


// export the collection config
export default FaultReportFiles