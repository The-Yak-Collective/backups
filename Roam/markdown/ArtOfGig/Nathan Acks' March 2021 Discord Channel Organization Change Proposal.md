About:: __Documenting channel lifecycle and categories for the Yak Collective Discord server.__
Chief Page Wrangler:: [[Nathan Acks]]
    - Additional Page Wranglers:: [[JennaD]] | `[[Fname Lname]]`
Created:: [[March 14th, 2021]] by [[Nathan Acks]]
Current State:: {{or:Proposed | Live | Draft | Archived}}
---
# Problem
    - New folks and some old-timers feel overwhelmed at the sheer number of channels on our Discord server.
# Solution
    - Organize channels into groups that can be subscribed to using a modified version of the `#experimental-project-ui` bot/channel.
# Proposal
    - Organize channels into three "tiers", using roles to control visibility.
        - Visible to `@everyone`.
            - `#upcoming-events`
            - All of the **Yak Log**  __except__ for `#bot-tweaks` (if Maier wants to move it) and `#yak-tweet`.
            - `#introductions`
            - All of **Voice**.
                - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2FKgvNHi4KA5.png?alt=media&token=b99f1ea6-9036-423c-a073-495d5ad622ce)
        - Visible to `@yak`.
            - All of the **Dashboard** __except__ `#gig-list` and `#weekly-questions`.
                - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2FZBlEcV5PEq.png?alt=media&token=390e4f49-8914-4246-b1d9-c2d8ab07c207)
            - All of the **Yak Log**  _except_ for `#bot-tweaks` (if Maier wants to move it).
                - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2F18xacFcIJn.png?alt=media&token=5f444391-c1a4-4083-bec1-a6c55f68deca)
            - All of **Plaza** __except__ `#take-gig-leave-gig`.
                - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2F4IUESWjjjU.png?alt=media&token=c2cb442d-9f55-4e4d-9314-451f33d93fb9)
            - All of the **Incubator**.
                - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2F_MuFGLftOt.png?alt=media&token=6db773ea-3ebe-486e-8574-cbb99458c01e)
        - Visible on a case-by-case basis.
            - `@gig-board`
                - `#gig-list`
                - `#take-gig-leave-gig`
            - `@weekly-questions`
                - `#weekly-questions`
                - All of the **Weekly Questions**.
                - All of the **Archived Weekly Questions**.
            - `@discussions`
                - All of the **Discussions** section __except__ for `#admin-talk`.
                - ^^We could perhaps divide this section up more? It's not obvious to me how to do this though.^^
                - ^^How do we handle the case of a discussion channel that's created in the **Incubator**? (Though I don't think this has come up.)^^
            - `@archives`
                - All of the **Archives**.
            - `@yakshavers`
                - `#bot-tweaks`
                - `#admin-talk`
            - Per-project roles
                - Every project gets its own role, which sets visibility (and can be used for notifications).
                - Projects in the **Incubator** are excluded (since we're gathering interest), but a role gets added when/if they're moved to **Projects** (and existing participants are assigned this role).
# Implementation
    - {{[[TODO]]}} [[Nathan Acks]] Create the necessary roles to make the proposed organization work.
    - {{[[TODO]]}} [[Maier Fenster]] Modify the `@Project_UI` bot to pull in not only projects, but also display (possibly at top?) the special groups/roles we've decided on.
    - {{[[TODO]]}} [[Maier Fenster]] Make sure that all existing server members have the roles needed to interact with the channels they've contributed to.
        - {{[[TODO]]}} ^^I'm assigning this to Maier because it seems like this is best to do over the Discord API, and I think that Maier has the most experience here. But maybe there's a better way?^^
    - {{[[TODO]]}} [[Nathan Acks]] Promote the `#experimental-project-ui` channel to the **Dashboard** section (and probably rename it). Archive `#subscribe-projects` (and disconnect the relevant bot).
    - {{[[TODO]]}} [[Nathan Acks]] Make sure that all channels and groups of channels are permissioned consistently. Add this as a regular "gardening" task.
    - {{[[TODO]]}} [[Nathan Acks]] Make a post in `#announcements` about these changes, using `@here`.
    - {{[[TODO]]}} [[Nathan Acks]] Merge this document into [[Discord Channel Lifecycle and Organization]].

Last Updated:: [[March 17th, 2021]] by [[Nathan Acks]]
Last Gardened:: [[March 15th, 2021]] by [[JennaD]]
