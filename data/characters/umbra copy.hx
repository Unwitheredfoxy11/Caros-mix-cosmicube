var ext = 'caros/speaker/';
var speaker:FlxSprite;

function onCreatePost() {
	speaker = new FlxSprite();
	speaker.cameras = [camGame];
	speaker.frames = Paths.getSparrowAtlas(ext + 'UmbraSpeaker');
	speaker.animation.addByPrefix('idle', 'speaker idle', 24, false);
	speaker.animation.play('idle');
	speaker.zIndex = (gf.zIndex - 1);
	add(speaker);
	trace("se supone que debería aparecer la mierda esta");
}

function onUpdate(){
	if (gf != null)
	{
		speaker.x = (gf.x);
		speaker.y = (gf.y);
	}
	//speaker.height = 0.5;
	//speaker.width = 0.5;
	//speaker.setGraphicSize(0.5, 0.5);
	speaker.updateHitbox();
}

function onCountdownTick() {
	if (curBeat % 1 == 0) {
		speaker.animation.play('idle');
	}
}

function onBeatHit() {
	if (curBeat % 1 == 0) {
		speaker.animation.play('idle');
	}
}