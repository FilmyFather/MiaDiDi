if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/FilmyFather/MiaDiDi.git /MiaDiDi 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MiaDiDi 
fi
cd /MiaDiDi
pip3 install -U -r requirements.txt
echo "Starting MiaDiDi...."
python3 bot.py
