component {

	public string function rapElementsInSingleQuotes(string list, string delimiter = ",")
	description = "Raps every element in a list in single quotes"
	{
		var result = "";
		for (var element in list) {
			result = listappend(result,"'#element#'");
		}
		return result;
	}

	public boolean function isIntegerList(required string list, string delimiter = ",")
	description = "Returns true if every list of an element is an integer"
	{
		for (var item in ListToArray(list,delimiter)) {
			if (! isValid("integer", item )) return false;
		}
		return true;
	}

}