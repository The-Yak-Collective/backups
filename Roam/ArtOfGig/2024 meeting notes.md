- 2024-02-13
    - ML and Robotics
    - Component ML vs. 
    - **Universal controller problem**
        - Optimal control
            - Adaptive control
            - Robot control
            - Universal stablising control
            - Internal model principle
                - Switching approach to many conditions, but no stability guarantee
        - In AI, search for a piece of software that can control any robotic body
        - "Can operate seamlessly in any kind of environment, any object"
    - "Auto RT"
    - LLM, LMM and others look universal as they deal with an underlying notion of sequence, with some temporality.
    - "Toward General Purpose..." robotics survey.
    - Discussion on optimal control vs. LMM based approaches
        - OC has careful model of the robot I/O and environment.
        - LMM "encodes" aspects of the environment via training.
        - An LMM trained on Earth would likely me more capable in an unknown environment like Mars, but still be lacking knowledge of the environment. E.g. skidding on regolith, unavailable on Earth.
    - Mugatu bipedal robot
- 2024-02-20
    - **Multi "brain" MCU - CPU -GPU, ec**
        - When would the ML brain be used?
        - Use cases
        - Role allocation
        - E.g. of the man who mistakes his wife for a hat: Brain section damage
        - Failure modes
    - Board option we discuss little is the Coral: https://coral.ai/products/#prototyping-products
    - Role allocation
        - Oak-D
        - Jetson run LLM fed from Oak-D and other sensors
    - Capabilities of Oak-D
        - Can run different software, including object segmentation and classification.
        - https://github.com/thedevyansh/oak-d
        - https://docs.luxonis.com/en/latest/pages/tutorials/first_steps/#default-model
    - Experiment
        - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2FXvzN0GnSAR.png?alt=media&token=f86b3742-9150-4b7e-b799-9a427ab4f33d)
        - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2FSnKWP7V2Yq.png?alt=media&token=1c9c230b-3b1d-4e0a-9677-1fab73eee2e4)
        - GPT-4 can interpret basic data series data. And it can predict what happens or what to do. It can also generate data "plans", roughly convincing. and impressive.
        - Can also (try to) generate graphical representation of he data.![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2FnVtbM1Y96x.png?alt=media&token=e55600c3-547d-48f3-8bbc-edf9b8b94f9f)
- 2024-02-28
    - LLMs as a logic processor for rovers (narrate only, vs. narrate+act)
    - LLMs as a popular explanatory interface for low-code/no-code entrypoint
    - Extend discussion about multi-compute architectures
        - RaspberryPi (+GPU-like compute extensions) and Jetson Nano
    - Config options
        - Jetson Orin as whole brain
        - RPi5 + PCIe --> Hat with M.2 connector --> Accelerator like Coral
        - OrangePi (RaspberryPi alternative) can be smaller alternative as M.2 connector right on the board (no need for a hat)
        - [Axelera](https://www.axelera.ai/) alternative ML board
            - Has its own Voyager SDK
            - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2F6FvbQtByWw.png?alt=media&token=377787e1-62ba-4a49-811a-547dc01a516e)
        - More specialised HW like TPU, etc.Used to focus the architecture to CNN, now on accelerating transformer-like payloads (typically language models).
        - Frameworks
            - Jetpack for Jetson (Nvidia)
            - Tensorflow Lite (many hardware)
            - Voyager (Axelera)
    - Decision points
        - Which low-level framework? (Tensorflow level of abstraction)
        - Which complete vertical stack (for getting to low-code, e.g. TVM compiler)
        - Which hardware config? Jetson Orin, Coral, Axelera, FPGA directly (Amaranth language LLKs talking to pytorch and below)
        - RISCV -- BeagleV Fire 
        - Power budget for ML
        - Low-code vs. high-code
        - Robust long-term vs. easy start
    - Constraint/bounding box
        - M.2 connectors are limited supply
        - 4G comms needs M.2, so does AI accelerator
        - Size (has to be no larger than RPi or Jetson)
        - Cooling/thermal considerations (fan etc)
        - Connections through i2c (other sensors) and SPI (camera)
        - Motor control 
            - breakout boards
            - single integrated hat
        - "Hat architecture" constraints
            - RPi = hats
            - Beaglebone = capes
            - Arduino = shields
    - Rough roadmap
        - Yakasaur 1.0 = small brain/big brain
        - Yakasaur 1.1 = +Oak-D + USB
            - Other connector options possible
        - Yakasaur 2.0 = + ML accelerator
- 2024-3-4
    - How these computes interact with each other
        - Protocol for failover in a redundant architecture
- 2024-03-19
    - Are we too slow? Are we too late?
        - What about using new stuff every week? Why not focusing and build up?
        - Depends on style and stability of technology.
        - Questions become
            - What is worth doing?
            - What are the stable breakthroughs?
    - Discussions and readings:
        - Phases: Build each, build common, common platform like Tumblr, Yakasaur, LLM/crypto "only" or mainly.
        - https://arxiv.org/pdf/2310.09605.pdf
        - https://typeset.io/questions/can-we-use-llms-to-learn-a-representation-of-eeg-signals-35xf4vnw7f
        - https://www.medrxiv.org/content/10.1101/2023.06.28.23291916v1.full.pdf
        - https://x.com/chenwang_j/status/1768304378577084739?s=20
        - https://galaxyrvr.sunfounder.com/
- 2024-03-26
    - PCB design: Anuraj's dual Nano new board
        - Two designs: Components and layout.
        - Components are the different electronics.
        - Layout is how the components are arranged physically.
        - Done with [KiCad](https://www.kicad.org/), OSS. Tried with Flux, but confusing and knew KiCad from earlier experienc.
        - JLCPCB to manufacture. Faster if they have all required components sourced
        - Use KiCad's catalogue, or snapmedia.com to find parts' footprints to put on the layout.
        - ~55€ for manufacture and components (only ~4€ for PCB, way more expensive in, say, a German manufacturer)
        - Actual PCB production is usually well automated. E.g. of PCBWay assembly manufacturing machine video on YouTube.
        - KiCad has built-in validation (optional, so no validation by default and can be creating useless PCB), and there are there OSS for simulation, et
        - https://discord.com/channels/692111190851059762/779070653122084864/1221484089236787321
- 2024-04-09
    - PCB design problems
    - Rhett's work
        - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2FDhlq55heJL.png?alt=media&token=9852ab89-ea0d-498b-9dbc-095147e81f08)
        - Trial but connections too close.
        - Errors have mysterious ways, problems with too many parts.
        - Lines may be too close to each other.
        - Too many Y shapes?
        - Comments from pros:
            - Avoid 90º, rather use 45º for physical reasons. https://electronics.stackexchange.com/questions/226582/pcb-90-degree-angles and https://www.signalintegrityjournal.com/articles/2104-should-you-worry-about-90-degree-bends-in-circuit-board-traces
            - Problem with filling space with ground https://electronics.stackexchange.com/questions/680791/should-i-fill-free-pcb-space-with-ground
    - Anuraj's work
        - Made boards received
        - Did not work with Arduino connected.
        - Problem was tests were done with old code, no properly recompiled.
        - Debugging
            - Found a problem of reset current, by measuring.
            - A pin was receiving a square signal (duty cycle), while it should not have.
            - Allowed to find a design problem, with capacity cycle (charge/discharge)
            - Problem is that 2 different reset pins get connected (reset pushbutton on Arduino schematics)
        - Solution
            - Found the 2 lines connecting the reset pins
            - Cut them physically
            - One horizontal on the left, and a diagonal one between the two main chips on the board.
            - After cut, works as expected.