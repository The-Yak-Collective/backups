# Yak Collective backups

## Roam

You need:

- [`git`](https://git-scm.com/)
- [`curl`](https://curl.se/)
- [`edn-tool`](https://github.com/greglook/edn-tool) (v0.2.0 included in this repo)
- [`msgpack-tools`](https://github.com/ludocode/msgpack-tools)
- A \*NIX environment (Linux, macOS, or [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/install))
- Write access to [this repo](https://github.com/The-Yak-Collective/backups)

Download the Markdown (note that you'll need to replace `Roam-Export` in the downloaded file name with the graph name), EDN, and msgpack backups of the [Art of Gig](https://roamresearch.com/#/app/ArtOfGig/search) and [Astonishing Stories](https://roamresearch.com/#/app/Astonishing_Stories/search) [Roam Research](https://roamresearch.com/) graphs.

Then, in the directory where you've downloaded those files...

```bash
git clone git@github.com:The-Yak-Collective/backups.git
chmod +x backups/bin/*

ln -sf edn-$(uname | tr "[[:upper:]]" "[[:lower:]]")-amd64 backups/bin/edn

cd backups/Roam

unzip -u ../../ArtOfGig-*.zip            -d ArtOfGig
unzip -u ../../Astonishing_Stories-*.zip -d Astonishing_Stories

msgpack2json -pb < ../../ArtOfGig-*.msgpack            > ArtOfGig.json
msgpack2json -pb < ../../Astonishing_Stories-*.msgpack > Astonishing_Stories.json

../bin/edn --no-color < ../../ArtOfGig-*.edn            > ArtOfGig.edn
../bin/edn --no-color < ../../Astonishing_Stories-*.edn > Astonishing_Stories.edn

../bin/roam-asset-downloader.sh

cd ..
git add -A -v
git commit -m "Roam Research backup"
git push

cd ..
rm -rf ArtOfGig-* Astonishing_Stories-* backups
```

## Twitter

You need:

- [`git`](https://git-scm.com/)
- [`python`](https://www.python.org/) (3.x)
- A \*NIX environment (Linux, macOS, or [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/install))
- Write access to [this repo](https://github.com/The-Yak-Collective/backups)

Begin by downloading a full [data archives](https://twitter.com/settings/download_your_data) from [Twitter](https://twitter.com) for [@yak_collective](https://twitter.com/yak_collective) (this will take a day or two to become available after being requested).

Once you have the archive, extract it somewhere. Then...

```bash
export WORKING_DIR="$(pwd)"

git clone git@github.com:The-Yak-Collective/backups.git

git clone https://github.com/timhutton/twitter-archive-parser.git
python3 -m venv twitter-archive-parser

cd twitter-archive-parser
. ./bin/activate

pip install --upgrade pip
pip install imagesize requests

chmod +x parser.py

cd $PATH_TO_EXTRACTED_TWITTER_DATA_ARCHIVE_DIR

"$WORKING_DIR"/twitter-archive-parser/parser.py

find . -empty -delete

cd data
rm -f ip-*.js *-ip.js *token*.js *device*.js

deactivate

cd "$WORKING_DIR"/backups
rm -rf Twitter
mv "$PATH_TO_EXTRACTED_TWITTER_DATA_ARCHIVE_DIR" Twitter
git add -A -v
git commit -m "Twitter backup"
git push

cd ..
rm -rf backups twitter-archive-parser
unset WORKING_DIR
```
