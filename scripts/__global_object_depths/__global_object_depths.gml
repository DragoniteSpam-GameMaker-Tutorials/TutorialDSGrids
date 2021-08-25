function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // Clickable
	global.__objectDepths[1] = 0; // ClickExist
	global.__objectDepths[2] = 0; // ClickMultiply
	global.__objectDepths[3] = 0; // ClickSet
	global.__objectDepths[4] = 0; // ClickStats
	global.__objectDepths[5] = 0; // GridSpot
	global.__objectDepths[6] = 0; // Mouseover
	global.__objectDepths[7] = 0; // RegionCircle
	global.__objectDepths[8] = 0; // RegionRectangle
	global.__objectDepths[9] = 0; // SavingAndLoadingStuff
	global.__objectDepths[10] = 0; // Switch


	global.__objectNames[0] = "Clickable";
	global.__objectNames[1] = "ClickExist";
	global.__objectNames[2] = "ClickMultiply";
	global.__objectNames[3] = "ClickSet";
	global.__objectNames[4] = "ClickStats";
	global.__objectNames[5] = "GridSpot";
	global.__objectNames[6] = "Mouseover";
	global.__objectNames[7] = "RegionCircle";
	global.__objectNames[8] = "RegionRectangle";
	global.__objectNames[9] = "SavingAndLoadingStuff";
	global.__objectNames[10] = "Switch";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
