component {

	/**
	* All credits for implementation of this method go to Ben Nadel 
	* (http://www.bennadel.com/blog/2341-ColdFusion-10-Parsing-Dirty-HTML-Into-Valid-XML-Documents.htm)
	*/
	public xml function clean(required string htmlContent, disableNamespaces = true)
	description = "Converts poorly formatted html into a valid html represented as xml. The function returns an xml element (not an xml document)"
	{

		var saxDomBuilder = createObject( "java", "com.sun.org.apache.xalan.internal.xsltc.trax.SAX2DOM" ).init();
		var tagSoupParser = createObject( "java", "org.ccil.cowan.tagsoup.Parser" ).init();

		if (disableNamespaces){
			tagSoupParser.setFeature( tagSoupParser.namespacesFeature, javaCast( "boolean", false ) );
		}

		tagSoupParser.setContentHandler( saxDomBuilder );
		
		var inputSource = createObject( "java", "org.xml.sax.InputSource" ).init(
			createObject( "java", "java.io.StringReader" ).init( htmlContent )
		);

		tagSoupParser.parse( inputSource );

		return xmlSearch( saxDomBuilder.getDom(), "/node()" )[ 1 ];

	}

}