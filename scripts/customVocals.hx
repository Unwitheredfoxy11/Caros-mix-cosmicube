function onCreatePost()
{
    var customVoices = Paths.voices(curSong, boyfriend.getFlag('customVocalsSuffix'));
    if (customVoices != null)
    {
        var playerSound = vocals.playerVocals.members[0];
        playerSound.loadEmbedded(customVoices);
    }
}