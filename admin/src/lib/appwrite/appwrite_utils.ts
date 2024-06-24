import { Account, Client } from 'appwrite';
import { env } from '$env/dynamic/private'


// setup appwrite client using the environment variables
export  const appwriteClient = new Client()


appwriteClient
    .setEndpoint(env.APPWRITE_ENDPOINT!)
    .setProject(env.APPWRITE_PROJECT_ID!)

// export account
export const appwriteAccount = new Account(appwriteClient)

// export ID
export { ID } from 'appwrite'