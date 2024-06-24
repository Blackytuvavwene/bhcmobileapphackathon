import { appwriteAccount } from "$lib/appwrite/appwrite_utils";
import { redirect } from "@sveltejs/kit";
import type { LayoutServerLoad } from "./$types"

// redirect if no user is returned on load
export const load: LayoutServerLoad = async () => {
    // get user from appwrite
    let user
    try {
        user = await appwriteAccount.get()
        return {
            user
        }
    } catch (error) {
        console.error(error)
        return {
            user: null
        }
    }
}