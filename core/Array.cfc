component {

	public boolean function Every(required array array, required function predFunc)
	description = "Returns true if all elements of array satisfy the predicate function or array is empty, false otherwise."
	{
		for (var item in array) {
			if (! predFunc(item)) return false;
		}
		return true;
	}

	public boolean function Some(required array array, required function predFunc)	
	{		
		//return ! Every(array, function(item) { return ! predFunc(item); } );
		return ArrayFind(array, predFunc) ? true : false;
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

	public any function Tail (required array array)
	description = "Returns an array without the first element; original array is not modified"
	{
		throw (message = "NotImplemented");
	}

	public any function Take (required array array, required number n)
	description = "Returns an array with ony n elements from from the start of the array, or the entire array if its length is less or equal to n; original array is not modified"
	{
		throw (message = "NotImplemented");
	}

	public any function Drop (required array array, required number n)
	description = "Returns an array without first n elements, or an empty array if n is larger or equal to the array length; original array is not modified"
	{
		throw (message = "NotImplemented");
	}

	/* public any function Init (required array array) // Haha! Bad name for a function in CF.
	description = "Returns the array without the last element; original array is not modified"
	{
		throw (message = "NotImplemented");
	} */

}