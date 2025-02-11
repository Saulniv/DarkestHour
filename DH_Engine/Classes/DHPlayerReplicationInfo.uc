//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2019
//==============================================================================

class DHPlayerReplicationInfo extends ROPlayerReplicationInfo;

// Patron status
enum EPatronTier
{
    PATRON_None,
    PATRON_Lead,
    PATRON_Bronze,
    PATRON_Silver,
    PATRON_Gold
};

var     EPatronTier             PatronTier;
var     bool                    bIsDeveloper;

var     float                   NameDrawStartTime;
var     float                   LastNameDrawTime;
var     int                     DHKills;

// Squad
var     int                     SquadIndex;
var     int                     SquadMemberIndex;
var     bool                    bIsSquadAssistant;

// Scoring
var     int                     TotalScore;
var     int                     CategoryScores[2];

var     localized string        SquadLeaderAbbreviation;
var     localized string        AssistantAbbreviation;

replication
{
    // Variables the server will replicate to all clients
    reliable if (bNetDirty && Role == ROLE_Authority)
        SquadIndex, SquadMemberIndex, PatronTier, bIsDeveloper, DHKills, bIsSquadAssistant,
        TotalScore, CategoryScores;
}

simulated function string GetNamePrefix()
{
    if (IsSquadLeader())
    {
        return default.SquadLeaderAbbreviation;
    }
    else if (bIsSquadAssistant)
    {
        return default.AssistantAbbreviation;
    }
    else if (IsInSquad())
    {
        return string(SquadMemberIndex + 1);
    }

    return "";
}

simulated function bool IsSquadLeader()
{
    return IsInSquad() && SquadMemberIndex == 0;
}

simulated function bool IsAssistantLeader()
{
    return IsInSquad() && bIsSquadAssistant;
}

simulated function bool IsSLorASL()
{
    return IsInSquad() && (SquadMemberIndex == 0 || bIsSquadAssistant);
}

simulated function bool IsInSquad()
{
    return Team != none && (Team.TeamIndex == AXIS_TEAM_INDEX || Team.TeamIndex == ALLIES_TEAM_INDEX) && SquadIndex != -1;
}

simulated function bool IsPatron()
{
    return PatronTier != PATRON_None;
}

// Will return true if passed two players that are in the same squad.
simulated static function bool IsInSameSquad(DHPlayerReplicationInfo A, DHPlayerReplicationInfo B)
{
    return A != none && A.Team != none && B != none && B.Team != none &&
          (A.Team.TeamIndex == AXIS_TEAM_INDEX || A.Team.TeamIndex == ALLIES_TEAM_INDEX) &&
           A.Team.TeamIndex == B.Team.TeamIndex &&
           A.SquadIndex >= 0 && A.SquadIndex == B.SquadIndex;
}

// New helper function to check whether a player can be tank crew
simulated static function bool IsPlayerTankCrew(Pawn P)
{
    return P != none && ROPlayerReplicationInfo(P.PlayerReplicationInfo) != none && ROPlayerReplicationInfo(P.PlayerReplicationInfo).RoleInfo != none
        && ROPlayerReplicationInfo(P.PlayerReplicationInfo).RoleInfo.bCanBeTankCrew;
}

simulated static function bool IsPlayerLicensedToDrive(DHPlayer C)
{
    return C != none && DHPlayerReplicationInfo(C.PlayerReplicationInfo) != none && DHPlayerReplicationInfo(C.PlayerReplicationInfo).IsSLorASL();
}

// Modified to fix bug where the last line was being drawn at top of screen, instead of in vertical sequence, so overwriting info in the 1st screen line
simulated function DisplayDebug(Canvas Canvas, out float YL, out float YPos)
{
    if (Team != none)
    {
        Canvas.DrawText("     PlayerName" @ PlayerName @ "Team" @ Team.GetHumanReadableName() $ "(" $ Team.TeamIndex $ ") has flag" @ HasFlag);
    }
    else
    {
        Canvas.DrawText("     PlayerName" @ PlayerName @ "NO Team");
    }

    if (!bBot)
    {
        YPos += YL;
        Canvas.SetPos(4.0, YPos); // bug was here, as it was setting Y draw position to YL not YPos
        Canvas.DrawText("     bIsSpec:" $ bIsSpectator @ "OnlySpec:" $ bOnlySpectator @ "Waiting:" $ bWaitingPlayer @ "Ready:" $ bReadyToPlay @ "OutOfLives:" $ bOutOfLives);
    }
}

// Functions emptied out as RO/DH doesn't use a LocalStatsScreen actor, so all of this is just recording pointless information throughout each round
function AddWeaponKill(class<DamageType> D);
function AddVehicleKill(class<VehicleDamageType> D);
function AddWeaponDeath(class<DamageType> D);
function AddWeaponDeathHolding(class<Weapon> W);
function AddVehicleDeath(class<DamageType> D);
function AddVehicleDeathDriving(class<Vehicle> V);
simulated function UpdateWeaponStats(TeamPlayerReplicationInfo PRI, class<Weapon> W, int NewKills, int NewDeaths, int NewDeathsHolding);
simulated function UpdateVehicleStats(TeamPlayerReplicationInfo PRI, class<Vehicle> V, int NewKills, int NewDeaths, int NewDeathsDriving);

defaultproperties
{
    SquadIndex=-1
    SquadMemberIndex=-1
    SquadLeaderAbbreviation="SL"
    AssistantAbbreviation="A"
}
