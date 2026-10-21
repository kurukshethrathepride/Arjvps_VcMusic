echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/kurukshethrathepride/Arjvps_VcMusic /Arjvps_Vc
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/kurukshethrathepride/Arjvps_VcMusic -b $BRANCH /Arjvps_Vc
fi
cd /Arjvps_VcMusic
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
