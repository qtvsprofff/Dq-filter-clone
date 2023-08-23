if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/qtvsprofff/Dq-filter-clone /Dq-filter-clone
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Dq-filter-clone
fi
cd /DQTheFileDonorBot
pip3 install -U -r requirements.txt
echo "Starting Dq-filter-clone...."
python3 bot.py
