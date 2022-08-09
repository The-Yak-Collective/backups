- Created as a broadening of the [[Blockchain Ops Roadmap]]. The Distributed Systems Study Group has a broader scope, and covers:
    - Distributed computing (technical)
        - Including Blockchain technologies
    - Distributed computing (social)
    - Distributed systems generally (including swarms in nature etc)
- The goal is to have a track complementary to the [[Online Governance Studies]] track, with a more technological focus.
- We aim to create a [[Distributed Systems Map and Lexicon]] as our work product over the summer
- There is interest in creating a prompt-school type track around this, and we will be trialing this over the summer.
- Resources/references: Please add links etc. under this bullet
    - https://www.quora.com/What-are-the-seminal-papers-in-distributed-systems-Why
- **Season: Summer** (11 sessions, 2 holidays, starting ~ June 21, summer solstice)
    1. June 20: 
        - Discussion of Paxos: https://en.wikipedia.org/wiki/Paxos_(computer_science))
        - Brainstorm of "continents" of distributed systems
    2. June 27: 
        - Discussion of [What we talk about when we talk about distributed systems](https://alvaro-videla.com/2015/12/learning-about-distributed-systems.html)
            - Questions: 
                - Venkat: How do you add a new trusted member?
                - Meredith: Are distributed systems the norm?
                - Jenna: Human mapping 
                - Grigori: Why do we need consensus
                - Commits: Diff between software dependencies vs distributed systems
                    - List of problems DS try to solve?
                    - Relation between DS and time
                - Ben: How do you unify the language? Blockchain, general systems,… How do you get to an engineering tradeoff?
                    - Inactivity bleed of stake as solution to FLP
                - Nathan: Recovery from failure? Maximal system integrity, optimize for correctness?
        - Prompt: Come up with ONE question about distributed systems that you don’t know the answer to, either social or technical . Plus general comments about the reading.
        - Prompt: Based on what you know, add as many terms as you can in 15 minutes to the [[Distributed Systems Map and Lexicon]] lexicon section. Both technical and non-technical terms invited.
    3. July 4: No meeting, US July 4th
    4. July 11: Something more social sciency
        - Article - Quadratic Voting
            - https://vitalik.ca/general/2019/12/07/quadratic.html
        - Discussion
            - [[Anuraj R]]
                - h-index in academia
                - gitcoin
            - [[Ben Mahala]]
                - https://twitter.com/glenweyl
                - Mechanism too clever, fine in domains they exist in. Lack simplicity
                - One person - One vote has strong narrative. It feels fair
                - There is not easy case study to intuitively know it
                - Problems with Identity and Collusion
                - People need to know what exactly they want. Not sure how much this system would work in the case when people don't know what they want
                - People might not hook into this system
            - [[Bryan King]]
                - Rank Choice Voting
                - It reduces gamesmanship. In US elections, a third party cannot ascend, as voting for third party is risky? 
                - Interesting part is obscuring of preference
                - Spectrum of of how much you care, and there are many people who don't care
                - Advertising section is interesting
            - [[Grigori Milov]]
                - Article misses the issue of power which also exist which is not evenly distributed in a system
                - In the presence of power, the fluidity of new system compared to old one (one person one vote), the danger of moving to unstable system
                    - easy to make a complex system, cubic system etc
            - [[Venkatesh Rao]]
                - The math is interesting. 
                - Ben's point of not having a meta-narrative
                    - [[Ben Mahala]]
                - Eg routing of TCP packets and algos for it
                    - CSMA by CD,
                    - Telephone game
                - People can't do it for troubleshooting but not as default
                - Grigori's point of slippery slope
                    - [[Grigori Milov]]
                - Diodes, triodes etc
                - The system depends on people knowing how much they care
                - Time in Yak Collective gives your certain voting tokens? 
                    - Making a voting bot with auto voting options
                - Vickrey auction, https://en.wikipedia.org/wiki/Vickrey_auction
                - Power holders in the system
                    - Buying power in quadratic system also depends on real world buying power
                    - Have to shield quadratic voting from real world inequalities
                - At some point one person - one vote was also established
            - Open Floor
                - [[Ben Mahala]]
                    - lot of work needs to be done to make this system viable
                    - does not mean we should give up on this, but good to know there are limits to this system
                    - EIP-1599 https://github.com/ethereum/EIPs/blob/master/EIPS/eip-1559.md
                    - Delegation is also important thing to look at, Liquid Democracy
    5. July 18: 
        - Articles
            - https://maurann.com/assets/readings/koolhaas-rem_junkspace.pdf
                - Discussion
                    - [[Anuraj R]]
                        - Pyramids are not junk
                        - what makes something become junk
                    - [[Ben Mahala]]
                    - [[Venkatesh Rao]]
                        - article famous in architecture circles
                        - the author may like the evolutionary power of junkspace
                        - maybe not read it in a structured way
                    - [[Grigori Milov]]
                        - lack of structure
                        - notion of shortage of masterpieces, shielded from quality checks etc
                        - junkspace is orderless but authoratarian
                        - once there is a well developed power structure then there is no need of architecture
                        - junkspace tyranny - the tyranny of mediocrity
                    - [[Maier Fenster]]
                        - article is using junkspace as a suitcase word. 
                        - talking about 20th century. somone in 18th or 19th century from rural england coming to London would be overwhelmed. the author might be talking about sometype of overload
                        - structure of modern shopping malls eg of mall in Israel
                        - tour of ruins of market place of second temple in Jerusalem
                            - what would a person from a village think when they arrived this market place 
            - https://www2.econ.iastate.edu/tesfatsi/ArchitectureOfComplexity.HSimon1962.pdf
                - Discussion
                    - [[Ben Mahala]]
                        - author touches on points on what would become chaos theory etc
                        - things he calls hierarchy is called reductionism
                    - [[Venkatesh Rao]]
                        - author pioneer of AI, came up with the notion of bounded rationality etc
                        - a complex system that evolves needs intermediate stable systems 
                    - [[Maier Fenster]]
                        - change the broader practical goal of today's prompt?
                        -  if we were to build a metaverse based on junkspace then what would it look like
                        - the article did not age well
                            - from discord  
                                - think human-based systems have a more viable option of reach-through from one hierarchy level to another. the ones we care about are dynamic to , like a flock of birds, so the leader (of which there can be many at once) take turns at different effective places in hierarchy. in his words - i think the systems we care about are not near decomposable as he suggests most social systems are.
                                - __one cannot, for example, enact the role of "friend" with large numbers of other people.__
                                - it seems like the focus on hierarchy detracts from analyzing the  links between components.
                    - [[Grigori Milov]]
                        - hierarchy, in his view in human orgs is the power structure. 
                        - hierarchy is defined in specific terms
                        - a lot depends on intensity of interactions in human systems
                        - catalytic reactions - stable intermediate forms
                    - [[Commits Vortex]]
                        - question about adjacent fields
                        - how to view hierarchy
                        - notion of decomposability, idea of modularity, if there is any implicit heierarchicalism 
                        - multiverses for these maps, visualization of maps of distributed consensus works
                        - 
    6. July 25: Contd: discussion of a Junkspace and Simon articles
    7. Aug 1: stub for systems science led by maier/benjamin
    8. Aug 8: Brainstorming for Distributed Yak Infrastructure 2.0
        - [Yak Collective IT Infrastructure](https://roamresearch.com/#/app/ArtOfGig/page/6fhTlx1p_)
            - Prompt - Product Manager Hat. If we build a newer version what would we build
            - Discussion
                - [[Nathan Acks]] Explainer
                    - Grew up organically
                    - All Discord bots hosted on Vultr server and written in python. Mostly stateless
                    - Website was initially using GitHub pages but now uses Netlify. Netlify builds the jekyll website
                    - GitHub actions addition to infra would be great. Eg [Lunch-time tickets](https://github.com/The-Yak-Collective/lunchtime-tickets)
                - [[Commits Vortex]]
                    - The user experience on Discord is cluttered
                    - Good to have visibility of reading lists
                    - Difficult to track messages. If you are not embedded in the community then it difficult to jump into something
                - [[Grigori Milov]]
                    - Refactor the diagram for easier navigation through it
                    - Simplify Discord Channels
                - [[Venkatesh Rao]]
                    - Two areas that could use creative thinking
                        - Time Dimension of Profile pages
                            - Profile Page on Website vs Discord 
                            - Speed up tempo of Website
                            - Something like GitHub acitvity/commit chart for Profile Page on Website. This gives a live sense of what people are upto in the community
                            - Take exhaust on Discord and show on Profile on Webpage
                        - Infrastructure simplification
                            - Design principles on how bots should behave
                - [[Maier Fenster]]
                    - we have more hopes than people to do the stuff
                    - we need people not only who build it but also people who use it in addition to people who would improve it
                    - the infra part needs traction either from user side or builder side
                - [[Venkatesh Rao]]
                    - Reason for mismatch between hopes and execution could be because there it is distributed volunteer based product
                    - New user onboarding is lacking at the moment. Difficult for them get in the community. How to onboard outsiders? 
                    - YC is between public space and private space
                    - yaktweet command - distributed collective twitter account
                    - fermi gym bootstrapping and related channel
                - [[Commits Vortex]]
                    - Intro channel is where posts go to die
                    - automating updates of people/members to website
                    - sidestep whole issue of member?
                    - prioritize ideas instead of people
                - [[Nathan Acks]]
                    - change website that uses exhaust from Discord
                - [[Maier Fenster]]
                    - what is Discord giving us? should we work somewhere else? 
                - [[Commits Vortex]]
                    - chorus bot similar to yaktweet
                    - telescope bot, RMIT, annotation on post
    9. Aug 15: Discussion of [Time, Clocks and the Ordering of Events in a Distributed System](https://www.microsoft.com/en-us/research/publication/time-clocks-ordering-events-distributed-system/?from=http%3A%2F%2Fresearch.microsoft.com%2Fen-us%2Fum%2Fpeople%2Flamport%2Fpubs%2Ftime-clocks.pdf)
    10. Aug 22:
    11. Aug 29: ¿guest?
    12. Sept 5: US Labor Day, NO MEETING
    13. __Sept 12: Fall planning__
        - Some sort of capstone event/and or publication?
        - Decision on if/how to go DAO
- **Season Fall** (15 sessions, 1 holiday, starting ~ Autumnal Equinox, Sept 22)
    1. Sept 19:
    2. Sept 26:
    3. Oct 3:
    4. Oct 10:
    5. Oct 17:
    6. Oct 24:
    7. Oct 31:
    8. Nov 7:
    9. Nov 14:
    10. Nov 21:
    11. Nov 28:
    12. Dec 5:
    13. Dec 12: Likely annual meeting week... with reporting opp
    14. Dec 19:
    15. Dec 26: Boxing Day, NO MEETING 
