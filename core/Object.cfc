component {

	/* This is a desired function, the implementation is still to be done.
	public boolean function IsEqual(required any object1, required any object2)
	description="Compares two objects for equality of their properties"
	{

	}
	*/

	public boolean function IsSame(required any object1, required any object2)
	description="Checks if objects passed in the argument reference the same value"
	{
		return ArrayFind([object1],object2);
	}

}