- [[Maier Fenster]] since new prompt-bot (/psXXX) is implemented using threads, a lot of the below should be rethought and also new ideas become possible
- the data is all stored in an sqlite database, so we can push what we want, when we want to where we want, from our vultr server
- Existing commands
    - `/promptrecall`: Private display of current prompt. **should be updated to include the index number for convenient use with rewind command**
    - `/promptshow`: Public display of current prompt. **should be updated to include the index number for convenient use with rewind command**
    - `/promptset`: Curator sets the current prompt, allows for one or more links. Should increment a counter on the prompt list and add the new prompt at the end, maintaining a list.
- Proposed commands
    - `/prompthelp`: Displays this list of prompt bot commands
        - Already exists a / help command
    - `/promptregister`: Displays the following message:
        - `You are now registered for <workshop name> at the most recent prompt, number <N>. Type /promptrecall to show the prompt. To start or restart from a different position, type /promptrewind, where n is how far back you want to go`
    - `/promptrewind <n>`: Rewind prompt position by n. If n is greater than the number of prompts, it resets to the first prompt.
    - `/promptfastforward <n>`: Fast forward prompt position by n. If n is greater than the latest index, it will be set to the latest index.
    - ALT: instead of rewind/fastforward, can have a single consolidated `/promptseek n` command that goes to position n/N. Either way only current position is updated, not the responses log or anything else. Allows you to review/redo an old prompt etc.
    - `/prompttrackinfo`: Displays blurb explaining the workshop (to be set by curator upon creation)
    - `/promptrespond`: Input some text in response to a prompt. Should display a social-shareable badge or something. Should also mark the current prompt done, and update position by 1
    - `/promptunrespond`: Delete response and decrement counter
    - `/promptreset`: Should replace the current prompt and throw away the existing one, without archiving or incrementing the counter (soft norm to be used by curators only)
    - `/promptlist`: Show numbered list of last 10 prompts or something (private? public?)
    - `/promptmates`: Show a list of people with at least one completed prompt, along with their current positions on the prompt track (possibly as a text graphic in future?). If ranked by position, it gives people an easy way to see who is nearest them for chatting, forming a soft cohort etc.
    - `/promptrespondold [n]`: Input some text in response to an old prompt, referenced by number
    - `/setposition [start | current | n]`: Set/reset the specific user's position in the prompt track to n
    - `/prompthistory-showall`
    - `/prompthistory-showmine`
    - 
- Brainstorm points:
    - Should anyone be allowed to use curator commands? Don't police it, but set soft norms
    - Is there an easy way to pipe the prompt list periodically to the website and/or Roam
    - How to do bulk ops, like edit a lot of prompts at once? Ideally on a roam page or a markdown file
    - How to insert new prompts in the middle of the prompt list if we discover that a logical step is missing? Or potentially re-order the list of prompts? This seems like something that should not be done on discord either... probably markdown?
    - allow for a binge mode within some reasonable limit #[[Jenna]]
    - periodic cohort formation
    - channels as lobby for participants and push prompts into threads
    - prompts all automated into Roam pages
    - show your work... how
- [[Maier Fenster]] V0.5 proposal
    - commands
        - all start with /ps (promptschool)
        - all take just a string of text (could be a link, etc.)
        - general purpose command groups for now:
            - /pscourse - do to prompt series
            - /psprompt - do to prompt
            - /pshint - do to hint
            - /pssubmit - do to submission
        - common subcommands
            - create - makes a new one (course, prompt) - use a short descriptive name - that can be a discord channel name
            - set - sets the value that will be shown (additive, not replacement)
            - show - shows current value
            - showall - shows all values
            - recall/recallall - the same, just private
            - del - not implemented yet - deletes last setting, probbaly by setting "hidden" bit
        - specific purpose groups
            - /psstats - TBD
            - /psreaction - TBD - some way of giving reactions - {good, bad,did not know what or why to do,scary}, at least to prompt
            - TBD
    - on server
        - a category for ps
        - when you create a course, a new channel is created
        - when you create a prompt, a new thread is created
    - usage
        - anywhere create a course - a channel is created
            - go to channel and set course details
        - in a course channel, create a prompt, a new thread with that name is created
            - go to thread and set prompt details, add a hint, etc.
        - in a thread submit to the prompt of that thread
        - choose what prompt to do by going to thread. best to go in order. we could probably force a person to go in order
    - database structure
        - will try for really simple. multiple tables (courses, threads, hints, submissions), all with same format:
            - ID, parent ID, userwhocreated, created_at, string, where thread and channel ids act as "ID". maybe also "hidden", to emulate deletion
    - of course, like any channel (and sometime soon, thread), a channel can have a reading list, agenda, etc.
- [[Nathan Acks]]
    - # Create things. The first two should only work in [[Maier Fenster]] Ifelt it was more natural to be object oriented rather than action oriented, especially since the threads help narrow the choices in a nice way 
      # the channel, the third only in threads.
      #
      /ps create course <COURSE>
      /ps create prompt <PROMPT>
      /ps create hint <HINT>
      
      # Set variables related to the course. Not sure
      # what this is for, but it's in the v0.5 proposal.
      # Should only work in the channel.
      #
      /ps course get <NAME|all>
      /ps course set <NAME> [to|=] <VALUE>
      /ps course del <NAME>
      
      # Submit a response. Should only work in a thread.
      #
      /ps respond <RESPONSE>
      
      # Get responses. Should only work in a thread. The
      # set/del commands should be restricted to the
      # caller's own responses. NUMBER only makes sense
      # when looking at the caller's own responses.
      #
      /ps response get <NUMBER|all> [for] [me|everyone]
      /ps response set <NUMBER> [to|=] <RESPONSE>
      /ps response del <NUMBER>
      
      # Show various things. The first two commands
      # should return contextual information based on
      # whether they're called in a channel or a thread.
      # The last two commands should be restricted to
      # threads.
      #
      /ps show stats
      /ps show mates
      /ps show prompts [limit] [to] [NUMBER]
      /ps show <response|responses> [for] <me|all|NUMBER>
      
      # Clean up courses/prompts. The first should only
      # be callable from a channel, the second from a
      # thread.
      #
      /ps archive course
      /ps archive prompt
      Notes:
      
      - This uses get/set/del instead of show/set/pop just because I think it's clearer.
      
      - I'm using "response" rather than "submission" here, since I kind of like the feel of "prompt/response" more than "prompt/submission".
      
      - Includes some additional functionality from Venkat's original brainstorm. Mostly just because it fit into what I was writing.
      
      - I have no idea if this sort of multi-keyword approach works with the slash-command API. I haven't checked. So feel free to ignore. [[Maier Fenster]] it does, but not too many levels, so I only use one 
    - 
      
      - Some of these clearly need to be restricted to trusted yaks (/ps archive course, for example).[[Maier Fenster]] right now, nothing is deleted, like a blockchain :)
      
      - I kind of like the idea of having people react with emojis when a prompt is displayed, rather than an explicit slash command. Feels more "Discord native". [[Maier Fenster]] in thread version, there is no "single" showing of the prompt. i guess Icoudl detect reactions on each showing, but not for ephermal ones (when you do "recall") 
