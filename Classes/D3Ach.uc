Class D3Ach extends ScrnAchievements;

#exec OBJ LOAD FILE=D3Ach_T.utx

// The engine limits the size of a localized string to 4096.
// That's why we need to do the copy-paste crap below to bypass the limitaion.
var localized string DisplayName0, Description0;
var localized string DisplayName1, Description1;
var localized string DisplayName2, Description2;
var localized string DisplayName3, Description3;
var localized string DisplayName4, Description4;
var localized string DisplayName5, Description5;
var localized string DisplayName6, Description6;
var localized string DisplayName7, Description7;
var localized string DisplayName8, Description8;
var localized string DisplayName9, Description9;
var localized string DisplayName10, Description10;
var localized string DisplayName11, Description11;
var localized string DisplayName12, Description12;
var localized string DisplayName13, Description13;
var localized string DisplayName14, Description14;
var localized string DisplayName15, Description15;
var localized string DisplayName16, Description16;
var localized string DisplayName17, Description17;
var localized string DisplayName18, Description18;
var localized string DisplayName19, Description19;
var localized string DisplayName20, Description20;
var localized string DisplayName21, Description21;
var localized string DisplayName22, Description22;
var localized string DisplayName23, Description23;
var localized string DisplayName24, Description24;
var localized string DisplayName25, Description25;
var localized string DisplayName26, Description26;
var localized string DisplayName27, Description27;


simulated function SetDefaultAchievementData()
{
    AchDefs[0].DisplayName = DisplayName0;
    AchDefs[1].DisplayName = DisplayName1;
    AchDefs[2].DisplayName = DisplayName2;
    AchDefs[3].DisplayName = DisplayName3;
    AchDefs[4].DisplayName = DisplayName4;
    AchDefs[5].DisplayName = DisplayName5;
    AchDefs[6].DisplayName = DisplayName6;
    AchDefs[7].DisplayName = DisplayName7;
    AchDefs[8].DisplayName = DisplayName8;
    AchDefs[9].DisplayName = DisplayName9;
    AchDefs[10].DisplayName = DisplayName10;
    AchDefs[11].DisplayName = DisplayName11;
    AchDefs[12].DisplayName = DisplayName12;
    AchDefs[13].DisplayName = DisplayName13;
    AchDefs[14].DisplayName = DisplayName14;
    AchDefs[15].DisplayName = DisplayName15;
    AchDefs[16].DisplayName = DisplayName16;
    AchDefs[17].DisplayName = DisplayName17;
    AchDefs[18].DisplayName = DisplayName18;
    AchDefs[19].DisplayName = DisplayName19;
    AchDefs[20].DisplayName = DisplayName20;
    AchDefs[21].DisplayName = DisplayName21;
    AchDefs[22].DisplayName = DisplayName22;
    AchDefs[23].DisplayName = DisplayName23;
    AchDefs[24].DisplayName = DisplayName24;
    AchDefs[25].DisplayName = DisplayName25;
    AchDefs[26].DisplayName = DisplayName26;
    AchDefs[27].DisplayName = DisplayName27;

    AchDefs[0].Description = Description0;
    AchDefs[1].Description = Description1;
    AchDefs[2].Description = Description2;
    AchDefs[3].Description = Description3;
    AchDefs[4].Description = Description4;
    AchDefs[5].Description = Description5;
    AchDefs[6].Description = Description6;
    AchDefs[7].Description = Description7;
    AchDefs[8].Description = Description8;
    AchDefs[9].Description = Description9;
    AchDefs[10].Description = Description10;
    AchDefs[11].Description = Description11;
    AchDefs[12].Description = Description12;
    AchDefs[13].Description = Description13;
    AchDefs[14].Description = Description14;
    AchDefs[15].Description = Description15;
    AchDefs[16].Description = Description16;
    AchDefs[17].Description = Description17;
    AchDefs[18].Description = Description18;
    AchDefs[19].Description = Description19;
    AchDefs[20].Description = Description20;
    AchDefs[21].Description = Description21;
    AchDefs[22].Description = Description22;
    AchDefs[23].Description = Description23;
    AchDefs[24].Description = Description24;
    AchDefs[25].Description = Description25;
    AchDefs[26].Description = Description26;
    AchDefs[27].Description = Description27;

    super.SetDefaultAchievementData();
}


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

    DisplayName0="The Number of the Beast"
    DisplayName1="Nostalgia'93"
    DisplayName2="Back Ticket to Hell"
    DisplayName3="Just a Fat Clot"
    DisplayName4="Demon, Who Robbed a Scrake"
    DisplayName5="Pink-Colored Death"
    DisplayName6="Commando Chicken"
    DisplayName7="Mine is Bigger Than Yours"
    DisplayName8="Fight Fire With Fire"
    DisplayName9="Head is Your Major Weakness"
    DisplayName10="Demonic Gunslingophobia"
    DisplayName11="Dating a Demon"
    DisplayName12="Welcome Back to Hell... on Earth"
    DisplayName13="Fighting Hell in Hell on Hell"
    DisplayName14="Turncoat"
    DisplayName15="BFG Training"
    DisplayName16="Home Run"
    DisplayName17="Berserked!"
    DisplayName18="Not a Scratch"
    DisplayName19="Who Die in Hell, Gets Sent to Hell... Again"
    DisplayName20="Sticky Situation"
    DisplayName21="Cookie Stealer"
    DisplayName22="You're Not My Boss!"
    DisplayName23="Big Boy"
    DisplayName24="Gimme Time!"
    DisplayName25="Gimme Power!"
    DisplayName26="Shocking!"
    DisplayName27="Eat This, Dr.Betruger!"

    Description0="Kill %c Hell creatures"
    Description1="Kill %c Hell cratures with a chainsaw"
    Description2=" Kill %c demons during teleportation"
    Description3="Kill %c Fat Zombies"
    Description4="Kill %c Sawyers with melee weapons"
    Description5="Kill %c Pinkies with shotguns"
    Description6="Kill %c Commandos as Commando"
    Description7="Kill %c Revenants with rockets"
    Description8="Kill %c Archviles with fire weapons"
    Description9="Kill %c big demons with headhots from sniper weapons"
    Description10="Kill %c demon spiders with pistols"
    Description11="As a Medic, attract Demon Boss while your team is getting rid of other enemies"
    Description12="Survive Doom2-Entryway map on Hell on Earth difficulty"
    Description13="Survive a game against Hell creatures in the Hell on Hell on Earth difficulty"
    Description14="Get 2 demons to fight each other. Relax, sit back and place your bets."
    Description15="Destroy %c BFG cells before they hit anyone"
    Description16="Shoot back %c spiders thrown by Vagary with Nailgun"
    Description17="Hit Berserker Hunter %c times with heavy melee attacks without taking a damage in between"
    Description18="Kill Demon Boss without taking any damage"
    Description19="Kill the same Demon Boss twice in one game"
    Description20="Defeat the Vagary"
    Description21="Defeat the Guardian"
    Description22="Defeat the Sabaoth"
    Description23="Defeat the Cyberdemon"
    Description24="Defeat the Hell Time Hunter"
    Description25="Defeat the Berserker Hunter"
    Description26="Defeat the Invulnerable Hunter"
    Description27="Defeat the Maledict"
}