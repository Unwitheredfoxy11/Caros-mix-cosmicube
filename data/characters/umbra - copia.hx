var speaker:Character;


function onCreatePost()
{
	speaker = new Character(gf.x - 150, gf.y - 85, 'speaker');
	speaker.zIndex = (gf.zIndex - 1);
	add(speaker);
	speaker.danceEveryNumBeats = 1;
}

function onCountdownTick()
{
	if (curBeat % 1 == 0)
	{
		speaker.onBeatHit(curBeat);
	}
}

function onBeatHit()
{
	if (curBeat % 1 == 0)
	{
		speaker.onBeatHit(curBeat);
	}
}