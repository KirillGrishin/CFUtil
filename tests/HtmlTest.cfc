component extends="mxunit.framework.TestCase" {

	public void function beforeTests() {
		variables.Html = new org.cfutil.Util().Html;
	}

	public any function cleanTest() {
		/**
		* All credits for implementation of this method go to Ben Nadel 
		* (http://www.bennadel.com/blog/2341-ColdFusion-10-Parsing-Dirty-HTML-Into-Valid-XML-Documents.htm)
		*/
		var dirtyHtml = '<!doctype html>
		<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
			<title>Dana Linn Bailey</title>
			<meta name="description" content="Strong female muscle, FTW!">
			<meta name="keywords" content="female muscle,femmuscle,sexy">
		</head>
		<body>

		<h1>
		Dana Linn Bailey
		</h1>

		<h2>
		Professional Bodybuilder
		</h2>

		<p>
		<IMG
		SRC="//www.danalinn.com/images/photos/DanaLinnBailey_3.jpg"
		ALT="Dana Linn Bailey"
		HEIGHT=250>
		<br>


		<h3>
		Professional Services
		</h3>

		<ul>
		<li>Full Contest Preparation
		<li>12-Week Weight Management Program
		<li>ONE-TIME Personalized Diet Plan
		<li>ONE-TIME Personalized Week Training Program
		<li>Train with DLB herself!!!
		</ul>

		<h2>
		Biography
		</h2>

		<p>
		I grew up a jock. At age 6, I was already on the swim
		team, waking up and going to practice just like the big
		kids. Up until high school, I was a 6-sport athlete all
		year round, playing soccer, basketball, field hockey,
		softball, running track and also swim team. In high
		school I continued with my 3 favorite sports, soccer,
		basketball, and field hockey and excelled in all with
		many awards.

		<p>
		<a href=http://www.danalinn.com/about.html>Read More</a>.
		</p>

		</body>
		</html>';

		var result = variables.Html.clean(dirtyHtml);

		AssertTrue(IsXmlElem(result), "The result must be a valid XML object.");

		debug(result);

	}

}