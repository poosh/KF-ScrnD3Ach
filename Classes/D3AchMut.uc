class D3AchMut extends Mutator;

function PostBeginPlay()
{
    class'ScrnAchievements'.static.RegisterAchievements(class'D3Ach');
    Level.Game.Spawn(class'D3AchHandler');
    Destroy();
}

defaultproperties
{
    bAddToServerPackages=True
    GroupName="KF-D3Ach"
    FriendlyName="Doom 3 Monsters Mode - ScrN Achievement Pack"
    Description="Adds DooM3 achievements for ScrN Balance"
}
