function TabletInteract()
{
	if (oPlayer.keyActivate && distance_to_object(oTablet) <= 10)
	{
		oTablet.drawState = !oTablet.drawState;	
	}

	if (oTablet.drawState && distance_to_object(oTablet) > 10)
	{
		oTablet.drawState = false;	
	}
}