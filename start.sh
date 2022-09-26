if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/rd886/Alexa-V2.git /Alexa-V2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Alexa-V2
fi
cd /Alexa-V2
pip3 install -U -r requirements.txt
echo "Starting Panda....🔥"
python3 bot.py
