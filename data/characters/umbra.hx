
// import flixel.group.FlxSpriteGroup;

var umbraysepeaker:FlxSpriteGroup;
var speaker:Character;
var offsets:Array<Float>;
var umbra:Character;


function onLoad() {
	offsets = [200, -200];

	if (gf != null) {
		speaker = new Character(offsets[0] - 150, offsets[1] - 85, 'speaker');
		speaker.zIndex = 0.2;
		gfGroup.add(speaker);
		// insert(1, speaker);	
		
		speaker.danceEveryNumBeats = 1;

		gf.visible = false;
	}
}

function onCreatePost()
{
	umbra = new Character(offsets[0], offsets[1] -295, 'umbra');
	gfGroup.add(umbra);
	
}

function onUpdate() {
	if (gf != null) {
		offsets = [100, 0];
		speaker.setPosition(offsets[0] - 150, offsets[1] - 85);
	}
}

function onCountdownTick()
{
	if (curBeat % 1 == 0)
	{
		speaker.onBeatHit(curBeat);
		umbra.onBeatHit(curBeat);
	}
}

function onBeatHit()
{
	if (curBeat % 1 == 0)
	{
		speaker.onBeatHit(curBeat);
		umbra.onBeatHit(curBeat);
	}
}