function averageColon(string){


	 var arrayOfStrings = string.split(":");
	 var count = 0;
	 arrayOfStrings.forEach(function(addnumber){
	 	count += parseInt(addnumber);
	 });

	 return count/arrayOfStrings.length


}

module.exports = averageColon;
