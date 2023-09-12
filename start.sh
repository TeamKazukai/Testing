if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TeamKazukai/Testing.git /Testing 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Testing 
fi
cd /Testing 
pip3 install -U -r requirements.txt
echo "Starting AutoMovieBot...."
python3 bot.py
