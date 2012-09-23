component extends="mxunit.framework.TestCase" {

	public void function beforeTests() {
		variables.List = new org.CFUtil.Util().List;
	}

	public void function rapElementsInSingleQuotesTest() {
		AssertEquals(variables.List.rapElementsInSingleQuotes("1,2,3,4,5"),"'1','2','3','4','5'");
	}

	public void function isIntegerListTest() {
		AssertTrue(variables.List.isIntegerList("1,23,45,5,67,8,9,0"),"Shoud be True for '1,23,45,5,67,8,9'");
		AssertTrue(variables.List.isIntegerList("1;23;45;5;67;8;9",";"),"Shoud be True for '1;23;45;5;67;8;9'");
		AssertFalse(variables.List.isIntegerList("1;23;d;5;67;8;9",";"),"Shoud be False for '1;23;d;5;67;8;9'");
		AssertFalse(variables.List.isIntegerList("1,g45,5,67,8,9"),"Shoud be False for '1,g45,5,67,8,9'");
		AssertTrue(variables.List.isIntegerList(123456),"Shoud be True for 123456");
		AssertFalse(variables.List.isIntegerList("12.45,154"),"Shoud be False for '12.45,154'");

	}

}