owner:: [Nathan Acks](<Nathan Acks.md>)
last updated:: [September 13th, 2020](<September 13th, 2020.md>) by [Nathan Acks](<Nathan Acks.md>)
# Purpose
    - Stores code and __some__ data in [The Yak Collective](https://github.com/The-Yak-Collective) team.
        - Currently holds member data; plan is to migrate this to [Knack](<Knack.md>) to allow for better GDPR compliance, easier self-maintenance of member records, etc.
    - Repos
        - [yakcollective](https://github.com/The-Yak-Collective/yakcollective): The [Yak Collective Website](<Yak Collective Website.md>)
            - Holds site scaffolding, static pages, project data, member data, etc.
                - See [Website Architecture](<Website Architecture.md>) for details
        - [backups](https://github.com/The-Yak-Collective/backups): Holds various git-appropriate backups.
            - [ArtOfGig](https://roamresearch.com/#/app/ArtOfGig) [Roam](<Roam.md>) graph (backed up daily by [roam-to-git](https://github.com/MatthieuBizien/roam-to-git))
        - [yakcollective-ifttt-connector](https://github.com/The-Yak-Collective/yakcollective-ifttt-connector): Archive of an old [Glitch](<Glitch.md>) automation which was subsequently replaced by [Netlify Functions](https://docs.netlify.com/functions/overview/).
# Access
    - Owners
        - [Nathan Acks](<Nathan Acks.md>) ([necopinus](https://github.com/necopinus))
        - [Maier Fenster](<Maier Fenster.md>) ([tilnow](https://github.com/tilnow))
        - [Venkatesh Rao](<Venkatesh Rao.md>) ([vgururao](https://github.com/vgururao))
        - [Yak Collective Robot](<Yak Collective Robot.md>) ([yakcollective-robot](https://github.com/yakcollective-robot))
    - Members
        - [Tom Critchlow](<Tom Critchlow.md>) ([tomcritchlow](https://github.com/tomcritchlow))
            - Maintainer for `yakcollective` repo

# Backlinks
## [Contributing to the Website](<Contributing to the Website.md>)
- Website content is currently stored in [GitHub](<GitHub.md>).

3. Once you've made your change, ping someone with **owner** level access in [GitHub](<GitHub.md>)

4. For emergency updates, ping someone with **owner** level access in [GitHub](<GitHub.md>)

- Writings and newsletter data are archived in [GitHub](<GitHub.md>)

## Current [GitHub](<GitHub.md>)

- [GitHub](<GitHub.md>):

- [GitHub](<GitHub.md>):

- [GitHub](<GitHub.md>):

- [GitHub](<GitHub.md>):

- [GitHub](<GitHub.md>):

- [GitHub](<GitHub.md>):

- [GitHub](<GitHub.md>):

## [IFTTT](<IFTTT.md>)
- Monitor member website and [Yak Talk](<Yak Talk.md>) newsletter RSS feeds, pushing content into the [Yak Collective Website](<Yak Collective Website.md>) via [GitHub](<GitHub.md>).

## [IT Infrastructure](<IT Infrastructure.md>)
- [GitHub](<GitHub.md>)

## [Knack](<Knack.md>)
- Minimal information from [Discord](<Discord.md>) (server name, user ID, role data) will be moved over using a `yak_shaver` bot. May or may not commit info to [GitHub](<GitHub.md>)

## [Netlify](<Netlify.md>)
- `GH_BRANCH` - [GitHub](<GitHub.md>)

- `GH_TOKEN` - GitHub user token for API access. Generated using the [Yak Collective Robot](<Yak Collective Robot.md>) [GitHub](<GitHub.md>)

- **Access control** must be turned on to enable authentication to [Netlify CMS](https://www.netlifycms.org/), and a [GitHub](<GitHub.md>)

- **Access control** must be turned on to enable authentication to [Netlify CMS](https://www.netlifycms.org/), and a [GitHub](<GitHub.md>) provider installed. Provider ID and secret values are generated using the [Yak Collective Robot](<Yak Collective Robot.md>) [GitHub](<GitHub.md>)

## [Threat Model](<Threat Model.md>)
- Data loss ([Roam](<Roam.md>), [Yak Collective Robot](<Yak Collective Robot.md>), [GitHub](<GitHub.md>),

- [GitHub](<GitHub.md>)

## [Website Architecture](<Website Architecture.md>)
- Netlify CMS uses [GitHub](<GitHub.md>)

- The `create-post` function stores configuration information, a [GitHub](<GitHub.md>)

## [Website Version History](<Website Version History.md>)
- Fixed Netlify CMS for folks not already in the [GitHub](<GitHub.md>)

- Documentation (originally just in the [GitHub](<GitHub.md>)

- Post contents are cached in the [GitHub](<GitHub.md>)

## [Yak Collective Robot](<Yak Collective Robot.md>)
- [GitHub](<GitHub.md>)

- [Roam](<Roam.md>) (used for backups to [GitHub](<GitHub.md>))

