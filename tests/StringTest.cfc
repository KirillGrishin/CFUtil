component extends="mxunit.framework.TestCase" {

	public void function beforeTests() {
		variables.String = new org.CFUtil.Util().String;
	}

	public void function UnparameterizeTest() {

		var result = variables.String.unparameterize("On {1} {2}, the temperature will be {3}C.",['July', '4', '25']);
		AssertEquals("On July 4, the temperature will be 25C.",result,"The resulting strings must be equal.");

		var result2 = variables.String.unparameterize("Doubled replace {1} {2} {3} {1} {3}.",['One', 'Two', 'Three']);
		AssertEquals("Doubled replace One Two Three One Three.",result2,"The resulting strings must be equal.");

	}

}