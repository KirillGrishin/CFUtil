component {
	
	public string function interpolate(required string pattern, required array values)
	description = "Accepts a string pattern in format 'On {1} {2}, the temperature will be {3}C.' and
	an array of values like ['July', '4', '25'] and produces a string 'On July 4, the temperature will be 25C."
	{
		for (var i = 1; i <= ArrayLen(values); i++) {
			pattern = reReplaceNoCase(pattern, "\{#i#\}", values[i], "all");
		}
		return pattern;
	}

}