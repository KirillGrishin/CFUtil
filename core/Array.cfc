component {

	public boolean function Every(required array array, required function predFunc)
	description = "Returns true if all elements of array satisfy the predicate function or array is empty, false otherwise."
	{
		for (var item in array) {
			if (! predFunc(item)) return false;
		}
		return true;
	}

	public array function Map(required array array, required function predFunc)
	description = "Returns a new array of results of applying predicate function to each element in the original array"
	{
		var result = [];
		ArrayEach(array,function(item) { ArrayAppend(result, predFunc(item)); });
		return result;
	}

	/* NOT IMPLMENTED YET */
	public any function Fold(required array array, required function predFunc, any accum)
	description = "Applys predicate function to each element of array and adds results to accum (if it is provided)
	or uses first and second value (if accum is not provided). Folding is started from the begining of the array."
	{
		var arrayLength = ArrayLen(array);
		if (arrayLength == 0) {
			// Check Haskell's implementation
		} else if (arrayLength == 1) {
			// Check Haskell's implementation
			if (StructKeyExists(arguments,"accum")) {

			} else {

			}
		} else {
			if (StructKeyExists(arguments,"accum")) {

			} else {

			}
		}
	}

}