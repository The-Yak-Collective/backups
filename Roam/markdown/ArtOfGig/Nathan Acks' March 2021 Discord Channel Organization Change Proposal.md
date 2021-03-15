About:: __Documenting channel lifecycle and categories for the Yak Collective Discord server.__
Chief Page Wrangler:: [[Nathan Acks]]
    - Additional Page Wranglers:: `[[Fname Lname]]` | `[[Fname Lname]]`
Created:: [[March 14th, 2021]] by [[Nathan Acks]]
Current State:: {{or:Proposed | Live | Draft | Archived}} 
Last Updated:: [[March 14th, 2021]] by [[Nathan Acks]]
Last Gardened:: `\Today` by `[[Fname Lname]]`
# Problem
    - New folks and some old-timers feel overwhelmed at the sheer number of channels on our Discord server.
# Solution
    - Organize channels into groups that can be subscribed to using a modified version of the `#experimental-project-ui` bot/channel.
# Proposal
    - Organize channels into three "tiers", using roles to control visibility.
        - Visible to `@everyone`.
            - `#upcoming-events`
            - All of the **Yak Log**.
                - __Except__ for `#bot-tweaks` and `#yak-tweet`, if Maier wants to move these...
            - `#introductions`
            - All of **Voice**.
        - Visible to `@yak`.
            - All of the **Dashboard** __except__ `#gig-list` and `#weekly-questions`.
            - All of the **Yak Log**.
            - All of **Plaza** __except__ `#take-gig-leave-gig`.
            - All of the **Incubator**.
        - Visible on a case-by-case basis.
            - `@gig-board`
                - `#gig-list`
                - `#take-gig-leave-gig`
            - `@weekly-questions`
                - `#weekly-questions`
                - All of the **Weekly Questions**.
                - All of the **Archived Weekly Questions**.
            - `@discussions`
                - All of the **Discussions** section __except__ for `#admin-talk` (we keep that visible to `@yakshavers` only).
                - ^^We could perhaps divide this section up more? It's not obvious to me how to do this though.^^
                - ^^How do we handle the case of a discussion channel that's created in the **Incubator**? (Though I don't think this has come up.)^^
            - `@archives`
                - All of the **Archives**.
            - Per-project roles
                - Every project gets its own role, which sets visibility (and can be used for notifications).
                - Projects in the **Incubator** are excluded (since we're gathering interest), but a role gets added when/if they're moved to **Projects** (and existing participants are assigned this role).
# Implementation
    - [[Nathan Acks]] Create the necessary roles to make the proposed organization work.
    - [[Maier Fenster]] Modify the `@Project_UI` bot to pull in not only projects, but also display (possibly at top?) the special groups/roles we've decided on.
    - [[Maier Fenster]] Make sure that all existing server members have the roles needed to interact with the channels they've contributed to.
        - ^^I'm assigning this to Maier because it seems like this is best to do over the Discord API, and I think that Maier has the most experience here. But maybe there's a better way?^^
    - [[Nathan Acks]] Promote the `#experimental-project-ui` channel to the **Dashboard** section (and probably rename it). Archive `#subscribe-projects` (and disconnect the relevant bot).
    - [[Nathan Acks]] Make sure that all channels and groups of channels are permissioned consistently. Add this as a regular "gardening" task.
    - [[Nathan Acks]] Make a post in `#announcements` about these changes, using `@here`.
    - [[Nathan Acks]] Merge this document into [[Discord Channel Lifecycle and Organization]].
