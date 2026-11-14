// Robado del vs impostor base xd

function onCreatePost()
{
	onSectionHit(0);
}

function onSectionHit()
{
	var suffix:String = (mustHitSection ? '' : '-left');
	if (gf.curCharacter == 'umbra-pixel')
	{
		if (game.gf.idleSuffix != suffix) // making sure shes not already looking in the direction we want
		{
			game.gf.idleSuffix = suffix;
			game.gf.recalculateDanceIdle();
			game.gf.danced = false; // fuck my gay life
		}
	}
}
