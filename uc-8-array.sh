#!/bin/bash -x

isparttime=1
isfulltime=2
maxrateinmonth=100
emprateperhr=20
numofworkingdays=20

totalemphr=0
totalworkingdays=0

function getworkhours()
{
		case $randomCheck in
					$isparttime )
							emphrs=4
				;;
					$isfulltime )
							emphrs=8
				;;
					*)
							emphrs=0
				;;
		esac
}

while [[ $totalemphr -lt $maxrateinmonth &&
	$totalworkingdays -lt $numofworkingdays ]]
do
	((totalworkingdays++))
	randomCheck=$((RANDOM%3))
	getworkhours
	totalemphr=$(($totalemphr+$emphrs))
	dailywages[$totalworkingdays]=$(($emphrs*$emprateperhr))
done


totalsalary=$(($totalemphr*$emprateperhr))
#totalsalary=$( getempwage $totalemphr )
echo ${dailywages[@]}

echo ${!dailywages[@]} #days
echo ${#dailywages[@]} #totalcountdays
