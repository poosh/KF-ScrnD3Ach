Class D3Ach extends ScrnAchievements;

#exec OBJ LOAD FILE=D3Ach_T.utx

defaultproperties
{
    ProgressName="DooM Achievements"
    DefaultAchGroup="DOOM3"
    GroupInfo(1)=(Group="DOOM3",Caption="DooM")

    AchDefs(0)=(id="D3Kill666",DisplayName="The Number of the Beast",Description="Kill %c Hell creatures",Icon=Texture'D3Ach_T.Ach.Kill666',MaxProgress=666,DataSize=10)
    AchDefs(1)=(id="D3Chainsaw93",DisplayName="Nostalgia'93",Description="Kill %c Hell cratures with a chainsaw",Icon=Texture'D3Ach_T.Ach.DoomGuy',MaxProgress=93,DataSize=7)
    AchDefs(2)=(id="D3KillTeleport",DisplayName="Back Ticket to Hell",Description=" Kill %c demons during teleportation",Icon=Texture'D3Ach_T.Ach.BackTicketToHell',MaxProgress=15,DataSize=4)
    AchDefs(3)=(id="D3FatZombie",DisplayName="Just a Fat Clot",Description="Kill %c Fat Zombies",Icon=Texture'D3Ach_T.Ach.FatZombie',MaxProgress=30,DataSize=5)
    AchDefs(4)=(id="D3Sawyer",DisplayName="Demon, Who Robbed a Scrake",Description="Kill %c Sawyers with melee weapons",Icon=Texture'D3Ach_T.Ach.Chainsaw',MaxProgress=30,DataSize=5)
    AchDefs(5)=(id="D3Pinky",DisplayName="Pink-Colored Death",Description="Kill %c Pinkies with shotguns",Icon=Texture'D3Ach_T.Ach.Pinky',MaxProgress=30,DataSize=5)
    AchDefs(6)=(id="D3Commando",DisplayName="Commando Chicken",Description="Kill %c Commandos as Commando",Icon=Texture'KillingFloor2HUD.Achievements.Achievement_162',MaxProgress=15,DataSize=4)
    AchDefs(7)=(id="D3Revenant",DisplayName="Mine is Bigger Than Yours",Description="Kill %c Revenants with rockets",Icon=Texture'D3Ach_T.Ach.Revenant',MaxProgress=15,DataSize=4)
    AchDefs(8)=(id="D3Archvile",DisplayName="Fight Fire With Fire",Description="Kill %c Archviles with fire weapons",Icon=Texture'D3Ach_T.Ach.Archvile',MaxProgress=15,DataSize=4)
    AchDefs(9)=(id="D3BigHS",DisplayName="Head is Your Major Weakness",Description="Kill %c big demons with headhots from sniper weapons",Icon=Texture'D3Ach_T.Ach.Mancubus',MaxProgress=30,DataSize=5)
    AchDefs(10)=(id="D3Spiders",DisplayName="Demonic Gunslingophobia",Description="Kill %c demon spiders with pistols",Icon=Texture'D3Ach_T.Ach.Spider',MaxProgress=123,DataSize=7)
    AchDefs(11)=(id="D3DatingDemon",DisplayName="Dating a Demon",Description="As a Medic, attract Demon Boss while your team is getting rid of other enemies",Icon=Texture'D3Ach_T.Ach.DatingDemon',MaxProgress=1,DataSize=1,bForceShow=True)
    AchDefs(12)=(id="D3MapEntryway",DisplayName="Welcome Back to Hell... on Earth",Description="Survive Doom2-Entryway map on Hell on Earth difficulty",Icon=Texture'D3Ach_T.Ach.Entryway',MaxProgress=1,DataSize=1)
    AchDefs(13)=(id="D3MapHell",DisplayName="Fighting Hell in Hell on Hell",Description="Survive a game against Hell creatures in the Hell on Hell on Earth difficulty",Icon=Texture'D3Ach_T.Ach.Hell3x',MaxProgress=1,DataSize=1)
    AchDefs(14)=(id="D3Turncoat",DisplayName="Turncoat",Description="Get 2 demons to fight each other. Relax, sit back and place your bets.",Icon=Texture'D3Ach_T.Ach.Turncoat',MaxProgress=1,DataSize=1)
    AchDefs(15)=(id="D3BFGCell",DisplayName="BFG Training",Description="Destroy %c BFG cells before they hit anyone",Icon=Texture'D3Ach_T.Ach.BFGCell',MaxProgress=10,DataSize=4)
    AchDefs(16)=(id="D3VagarySpider",DisplayName="Home Run",Description="Shoot back %c spiders thrown by Vagary with Nailgun",Icon=Texture'D3Ach_T.Ach.HomeRun',MaxProgress=3,DataSize=2)
    AchDefs(17)=(id="D3Berserked",DisplayName="Berserked!",Description="Hit Berserker Hunter %c times with heavy melee attacks without taking a damage in between",Icon=Texture'D3Ach_T.Ach.Berserked',MaxProgress=15,DataSize=4)
    AchDefs(18)=(id="D3NoDamageFromBoss",DisplayName="Not a Scratch",Description="Kill Demon Boss without taking any damage",Icon=Texture'D3Ach_T.Ach.FullHP',MaxProgress=1,DataSize=1)
    AchDefs(19)=(id="D3KillBossTwice",DisplayName="Who Die in Hell, Gets Sent to Hell... Again",Description="Kill the same Demon Boss twice in one game",Icon=Texture'D3Ach_T.Ach.BackToHell',MaxProgress=1,DataSize=1)
    AchDefs(20)=(id="D3Vagary",DisplayName="Sticky Situation",Description="Defeat the Vagary",Icon=Texture'D3Ach_T.Ach.Vagary',MaxProgress=1,DataSize=1)
    AchDefs(21)=(id="D3Guardian",DisplayName="Cookie Stealer",Description="Defeat the Guardian",Icon=Texture'D3Ach_T.Ach.Guardian',MaxProgress=1,DataSize=1)
    AchDefs(22)=(id="D3Sabaoth",DisplayName="You're Not My Boss!",Description="Defeat the Sabaoth",Icon=Texture'D3Ach_T.Ach.Sabaoth',MaxProgress=1,DataSize=1)
    AchDefs(23)=(id="D3Cyberdemon",DisplayName="Big Boy",Description="Defeat the Cyberdemon",Icon=Texture'D3Ach_T.Ach.Cyberdemon',MaxProgress=1,DataSize=1)
    AchDefs(24)=(id="D3HunterHellTime",DisplayName="Gimme Time!",Description="Defeat the Hell Time Hunter",Icon=Texture'D3Ach_T.Ach.HunterHellTime',MaxProgress=1,DataSize=1)
    AchDefs(25)=(id="D3HunterBerserk",DisplayName="Gimme Power!",Description="Defeat the Berserker Hunter",Icon=Texture'D3Ach_T.Ach.HunterBerserk',MaxProgress=1,DataSize=1)
    AchDefs(26)=(id="D3HunterInvul",DisplayName="Shocking!",Description="Defeat the Invulnerable Hunter",Icon=Texture'D3Ach_T.Ach.HunterInvul',MaxProgress=1,DataSize=1)
    AchDefs(27)=(id="D3Maledict",DisplayName="Eat This, Dr.Betruger!",Description="Defeat the Maledict",Icon=Texture'D3Ach_T.Ach.Maledict',MaxProgress=1,DataSize=1)
}