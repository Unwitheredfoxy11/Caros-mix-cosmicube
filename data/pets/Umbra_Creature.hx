import StringTools;
import flixel.util.FlxTimer;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;

var baseX:Float = pet.scale.x;
var baseY:Float = pet.scale.y;
var scaleTween:FlxTween;
var canClick:Bool = true;

function onUpdate(elapsed:Float)
{
    if (canClick && FlxG.mouse.justPressed && FlxG.mouse.overlaps(pet))
    {
        canClick = false;
        pet.animation.play('pat', true);

        if (scaleTween != null)
            scaleTween.cancel();

        pet.scale.set(baseX * 1.5, baseY * 0.75);

        scaleTween = FlxTween.tween(pet.scale, {x: baseX, y: baseY}, 1, {
            ease: FlxEase.elasticOut,
            onComplete: function(twn:FlxTween)
            {
                canClick = true;
            }
        });
    }
}