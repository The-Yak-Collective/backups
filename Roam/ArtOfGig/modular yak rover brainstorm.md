- today we are brainstorming modular robot kits (whatever that means)
- step 1 intro
- step 2 (15 min) - each yak takes a subject from the following list and suggest between 3-5 alternative designs
- Step 3 (5 min) - each yak writes down 2-3 questions on the subject and that occurred to them while doing step 2
- Step 4 (5 min each) - each yak present their ideas and questions 
- Step 5 (10 min) pairing subjects. take one idea from each of two subjects and say how they work together. does in parallel, in writing
- Step 6 Summary and discuss linking a mission to some sort of parametrization
- Step 7 - (15 min) each yak comes from home (ok, 15 min at start) with 1-3 ideas of what a modular robotic system/kit looks like. 
    - reminder - this is the start of such a design, so a vision is enough
- Step 8 - (5 min) each yak select one configuration to present
- Step 9 - (20 min) group mashup to define a proposal
- step 10 - (10 min) reality-check: loopback to how design will be used and sample missions
- subjects:
    1. Data power bus - jascha
        - ideas
            - Existing solution space
                - Ethernet (not necessarily RJ45 physical layer -- look at halodi servo drives)
                - Single pair ethernet (new/up and coming in automotive and industrial)
                - Power over ethernet
                - CANBus/LIN Bus (maier link to existing implementation)
                - Hacking phantom power into CANBus/LIN Bus
                - Modulated data over power rails (see industrial 4-20 HART as an example, uses FSK over an analog signal to send both analog+digital)
                - One-wire bus + power (look at smart power packs)
            - Optical connections? Power over optical connections?
            - Everything over Coax or Triax?
            - Wireless?
        - questions
            - Cost/benefit of consolidated power+data?
            - Robustness implications?
            - System architecture implications?
            - Coupling between power and data regions of performance?
    2. Electrical connections
        - ideas
            - see data/power
        - questions
            - see data/power
    3. Mechanical connection -- Venkat
        - ideas
            - Modularity within Jascha's model -- modular version of the 2-wheeler
                - Integrated unit is the whole 2-wheeler. Connection point is between 2 2-wheelers
                - "Subatomic" connections not in scope -- use the strongest one
                - Atom-to-atom ideas
                    - Compliant mechanism (flex plastic): needs strength to make/break
                    - Solenoid based clasp
                    - Non-autonomous ball-joint (human has to make connections)
            - "Edge-heavy" modules (smart wheel, smart power pack etc) -- atoms are functional subassemblies
                - 3 basic building blocks: smart wheel, smart limb, smart chassis
                - Bolted connections, but on standard hole pattern/bolt size like Meccano
            - Budget gray goo -- go as small as possible on the atoms, use a non-autonomous, non-fastener connection mechanism, basically lego-like 3dp parts
        - questions
            - What is the most interesting level of "atom" to work with?
            - Autonomous vs. non-autonomous assembly/disassembly
            - High-strength robust joints (prob non-autonomous) vs. low-strength compliant snap-fit or passive lock type ideas?
            - Routing the data/power wire harness across these mechanical connection types...
    4. Diversity in parts vs alternatives [[Maier Fenster]]
        - ideas
            - basic building block - like a cube of standard size + leaves: wheels, sensors, end effectors.
            - interface parts of each modular unit is standard, but shape inside can be anything, 3D printed
            - copying from a system like lego or erector set - the number and type of each component. hopefully, we can actually use such a kit and just add on parts to make these components into our components.
            - 2 sets of components. first set is designed to make a small number of basic designs. second set is designed to "decorate" the basic designs 
        - questions
            - how do we make a kit that is fun, allows diverse designs and also is not to complex for us to design
            - how do we enable users to add components to the kit and which will allow the kit to be expanded for use for other users (without having too many incompatible alternatives for a same item)
    5. Software modularity -- Rhettg
        - ideas
            - ROS - Standard stack for robotics. Very heavy middleware, but potentially off-the-shelf reusable modules can be "easily" integrated. Supports C++ and Python (maybe others? but "protocol" requires a library, limited support)
            - Unix, I know this. - Maybe robotics / rovers aren't that special. Run a python a script. It does a thing. Maybe it calls another python script. Or anything else a unix system can run.
            - Rhett's Yak Server / Redis Architecture - modules, written in any language, communicate over Redis as a service bus. Heavy in the sense that it requires multiple components, likely distributed via docker, etc. But operationally straightforward to install, supports wide variety of situations.
            - Microcontroller Stack - NASA Flightcontroller style. Designed for components compiled into a single piece of software. It is the brains and the operating system. fprime. Requires a single language, usually C++
            - Rhett's Janky Microcontroller Stack (CiC). C, Arduino
        - questions
            - What kind of compute? Low power microcontrollers vs. Full Linux System changes the game.
            - What kind of capabilities, simple motor control, teleoperation, or machine learning powered autonomy.
            - Are there AI/ML stacks that we don't know about? Or is ROS integration the assumption.
            - Do we care about being part of a software ecosystem?
            - Do we care or are limited by languages we want to use?
            - How reliable does the software need to be. Hobby vs. Space Mission
    6. brain and internal organs (cpu, power supply, sensors, etc) -- Eric
        - ideas
            - Organ categories: Compute, Power, Sensor, Actuator? Assuming radio/comm is sensor.
            - Identify MVOs---Minimum Viable Organisms---a series of fully-functioning matriochkas
            - Redundancy, fall backs and fail safes in structuring/validating the doll layers.
            - Scavengability scope and limits: What is the minimal MVO? What component dependency make some critical? Notion of component criticality (higher criticality=# component links, lower scavengability)
            - Swapability of components, related to their criticality (a bit like RAID0-5, iSCSI, etc disks in data storage)
            - Compute split lizard / neocortex sides, for energy management and fail safe.
            - Test framework along system layers
        - questions
            - Other categories?
            - Reliable energy lookup table per component
            - How to test MVOs, and automate testing? For reproducible tests.
    7. Configuration -- [[Robert Peake]]
        - ideas
            - Universal configuration, component distribution (SBC, microcontroller, etc.)
                - Configuration compilation and application intervals (game loops)
                - Runtime v compile-time
            - Configuration as code (Puppet, Chef, Ansible, Docker, Kubernetes)
                - Declarative / idempotent configuration and reconfiguration
            - Decentralised configuration (octopus mode)
            - Linting and confidence; failures of intent v. failures of syntax
            - Easter eggs :)
            - Environment as configuration (beacons, waypoints, other guides)
            - Machine learning versus machine telling (hyperparameters and toggle switches)
            - Minimum viable imperatives and RFC-style protocol declarations (opposite of configuration is discovery - Venkat; configuration opposed to convention - Eric) leads to "negotiation based on discovery" and "reconfiguration based on new conventions"
                - Language: should, should not, must, must not, always, never
        - questions
            - What needs to be preconfigured?
            - What needs to be configured on-the-fly? How long does it take? Can we have contact? From where?
            - At what rate does configuration apply? Hardware clock? Fixed pulse? Set it and forget it?
            - What needs to be self-configuring? What is disk and what is RAM?
            - To what extent does "configuration" manifest as analog?
            - What elements need to be absolute, what need to be "negotiable"
            - How do we demystify a dark art (smtpd)?
    8. modularity on existing bot  -- Venkat
        - ideas
            - Basically a stylized build vs. buy decision: teardown systematically and ask how each part can be replaced with a more standard, more general part
            - Design for monolithic first: ideal design, assuming all bespoke parts and then modularize (like in chips: monolithic --> SoC/IP) OR go the other way (Tesla)
            - Separate architecture into a chasis+fabric/interconnect component (more bespoke) and swappable modules -- centralize the non-modular bits into the fewest systemic pieces
            - Alternative approach: shrink minimal core and have a lot more "hard points" with flexible extension capabilities. Payload deck is hte obvious one, but also: wheel hubs, a manipulator with generic end-effector etc.
            - Put design in the "extended universe" of an existing design language. Eg. mechanical components should use meccano standards (hole spacing, fastener size) 
            - "Teardown for modularity..." (as opposed to "design for modularity")
        - questions
            - How does this apply specifically to the Yakasaur bot Jascha is designing
                - Eg: put physical geometry into "meccanno space"
                - Design standoffs to hold multiple candidate cards (RPi, BBB)
                - Payload deck should be open to standard sensors
                - Converged design BUT with component choices? Eg: pick a shaft size and a motor minimum rating, but design chassis to hold at least 2 motors
                - Pick a few components, eg. wheels, to be for many swappable units
            - What is a "test" for modularity? Interchangeable parts among instances of same design obviously, but what else?
                - "Improvised field repairability? If a robot breaks down in some way, can you improvise a repair using random stuff? 
            - What are general properties that measure modularizability of an existing bot? Is Spot the dog more or less modularizable than Roomba?
            - 
    9. base station -- Jascha
        - ideas
            - Immobile?
                - Provides resources that are expensive to constantly carry around (ie. heavy stuff/large volume/low density object)
                - Provides resources that require large surface area (ie. solar, antenna aperture area)
                - Compute?
                - Immobile (not self-propelled), but movable by rovers.
                - Exists in physically distinct environment (ie. comms satellite)
            - Mobile
                - Individual rovers can assume the base station "role"
                - Multiple rovers can "platoon" or physically link to assume base station role
            - How expensive?
                - Maybe it is so cheap to build a base station, you build it and then abandon when you need to build another (ie. starcraft pylons)
        - questions
            - Definition? Potentially very consequential architecturally
            - When must a base station differ from a rover, and how? Can a rover serve all base station functions?
            - Can multiple rovers (atoms) combine to form a base station? Is a base station a molecule?
            - Can rovers move the base station, if it is a discrete and separate element?
    10. power supply - [[Maier Fenster]]
        - ideas
            - power supply is modular so you can add storage and/or power output as needed
                - power blocks may have own unique connectors for mating
            - power supply is distributed, so adding power means plugging a power block somewhere
                - could result in more than one power bus
            - separate storage, power delivery (bus control), power monitoring, power source finding and power acquisition functions - each its own component(s)
                - some of these components may have a software side - maybe they talk to main brain or upload to it. or maybe not. in any case, probably need some smarts and a data connection. data connection can be wireless, as low bandwidth compared to video.  
                    - perhaps map to metabolic system (liver, pancreas) in human
                    - consider all data to be wireless - maybe we do not need much bus, just power distribution
            - power modules associated with power-using components, like motors. again - maybe a dedicated connector. maybe dedicated bus
                - but want it to be easy to recharge them all together - manual attach/detach all for charging big headache. if we agree to slow charging, can use data/power bus or just data bus
                - option of all the power elements being a single component, like a layer/net, that we add onto device and can detach as a unit. yes, limits geometrical options. actually, same design can be used for data. cut to size? assemble separately?
        - questions
            - how do we know and then deal with power needs, when user can simply add on power sinks uncontrollably
            - can we leave power design to user
            - is power cycle time something we want to set ahead of time? limit in some way or enable all options
            - soft fail on power issues - how do we make it so?
    11. sensors and end effectors -- [[Anuraj R]]
        - ideas
            - cameras, lidars are light based. radars use other part of the electromagnetic spectrum
            - magnetometers, odometers, gyroscopes, temperature sensors, ultra sonic, current sensors, 
            - radioactivity sensors, water detection, 
            - complex sensors made to detect water and other chemicals that are on a base station and other robots bring in samples
            - what sort of protection is needed for the sensors
            - modular end effectors to allow different types of manipulation and combine it with sensing
            - self identificaiton of sensors
        - questions
            - What do we want sense? proprioception vs interception
            - What kind of sensors do work in the given environment. Eg Moon does not have any magnetic poles so this rules out magnetometer 
            - power considerations of the sensors
            - How can we do this based parts that are used to construct the body of the rover
- pairs
    - Software + Data/Bus Connection -- rhettg
        - Proprietary or esoteric bus further limits what software you can use, languages available, etc. Ethernet + IP sure is nice. Also whatever is builtin to the platform (i2c on raspberry pi, serial, etc.) 
            - Imagine the increased complexity of integrating a commercial driver for some hardware to speak a certain protocol into a microcontroller, compared to using wifi. 
        - How much data do we need to move?
        - What sort of latencies are dealing with? Same rover might have low-latency motor control and high bandwidth image processing.
        - Is it software talking to other software at a high level, or just turning on a motor.
    - Software + Mechanical connection -- Venkat
        - pieces connected together should see themselves as a single thing but be individuals when separate... this should be seamless
        - The larger the atoms, the easier this is: a set of big-atom 2-wheelers each with an RPi and power on board will connect in a way that composes a distributed computer in a serial topology basically
        - Can each module have its own small brain (microcontroller or smaller all the way to RPi) talking across the mechanical connection?
        - Can we make up a set of "common signals" that are polled for a global intelligence data stream? Eg. a sub-ROS module that puts out signals on 1 pin that alternates from "health" (0/1), energy level (0-256), etc. 
        - Can the connection type reflect trust? Eg: bolted connection creates a high-trust ROS node but snap-on temp connection = low-trust messaging pathway
    - Wireless + budget grey goo -- Jascha
        - Software-defined mechanical connection.
        - Why link together mechanically when motion can be coordinated between atoms? Is there actually mechanical force being transmitted over the physical connection out of necessity or is it just convenience?
        - Can the sensing and actuation be completely decoupled? Is the headless horseman a useful or advantageous system architecture
        - Wireless power transfer imposes serious constraints, but is feasible in certain circumstances.
        - Does wireless provide advantages in the black box to black box interconnect standardization problem? How often is it actually net cheaper?
    - bus + diversity [[Maier Fenster]]
        - splitting data and power inside the unit can be a problem
            - one solution is when we provide the interfaces part, that the interface includes non-reflecting circuitry 
            - another solution is dedicated splitting and bus-end components, that have no structural function
            - either way, we need some sort of bus ending to prevent reflections, power leakage, noise at open ends
    - Mech + data/bus - anuraj
        - choice of atomic unit affects of bus 
- summary
    - some basic issues affect many decisions
        - robustness (as in a rugged rover) - defines connections, perhaps also module size
        - what are the other top level design considerations
            - 