- Zis is the Z1 prototype page, where the main focus is brainy & generic software for rovers. In scope:
    - Off-the-shelf hardware, and most likely other Yaks.
    - Software "brain" for rovers, configurable or automatically adaptable to the actual hardware.
    - Remote control, debugging, telemetry/monitoring.
    - [Maier Fenster](<Maier Fenster.md>) i think it will need more sophisticated gaits
- Current Activity
    - Hardware: HiWonder SpiderPi
    - Images: https://postimg.cc/gallery/FQZ0cgT
    - Measurements for reference (WIP)
        - Metrics on "force": Apparently powerful servos (20Kg/cm2). Measurements t understand what that translates to in terms of lift, power on each leg relative to others, etc.
            - [Maier Fenster](<Maier Fenster.md>) i would ask - can it climb a rock or tree by hugging it?
        - Generic metrics like speed, etc.
        - Temperature mapping using sensors and the Pi internal data: Useful when considering building water-proof clothing, etc.
        - Linear speed, turn speed.
    - Possible features
        - RT video stream from the camera (and other sensors?)
        - ability to select or upload (via github?) a code to be executed by robot and view the effect in RT, including video and servo positions
for now, i am thinking re delegate, that you have code on the robot and code on the server. one or both may need help. for video, why not stream using twilio?
    - **[temporary twitter handle](<temporary twitter handle.md>):** @YakRover
    - **[discord username](<discord username.md>):** @IamZ1
- Notes
    - 2020-12-31
        - A SpiderPi is online, yet through SSH and manual work for now. The battery problem remains, but I have found a simple solution by tracking custom system services and turning them off. Now a "minimal" stack, with just what is needed to run the code. And just this allowed completing system updates without depleting the battery.
            - [Maier Fenster](<Maier Fenster.md>) can you share what services to stop? do you have a shell command for it?
        - As for @Maier (U+2)[6756](<6756.md>) suggestion turning off the servos, that did not work. After some search, I found the standard document linked above is superseded by one for the bot series (https://www.dropbox.com/sh/b3v81sb9nwir16q/AACkK-tg0q39fKJZcSl-YrqOa/LX-16A%20Bus%20Servo?dl=0&preview=LewanSoul+Bus+Servo+Communication+Protocol.pdf&subfolder_nav_tracking=1), and the command to turn off servos succeed by does nothing apparently. Code available if someone is interested.
        - The battery problem remains and may kill the bot for a reboot anytime if "pushed too much". For now trying to push toward the intended goal to remote control/remote install code, while looking a ways to deal with battery (i.e. learning the platform).
    - 2021-01-04
        - Idea from Maier: Power the Pi from USB-C, and servos through the controller (the provided power via battery).
            - No luck. The Pi 4 is not new and probably hitting https://www.tomshardware.com/news/raspberry-pi-4-usb-c-update . I have 4 cables from different makers around, each one of them "cheap" and yet e-marked. I guess that is why the Pi does not charge. Internet tells me it is not easy to know which Pi 4 model is fixed, so better to assume it is not (the bot are about 1 year old).
            - Walked part of the "action group" route: The code comes with action groups as SQLite files. These files are basically servo settings records, with each record a set of value for each of the 18 servos. Some of the groups have 1 record, some a few dozens.
                - The code uses action groups only in LeServer, which I disabled, so it does not run anymore.
                - The servo controller stores some values, as it runs always the same dance on startup (toward a spider like pose). I did not fine how to access them yet. The servo controller documentation is lacking, as much as my knowledge.
                - Contacted HiWonder to get some pointers.
            - 
        - Found mjpg_streamer service consuming quite some CPU, even idle. Disabled to save current, but still not enough.
        - Another idea from Maier: Physically unplug servos.
            - Servos connected in 3 series. Unplugged 2 series (4 legs) to see how it holds.
            - Unplugging 1 series (2 legs) did not change depletion.
        - Started trying Twitch as an alternative to Twilio, but after too much time discovered it also requires a mobile phone number to create a video stream.

# Backlinks
## [Yak Rover 2021 Builds](<Yak Rover 2021 Builds.md>)
- [Yak Z1](<Yak Z1.md>)

