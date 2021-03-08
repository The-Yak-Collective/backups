About:: __Documenting channel lifecycle and categories for the Yak Collective Discord server.__
Chief Page Wrangler:: [[Nathan Acks]]
    - Additional Page Wranglers:: `[[Fname Lname]]` | `[[Fname Lname]]`
Created:: [[November 9th, 2020]] by [[Nathan Acks]]
Current State:: {{or:Live | Proposed | Draft | Archived}} 
Last Updated:: [[February 15th, 2021]] by [[Nathan Acks]]
Last Gardened:: [[December 7th, 2020]] by [[Nathan Acks]]
# Naming Convention
    - Channels should generally be named using emoji + dash + channel name (`🚐-yak-rover`).
    - Categories should generally be named using emoji + space + channel name (`🌐 Plaza`).
# Channel Categories
    ## Dashboard
        - Dashboard channels that provide an overhead view of the Yak Collective Discord server. Channels in this section should have a relatively static number of messages that are maintained by bots (or occasionally people), __not__ the "infinite scroll" of normal channels!
    ## Yak Log
        - Channels that provide a "log" of ongoing Yak Collective activity. Channels in this section should be maintained by bots (or occasionally people), and __not__ have posting permissions opened up more broadly!
    ## Plaza
        General discussion and information channels.
    ## Voice
        Voice channels (and associated text channels).
    ## Projects
        Currently active internal __and__ externally-facing projects. ^^Every project should have a corresponding role with the same name, __sans__ leading emoji + dash.^^ For example, the `🚐-yak-rover` channel should have a corresponding `yak-rover` server role.
    ## Discussions
        - Discussion and information channels with a more targeted audience.
    ## Incubator
        A place for new channels to find their legs. Or not.
    ## Archives
        Old channels, put out to pasture.
            - All channels in the "archives" should have the "send messages" permission disabled.
            - All channels in the "archives" should have the following prepended to their description: "You can propose resurrecting this channel in `#create-destroy-channels`."
# Channel Lifecycle
    ## Birth
        - New channels are proposed in `create-destroy-channels`. All active yaks, made yaks, and yak shavers can propose new channels.
        - A channel that receives at least 3 "thumbs up" from different active yaks, made yaks, or yak shavers is born into the "Incubator".
        - Channels in the incubator must show sustained interest for 1 month to be promoted to "Plaza", "Discussions", "Projects", or "Voice" (as appropriate).
            - __Sustained interest__ means posts from at least 3 yaks, with an __average__ (for the entire channel) of at least 1 post per day and no more than 1 week (for the entire channel) between any two posts.
        - Channels in the incubator that do not show sustained interest are [archived](Death).
    ## Life
        - Channels live in "Plaza", "Discussions", "Projects", or "Voice", as appropriate.
    ## Death
        - Yak shavers will monitor channels for signs of inactivity, culling inactive channels at least once per month. A message noting that the channel is scheduled for deletion will be posted in that channel at least one week in advance.
            - An __inactive channel__ is one which has averaged less than 1 message per day over __both__ the last 30 days __and__ last week. (In other words, `$activity 30` shows has both "total messages" < 30 __and__ the last weekly message count < 7.) Bot-based channels (`#yaktalk-content`, `#events`, and `#subscribe-projects`) and channels in the incubator are exempt from this requirement.
        - Channels can also be culled if there is a proposal to do so in `#create-destroy-channels` that receives at least 6 "thumbs up" from different active yaks, made yaks, or yak shavers.
        - Culled channels are moved to the "Archives", and have their "send messages" permission disabled.
    ## Resurrection
        - Any channel can be resurrected from the "Archives" by the same [process by which it is born](((Tp4-Ie9uN))).
        - Resurrected channels have the same 1-month probationary period as newborn channels.
