component extends="mxunit.framework.TestCase" {

	public void function beforeTests() {
		variables.Array = new org.CFUtil.Util().Array;
	}

	public void function EveryTest() {

		var testArray = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];

		var lessThenTen = function(numeric item) {
			return item < 10;
		};

		var lessThenTwenty = function(numeric item) {
			return item < 20;
		};

		assertEquals( false, variables.Array.Every(testArray,lessThenTen) );
		assertEquals( true, variables.Array.Every(testArray,lessThenTwenty) );

	}

	public void function MapTest() {
		//variables.Array.Map()

		var multiplyBy2 = function(numeric arg) {
			return arg * 2;
		};

		assertEquals(variables.Array.Map([1,2,3],multiplyBy2),[2,4,6]);
	}

	public void function FoldTest() {
		fail("The function Array.Fold() is not implemented.");
	}

}