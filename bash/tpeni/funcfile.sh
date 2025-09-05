
saveInDir()
{
	SAVEDIR=/home/gobnis/save
	mkdir $SAVEDIR > /dev/null 2>&1
	
	list=$(ls)
	
	for content in $list
	do
		if [[ "$content" == *.sh ]]
		then
			cp ${content} $SAVEDIR/${content%.sh}.save
		fi
	done
	echo i did do the thing
	echo 
}

deleteSaveInDir()
{
	SAVEDIR=/home/gobnis/save
	rm $SAVEDIR/*.save
	echo i did do the thing
	echo
}

listSaveInDir()
{
	vert='\033[5;32m'
	rouge='\033[3;31m'
	nc='\033[0m'

	SAVEDIR=/home/gobnis/save
	list=$(ls)
	
	for content in $list
	do
		if [[ -e /home/gobnis/save/${content%.sh}.save ]]
		then
			echo -e $vert$content$nc haz save file
		else
			echo -e $rouge$content$nc no haz save file
		fi
	done
	echo 
}
