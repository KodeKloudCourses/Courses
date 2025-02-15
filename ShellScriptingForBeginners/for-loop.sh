# 1
for file in $(ls)
do
    echo Line count of $file is $(cat $file | wc -l)
done

#2
for package in $(cat install-packages.txt)
do
    sudo apt-get -y install $package
done

#3
for mission in lunar-mission mars-mission jupiter-mission saturn-mission mercury-mission
do
        bash /home/bob/create-and-launch-rocket $mission
done

#4
for mission_name in $(cat /home/bob/mission-names.txt)
do
    bash /home/bob/create-and-launch-rocket $mission_name
done

#5 
for i in {31..40}
do
        echo $i
done

#6
echo -e " Log name   \t      GET      \t      POST    \t   DELETE "
echo -e "------------------------------------------------------------"

for app in $(cat /home/bob/apps.txt)
do
  get_requests=$(cat /var/log/apps/${app}_app.log | grep "GET" | wc -l)
  post_requests=$(cat /var/log/apps/${app}_app.log | grep "POST" | wc -l)
  delete_requests=$(cat /var/log/apps/${app}_app.log | grep "DELETE" | wc -l)
  echo -e " ${app}    \t ${get_requests}    \t    ${post_requests}   \t   ${delete_requests}"

done

#7
for file in $(ls images)
do
        if [[ $file = *.jpeg ]]
                then
                new_name=$(echo $file| sed 's/jpeg/jpg/g')
                mv images/$file images/$new_name
        fi
done