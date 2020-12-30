- Zis is the Z1 prototype page, where the main focus is brainy & generic software for rovers. In scope:
    - Off-the-shelf hardware, and most likely other Yaks.
    - Software "brain" for rovers, configurable or automatically adaptable to the actual hardware.
    - Remote control, debugging, telemetry/monitoring.
- Current Activity
    - Hardware: HiWonder SpiderPi
    - Images: https://postimg.cc/gallery/FQZ0cgT
    - Measurements for reference (WIP)
        - Metrics on "force": Apparently powerful servos (20Kg/cm2). Measurements t understand what that translates to in terms of lift, power on each leg relative to others, etc.
        - Generic metrics like speed, etc.
        - Temperature mapping using sensors and the Pi internal data: Useful when considering building water-proof clothing, etc.
        - Linear speed, turn speed.
    - Possible features
        - RT video stream from the camera (and other sensors?)
        - ability to select or upload (via github?) a code to be executed by robot and view the effect in RT, including video and servo positions
for now, i am thinking re delegate, that you have code on the robot and code on the server. one or both may need help. for video, why not stream using twilio?

# Backlinks
## [Yak Rover 2021 Builds](<Yak Rover 2021 Builds.md>)
- [Yak Z1](<Yak Z1.md>)

