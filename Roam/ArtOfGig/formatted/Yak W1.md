- Yak W1 rough design
    - Chassis
        - Fits in a 60cm x 30 cm x 20 cm cuboid
        - 3-wheel tricycle with solar panels
        - Main chasis will be an alumimum perf board with flexible capacity for holding stuff
    - Drivetrain
        - 2 independent drive motors for the rear wheels, steering via third wheel
    - Power subsystem
        - Solar panels
        - LiIon battery pack
    - Sensors
        - "Whisker" based proximal obstacle sensing
        - LIDAR?
        - Radar (can we get cheap enough?)
        - Drive cameras
    - Navigation and control
        - GPS
        - SLAM style local navigation
        - Stored map for deployment zone
    - Communications
        - Starlink WiFi
        - Continuous telemetry of system healthy
    - Payload
        - Gimballed surveying camera (dual use for self inspection)
        - Maybe some sort of atmosphere sensor, like pollution?
    - Compute
        - RPi for general compute (2x redudant maybe?)
        - Might need a couple of Arduinos for microcontroller needs and also fallback basic behaviors mode if the compute or comms fail
    - Software stack
        - System health and diagnostics
        - Comms
        - Failure mode id and recovery/reconfig
        - Basic path planning and navigation
        - API-controlled payload ops
        - etc.

# Backlinks
## [Yak Rover 2021 Builds](<Yak Rover 2021 Builds.md>)
- [Yak W1](<Yak W1.md>)
