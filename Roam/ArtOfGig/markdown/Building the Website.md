owner:: [[Nathan Acks]]
last updated:: [[August 30th, 2020]]
last updated by:: [[Nathan Acks]]
# Building Locally
    ## Build Requirements
        [[Netlify]] uses an [Ubuntu](https://ubuntu.com/) container for builds.
            - If you already use Ubuntu, or can work on an Ubuntu virtual machine, then you should have no issues.
            - macOS also should work.
            - If you have Windows 10 Pro, you can use the [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10) (WSL).
                - Basic setup
                    1. Open up your **Settings** app and go to **Apps > Apps & features > Related settings > More Windows features**.
                    2. Install the **Windows Subsystem for Linux**. Reboot when prompted.
                    3. Open up the **Microsoft Store** and install [Ubuntu](https://www.microsoft.com/en-us/p/ubuntu/9nblggh4msv6).
                    4. Open up the **Ubuntu** app to finish the installation.
                - If you're running Windows 10 release 1903 or later, you can get __much__ better results by converting to WSL 2.
                    1. Follow the steps above to install Ubuntu.
                    2. Go back to your **Settings** app, go to **Apps > Apps & features > Related settings > More Windows features**, and install the following features:
                        - Hyper-V
                        - Virtual Machine Platform
                        - Windows Hypervisor Platform
                    3. Reboot.
                    4. Open up **PowerShell** and run the following command:
                        ```shell
wsl.exe --set-version Ubuntu 2```
            - If you are running Windows 10 Home or don't want to install WSL, it is possible to [install Jekyll on Windows natively](https://jekyllrb.com/docs/installation/windows/).
                - ^^However, some website features do __not__ build correctly on native Windows installs.^^
                - If you're building on Windows natively and something seems broken in `netlify-prod`, it's a good bet that the problem is your build environment, and __not__ the website.
    ## Build Process
        1. Make sure you have the necessary system-wide pre-requisites.
            - If you're using Ubuntu (either natively or via WSL):
                ```shell
sudo apt update
sudo apt full-upgrade
sudo apt install bundler```
            - If you're running macOS, follow the [Jekyll on macOS](https://jekyllrb.com/docs/installation/macos/) guide.
            - If you're running Windows (__without WSL__), follow the [Jekyll on Windows](https://jekyllrb.com/docs/installation/windows/) guide.
        2. Check out the [website repo](https://github.com/The-Yak-Collective/yakcollective/).
            - Unless you already have commit access, you'll want to [fork](https://help.github.com/en/github/getting-started-with-github/fork-a-repo) the [The-Yak-Collective/yakcollective](https://github.com/The-Yak-Collective/yakcollective/) repo first.
            - The [GitHub Desktop](https://desktop.github.com/) app makes working with repos really easy, and is highly recommended.
        3. Set up the your local build environment (this all happens using the terminal; where you see `$REPO_PATH`, just use whatever path you checked the repository out to in the last step):
            ```shell
cd $REPO_PATH
bundle config set path vendor/bundle
bundle install```
        4. Run `bundle exec jekyll serve` to fire up Jekyll's local server mode. This will build your site and then let you see it by going to [http://localhost:4000](http://localhost:4000) in your web browser.
            - __Most of the time__, Jekyll will automatically rebuild the site whenever you make a change.
                - Jekyll won't detect changes that are made on Windows' file systems (so, any time you're using Jekyll natively, or if you're working with directories under `/mnt/c` in WSL).
                - Changes to `_config.yml` aren't detected.
            - To stop the Jekyll server, use **Ctrl + C**.
            - If you need to see the actual files Jekyll will generate, use `bundle exec jekyll build` instead. The output will be in the `_site` directory.
# Building on [[Netlify]]
    - Netlify will automatically rebuild the site whenever changes are pushed to the repo and/or merged in.
    - ^^**Warning!** Be aware that Netlify's build environment uses UTC.^^
