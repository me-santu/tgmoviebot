if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://git.heroku.com/imdbautofilterbot.git /imdbautofilterbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /imdbautofilterbot
fi
cd /imdbautofilterbot
pip freeze > requirements.txt
echo "Starting Bot...."
python3 bot.py
