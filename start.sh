if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/DeveloperSubhadeep1/hell_king_bot_v1.2.25.git
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /HeKing
fi
cd /HeKing
pip3 install -U -r requirements.txt
echo "Starting HeKing...."
python3 bot.py
