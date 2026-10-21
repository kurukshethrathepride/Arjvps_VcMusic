echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/kurukshethrathepride/Arjvps_VcMusic /arjvps_Vc
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/kurukshethrathepride/Arjvps_VcMusic -b $BRANCH /arjvps_Vc
fi
cd /arjvps_VcMusic
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
