import { redirect } from "@sveltejs/kit";
import type { PageServerLoad } from "./$types";

// load 
export const load: PageServerLoad = async ({parent}) => {
    // get user from parent
    const {user} = await parent()

    // redirect if no user
    if (!user) {
        redirect(303, '/auth/signin')
    }
}