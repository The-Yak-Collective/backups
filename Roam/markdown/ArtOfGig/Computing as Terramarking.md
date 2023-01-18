- Inspired by [[YakCon]] session on [[Distributed Systems and Robotics]]
- Basic idea: 
    - Take the logic of cellular automata/game of life to a practical level, but short of terraforming
    - Traditional computing
        1. Powerful, disembodied static, stateful agents ("computers")
        2. No meaningful notion of embedding/containing space
        3. Explicit network for interconnecting in space
        4. Explicit memory for interconnecting in time
        5. Permissioning is "private unless made public" default
            - No notion of collocation in a shared space (except namespace/addresspace collisions)
            - Mutual visibility is via discovery on networks (needs sniffing etc)
            - Natural laws are weak/not that relevant
        6. All "dynamics" happen in the private "RAM" memory of agents
        7. "Communication" is default direct (messaging) between agents
            - There is no notion of communication without intent
                - Even hacking/intrusion fits within the paradigm of private-only spaces connected by links
        8. "Persistence" is memory operations defaulting to 1 agent
        9. Paradigm assumes code is more powerful than data ("Software 1.0")
        10. Distributed computing is unnatural and requires 
            - Can have shared memory (rackscale, cloud) in a messy hierarchy
            - Processing is still in cores/threads with message passing
            - Needs the abstraction of the "network" to be meaningfully defined
        11. Private by default, social by design
        12. All agents are equally "outside" the environment of network and memory
    - Embodied (Situated) computing
        1. Embodied, mobile, limited capacity agents (in the limit, stateless, memoryless)
        2. Exist in a shared open space-time that contains most of the intelligence
        3. Implicit spatial connectedness via embedding
        4. Communication in space and time converged rather than distinct
        5. Permissioning is "public unless made private" default
            - Collocation (eg: 2 pebble automata in 1 cell or not)
            - Mutual visibility
            - Natural laws (2 physical objects can't occupy the same point)
        6. All "dynamics" happens via modification of the environment
        7. "Communication" is by reading the shared environment
            - There is a notion of communication by simply existing in a shared space
                - Eg: one robot can watch the flashing lights of another, or what it is doing
        8. "Persistence" is a property of the shared environment
        9. Paradigm assumes data is more powerful than code ("Software 2.0")
        10. Distributed computing is natural and features
            - Memory is shared by default and naturally managed; privacy requires construction (borders)
            - Processing is an emergent property of the environment state, there is no real equivalent of "cores" -- there are just environment-modifying "operators" (simple robots)
            - Does not really need the abstraction of the "network" -- it's all just stuff in space/time
        11. Social by default, private by design (camouflage etc)
        12. All agents are part of the environment of other agents 
            - For eg: my robot can go make a chalk-mark on your robot
- Implications
    - Build the simplest possible robots
    - Treat the environment as the primary comms and memory medium
    - Treat digital networking as a "plus" feature
    - Treat all behavior as environment modification
        - Opposite of "leave only footprints, take only pictures"
    - Natural spectrum from 
    - Code memory and data memory converge...
- Discussion questions
    - What's a good design for a terramarking computer? (eg: beehive?)
        - ants/pheromone trails...
        - bees dancing
    - Can we design high-capacity memory into the environment (eg flash drives in walls)
        - wireless
    - Can we treat processing as sequential specialist "insect" operations on a memory?
- Discussion
    - Processing can be location dependent
        - "red button" that's context-aware
        - hopscotch style games
    - English gardens
        - ruined statues, moods linked to space
            - walking through the garden is mood programming
        - fiction -- zelzany amber
            - when you walk a pattern, things happen to you
    - Virtual rover -- browser/terra that can be marked
        - bookmarking etc.
        - webcrawlers
    - Dynamicland
        - Bret Victor https://dynamicland.org/
        - PubSub structure of stuff in the environment
        - Container was the computer
    - Intensity
        - Physical environment is very high latency
        - High bandwidth but low availability
        - Needs to be "civilized" for use
    - Ping packets as a way to use network as a substrate
    - Practical apps
        - Very small computers (ant-scale) -- to bacterium
            - (gray goo)
            - Sub IC size
        - Large time scales (think in geological terms)
            - "This is not a place of honor"
        - Patterns in the environment
            - Traffic signs
            - Birdsong
            - 
