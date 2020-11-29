About:: __documenting channel lifecycle and categories for the YakC Discord server__
Chief Page Wrangler:: [[Nathan Acks]]
    - Additional Page Wranglers:: [[Fname Lname]] | [[Fname Lname]]
Created:: [[November 9th, 2020]] by [[Nathan Acks]]
Updated:: 
    - [[November 16th, 2020]] by [[Jenna Dixon]]
    - [[November 15th, 2020]] by [[Nathan Acks]]
Last Gardened:: `/today` by [[Fname Lname]]
# Channel Categories
    ## Plaza
        General discussion and information channels.
        ### Proposed Changes
            - Rename "Public Plaza" → "Plaza".
            - Merge `announcements`, `events`, and `general`.
                -  [[Maier Fenster]] events should be separate and include only reminders for events. i think.
                - [[Jenna Dixon]] I'd be curious to hear from the originators of `general` and `announcements` what the original concept was; am otherwise good with one channel. While I appreciate the thought from Maier about keeping `events` separate, the current three channels together are low-volume enough that KISS™ wins the day for me
                - [[Venkatesh Rao]] just lazy defaults. iirc general was auto-created as the default channel when I set up the discord. Either that or I copied slack default. can’t remember. In general we weren’t being particularly thoughtful in the first few weeks.
                - [[Hugo Macedo]] can we remove the auto checkin msgs from general? 
                    - today I think they are just noise and fill the feed without value.either they become background
                    - either we use general for other things and this becomes just background noise
                    - or we toggle-off if that's a feature
                    - or we turn general into an signalling channel only with auto messages - ideally changing the name.
                    - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2F--Ccni31k3.png?alt=media&token=9cc59055-27c6-477b-97b5-e2dfbcc394af)
                - [[Darren Kong]] I vote for merging general and events and keeping announcements separate since there's a lot more on-going noise for general/events, and announcements should be the place to check for official messages.  
                    - alternatively or in addition, we could merge Introductions and general (and events). since introductions and the welcome msg go hand-in-hand..
            - Move any channels from "Discussions" and "Bureaucracy" that don't properly fit under "Projects".
                - [[Maier Fenster]] by "merge in" you mean move or also combine?
                    - [[Nathan Acks]] Should have said "move". Fixed.
                - [[Jenna Dixon]] can you point to an example of this [[Nathan Acks]]? #ping Not sure I see what you mean here. Prolly agree though already lol
    ## Voice
        Voice channels (and associated text channels).
        ### Proposed Changes
            - Rename "Voice Channels" → "Voice".
                - [[Jenna Dixon]] 👍streamlining is good
    ## Projects
        Currently active internal and external projects. 
            - [[Maier Fenster]] maybe have separate groups for internal and external projects
                - [[Nathan Acks]] My thought was to mix them together, as I don't think we have that many... But I don't have a strong opinion.
                - [[Jenna Dixon]] could be helpful to keep separate. thinking of public projects in a channel that will eventually also include 💸gig projects 💸?
                - [[Venkatesh Rao]] suggest deferring this to after we get a second paid project, since I don’t like creating empty or singleton things. Also, I’m thinking the categories may not remain that clean. For eg. [[Astonishing Stories]] got some budget out of [[Neurofuturama]] tithe.
                    - [[maier fenster]] i think "paid" does not matter. inwards or outwards facing does
        ### Proposed Changes
            - Merge in any channels from "Discussions" and "Bureaucracy" that don't properly fit under "Plaza".
                - [[Jenna Dixon]] Hmmm 🤔Not sure about this. Have liked the Bureaucracy as a home for internal structural-type conversations. Won't lumping them all together create quite a long list? #ping [[Nathan Acks]]
Perhaps drop a proposed new list in simple text here so that we can see what the new look would be? » [[Draft Revised Discord Channels Proposal v1]][[maier fenster]]any solution which does not require clicking
                - [[Darren Kong]] suggestions:
                    - plaza
                        - move lounge from discussion to plaza
                        - move takegigleavegig from buraeucracy to plaza
                        - move new-to-consulting from discussion to plaza
                    - basically general purpose channels that we might want to promote for users to find a place to discuss should go in plaza. 
                        - tempted to say to downgrade experiments-log to bureaucracy or discussion ? it's not really clear what it's purpose is 
    ## Incubator
        A place for new channels to find their legs. Or not.
        ### Proposed Changes
            - Rename "Probationary Channels" → "Incubator".
            - [[Darren Kong]] move any proposed or hibernating projects into Incubator, so Projects section only has active projects. If a user clicks into any channel in project section, it would be active. 
    ## Archives
        Old channels, put out to pasture. ^^**Important:** All channels in the "archives" should have the "send messages" permission disabled.^^
        ### Proposed Changes
            - Rename "Archived" → "Archives".
            - Make sure that all channels in this section have the "send messages" permission disabled.
            - Existing channels should be [reviewed to determine if they are still alive](((qI9wDK8cG))) and moved to the archives as appropriate.
            - [[Maier Fenster]] each should have a new title starting with "if you want this channel to come back to life do XXX"
                - [[Nathan Acks]] Maybe this should be in the channel description?
# Channel Lifecycle
    ## Birth
        - New channels are proposed in `create-destroy-channels`. All active yaks, made yaks, and yak shavers can propose new channels.
            - [[Maier Fenster]] interesting idea from pie slicing - opening channels for a predefined period of time.
        - A channel that receives at least 3 "thumbs up" from different active yaks, made yaks, or yak shavers is born into the "Incubator".
            - [[Maier Fenster]] i think 3 are enough for incubator.
                - [[Nathan Acks]] Changed from 5 → 3
        - Channels in the incubator must show sustained interest for 1 month to be promoted to "Plaza", "Projects", or "Voice" (as appropriate).
            - __Sustained interest__ means posts from at least 3 yaks, with an __average__ (for the entire channel) of at least 1 post per day and no more than 1 week (for the entire channel) between any two posts.
                - [[Maier Fenster]] i say 3 yaks. and 1 week, not 3 days. there are holidays, you know
                    - [[Nathan Acks]] Change made
        - Channels in the incubator that do not show sustained interest are [archived](((qI9wDK8cG))).
    ## Life
        - Channels live in "Plaza" or "Projects", as appropriate.
            - [[Maier Fenster]] i feel having more categories would be helpful
            - [[Jenna Dixon]] I'm confused on this [[Nathan Acks]] #ping 
Are you proposing to put #Discussions and #Bureaucracy under #Projects? 
    ## Death
        - Yak shavers will monitor channels for signs of inactivity, culling inactive channels at least once per month. [[Maier Fenster]] note new "$activity" command for yak_shaver
            - An __inactive channel__ is one which has not received __any__ posts in 1 month.
                - [[Darren Kong]] i think this is too low of a bar. proposing it should be something like avg 10msg/week. or if we want it lower 20 msg/ month 
                    - Should send a weekly message activity note with warnings 
        - Channels can also be culled if there is a proposal to do so in `create-destroy-channels` that receives at least 10 "thumbs up" from different active yaks, made yaks, or yak shavers, at least 2 of which have posted in the channel in the last month.
        - Culled channels are moved to the "Archives", and have their "send messages" permission disabled.
            [[Maier Fenster]] i would consider a temporary "being retired" category for a few weeks. and/or a post to members saying a channel is about to be retired, any objections.
    ## Resurrection
        - Any channel can be resurrected from the "Archives" by the same process by which it is born » "Birth"
            - [[Maier Fenster]] i feel resurrection should be easier
        - Resurrected channels have the same 1-month probationary period as newborn channels.
