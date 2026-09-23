import flixel.util.FlxTimer;

function noteMiss(note)
{
    if (boyfriend.curCharacter == 'umbraMC-playable') {
        bfHurt();
        hurtSoundPlay();
        //trace("Player missed a note!");
    }
}

/*
function hurtFlash()
    {
        FlxG.camera.flash(0x11FF0000, 0.2);
    }
*/

function hurtSoundPlay()
{
    FlxG.sound.play(Paths.sound("mcDamage"), 1);
}

function bfHurt()
{
    boyfriend.color = 0xFFFF5B5B;
    new FlxTimer().start(0.15, function(tmr) {boyfriend.color = 0xFFFFFFFF;});
}
