import path from 'path'

import { payloadCloud } from '@payloadcms/plugin-cloud'
import { mongooseAdapter } from '@payloadcms/db-mongodb'
import { webpackBundler } from '@payloadcms/bundler-webpack'
import { slateEditor } from '@payloadcms/richtext-slate'
import { buildConfig } from 'payload/config'

import Users from './collections/users/Users'
import Property from './collections/property/Property'
import PropertyImages from './collections/property/PropertyImages'
import PropertyPurchase from './collections/property/PropertyPurchase'
import PropertyPurchaseDocuments from './collections/property/PropertyPurchaseDocuments'
import Enquiry from './collections/enquiries/Enquiry'
import FaultReports from './collections/reports/FaultReports'
import FaultReportFiles from './collections/reports/FaultReportFiles'

export default buildConfig({
  admin: {
    user: Users.slug,
    bundler: webpackBundler(),
  },
  editor: slateEditor({}),
  collections: [Users,
    // Add more collections as needed
    Property,
    PropertyImages,
    PropertyPurchase,
    PropertyPurchaseDocuments,
    Enquiry,
    FaultReports,
    FaultReportFiles
  ],
  typescript: {
    outputFile: path.resolve(__dirname, 'payload-types.ts'),
  },
  graphQL: {
    schemaOutputFile: path.resolve(__dirname, 'generated-schema.graphql'),
  },
  plugins: [payloadCloud()],
  db: mongooseAdapter({
    url: process.env.DATABASE_URI,
  }),
})
