printf "+----------------------+"
printf "\n|    Filter Basics     |"
printf "\n+----------------------+"

printf "\n\nCode Designed By Alen Grace Skaria\nRegister No: 1947203"
                                  ############################################
                                  #            Function Definations          #
                                  ############################################

no_vowel_uniq()      #function defination #1
{
	a=$(sort filter.txt | uniq -c | grep [aeio])
	printf  "Occur   Contents"	
	printf "\n$a"
	printf "\nWant to view the Actual File [Yes | No]: "
	read choice
	if [ $choice = "Yes" ]
	then
	cat filter.txt
	printf "Taking you to the Main Menu"
	sleep 1.0
	else
	printf "You Have Selected No Option.Taking you to the Main Menu"
	sleep 1.0
	fi
} 

freq_character()    #function defination #2
{ 
a=$(sed 's/./&\n/g' filter.txt | sort | uniq -ic)
printf "  Occur Char"
printf "\n$a"
}

replace_string()   #function defination #3
{
	printf "Enter the name to be Changed: "
	read string
	echo "The String will be replaced to $string" | sed "s/$string/CHRIST(Deemed to be University)/"

}

										################################
										#         MAIN CODE			 #
										################################
								


while :
do								
printf "\n\n+-----------------------------------+"
printf  "\n|          Main Menu                |"
printf  "\n+-----------------------------------+"
printf "\n1:  Find the number of unique words and vowels in a file along with line number."
printf "\n2:  Display the frequency of occurrence of each character present in the text document 
    and display the character which has the maximum frequency of occurrences and store 
    it in a separate file."
printf "\n3: Replace the string Christ University as CHRIST (Deemed to be University) in the given text document."
printf "\n4: Exit"
printf "\n\nMake your Choice: "
read no_choice

if [ $no_choice -eq 1 ]
then
no_vowel_uniq
elif [ $no_choice -eq 2 ]
then
freq_character
elif [ $no_choice -eq 3 ]
then
replace_string
else
exit
fi                
done
