class D3AchHandler extends ScrnAchHandlerBase;

#exec OBJ LOAD FILE=D3Ach_T.utx

var transient array< class<DoomMonster> > KilledBosses; // bosses killed this game

var transient array<ScrnPlayerInfo> DatingMedics; // list of medics, who took boss for a walk
var transient bool bCheckDatingDemon;
var ScrnPlayerInfo LastDatingMedic;
var bool bBerserked;

function GameWon(string MapName)
{
    if ( GameRules.GameDoom3Kills <= 0 )
        return; // no doom monsters in game

    if ( Level.Game.GameDifficulty >= 7 ) {
        if ( MapName ~= "KF-D2M1" )
            Ach2All('D3MapEntryway', 1);
        else if ( MapName ~= "KF-Hell" )
            Ach2All('D3MapHell', 1);
    }
}

function WaveStarted(byte WaveNum)
{
    bCheckDatingDemon = !GameRules.bFinalWave;
    DatingMedics.length = 0;
}

function PlayerDamaged(int Damage, ScrnPlayerInfo VictimSPI, KFMonster InstigatedBy, class<DamageType> DamType)
{
    local DoomBoss Boss;

    Boss = DoomBoss(InstigatedBy);
    if ( Boss != none ) {
        bBerserked = false;
        if ( bCheckDatingDemon ) {
            if ( VictimSPI != LastDatingMedic && !IsDatingMedic(VictimSPI) ) {
                if ( IsMedic(VictimSPI) )
                    AddDatingMedic(VictimSPI);
                else {
                    bCheckDatingDemon = false;
                    DatingMedics.length = 0;
                }
            }
        }
    }
}

function ScoreKill(Controller Killer, Controller Killed)
{
    if ( Killer != Killed && Doom3Controller(Killer) != none && Doom3Controller(Killed) != none )
        Ach2Alive('D3Turncoat', 1);
}

function MonsterDamaged(int Damage, KFMonster Victim, ScrnPlayerInfo InstigatorInfo,
    class<KFWeaponDamageType> DamType, bool bIsHeadshot, bool bWasDecapitated)
{
    local DoomMonster DM;
    local Doom3Controller D3C;

    DM = DoomMonster(Victim);
    if ( DM == none )
        return;
    D3C = Doom3Controller(Victim.Controller);
    if ( D3C == none )
        return;

    if ( DoomBoss(DM) != none ) {
        if ( bCheckDatingDemon ) {
            if ( LastDatingMedic != InstigatorInfo
                && (D3C.Enemy == InstigatorInfo.PlayerOwner
                    || D3C.Target == InstigatorInfo.PlayerOwner)
                && IsMedic(InstigatorInfo) )
            {
                AddDatingMedic(InstigatorInfo);
                LastDatingMedic = InstigatorInfo;
            }
        }
    }

    if ( TriteFly(DM) != none ) {
        if ( DM.IsInState('Flying') && ClassIsChildOf(DamType, class'ScrnDamTypeNailGun') )
            InstigatorInfo.ProgressAchievement('D3VagarySpider', 1);
    }
    else if ( Sabaoth(DM) != none ) {
        if ( DamType == class'ScrnDoom3KF.DamTypeBFG' )
            InstigatorInfo.ProgressAchievement('D3BFGCell', 1);
    }
    else if ( HunterBerserk(DM) != none ) {
        if ( Damage > 100 && DamType.default.bIsMeleeDamage && !ClassIsChildOf(DamType, class'DamTypeCrossbuzzsaw') ) {
            if ( bBerserked )
                InstigatorInfo.ProgressAchievement('D3Berserked', 1);
            else
                bBerserked = true;
        }
    }

}

function MonsterKilled(KFMonster Victim, ScrnPlayerInfo KillerInfo, class<KFWeaponDamageType> DamType)
{
    local DoomMonster DM;
    local Doom3Controller D3C;
    local int index;

    // if there are less than 15 zeds, then it is time to kill the boss
    bCheckDatingDemon = bCheckDatingDemon && GameRules.Mut.KF.TotalMaxMonsters > 15;

    DM = DoomMonster(Victim);
    if ( DM == none )
        return;
    D3C = Doom3Controller(Victim.Controller);
    if ( D3C == none )
        return;

    index = GameRules.GetMonsterIndex(Victim);

    KillerInfo.ProgressAchievement('D3Kill666', 1);
    if ( DM.default.Health > 1000 ) {
        if ( DamType.default.bSniperWeapon && GameRules.MonsterInfos[index].bHeadshot
                && !IsPistolDamage(KillerInfo, DamType) )
        KillerInfo.ProgressAchievement('D3BigHS', 1);
    }

    if ( ClassIsChildOf(DamType, class'KFMod.DamTypeChainsaw') )
        KillerInfo.ProgressAchievement('D3Chainsaw93', 1);

    if ( Level.TimeSeconds < D3C.LastTeleportTime + 2.0 )
        KillerInfo.ProgressAchievement('D3KillTeleport', 1);


    if ( DoomBoss(DM) != none ) {
        D3BossKilled(KillerInfo, DM);
    }
    else if ( Tick(DM) != none ) {
        if ( IsPistolDamage(KillerInfo, DamType) )
            KillerInfo.ProgressAchievement('D3Spiders', 1);
    }
    else if ( FatZombie(DM) != none ) {
        KillerInfo.ProgressAchievement('D3FatZombie', 1);
    }
    else if ( Sawyer(DM) != none ) {
        if ( DamType.default.bIsMeleeDamage )
            KillerInfo.ProgressAchievement('D3Sawyer', 1);
    }
    else if ( Pinky(DM) != none ) {
        if ( DamType.default.bIsPowerWeapon )
            KillerInfo.ProgressAchievement('D3Pinky', 1);
    }
    else if ( Commando(DM) != none ) {
        if ( IsAssaultRifleDamage(KillerInfo, DamType) )
            KillerInfo.ProgressAchievement('D3Commando', 1);
    }
    else if ( Revenant(DM) != none ) {
        if ( ClassIsChildOf(DamType, class'KFMod.DamTypeLAW') )
            KillerInfo.ProgressAchievement('D3Revenant', 1);
    }
    else if ( Archvile(DM) != none ) {
        if ( DamType.default.bDealBurningDamage
                || ClassIsChildOf(DamType, class'KFMod.DamTypeHuskGunProjectileImpact')
                || ClassIsChildOf(DamType, class'KFMod.DamTypeFlareProjectileImpact') )
            KillerInfo.ProgressAchievement('D3Archvile', 1);
    }
}

function D3BossKilled(ScrnPlayerInfo KillerInfo, DoomMonster Boss)
{
    local bool bLegalBoss;
    local int i;

    bLegalBoss = true;
    if ( Vagary(Boss) != none )
        Ach2Alive('D3Vagary', 1);
    else if ( Guardian(Boss) != none )
        Ach2Alive('D3Guardian', 1);
    else if ( Sabaoth(Boss) != none )
        Ach2Alive('D3Sabaoth', 1);
    else if ( Cyberdemon(Boss) != none )
        Ach2Alive('D3Cyberdemon', 1);
    else if ( HunterHellTime(Boss) != none )
        Ach2Alive('D3HunterHellTime', 1);
    else if ( HunterBerserk(Boss) != none )
        Ach2Alive('D3HunterBerserk', 1);
    else if ( HunterInvul(Boss) != none )
        Ach2Alive('D3HunterInvul', 1);
    else if ( Maledict(Boss) != none )
        Ach2Alive('D3Maledict', 1);
    else
        bLegalBoss = false; // some crap is used instead of standard D3 boss

    if ( bLegalBoss ) {
        if ( !Boss.bDamagedAPlayer )
            Ach2Alive('D3NoDamageFromBoss', 1);

        if ( GameRules.bFinalWave ) {
            for ( i=0; i<KilledBosses.length; ++i ) {
                if ( KilledBosses[i] == Boss.class ) {
                    Ach2All('D3KillBossTwice', 1);
                    break;
                }
            }
        }
        else if ( DatingMedics.length > 0 ) {
            for ( i=0; i<DatingMedics.length; ++i )
                DatingMedics[i].ProgressAchievement('D3DatingDemon', 1);
            DatingMedics.length = 0;
        }
        KilledBosses[KilledBosses.length] = Boss.class;
    }
}

function bool IsDatingMedic(ScrnPlayerInfo SPI)
{
    local int i;

    for ( i=0; i<DatingMedics.length; ++i )
        if ( DatingMedics[i] == SPI )
            return true;
    return false;
}

function AddDatingMedic(ScrnPlayerInfo SPI)
{
    if ( !IsDatingMedic(SPI) )
        DatingMedics[DatingMedics.length] = SPI;
}
