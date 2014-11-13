//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2014
//==============================================================================

class DHSpawnPoint extends Actor
    hidecategories(Object,Collision,Lighting,LightColor,Karma,Force,Sound)
    placeable;

enum ESpawnPointType
{
    ESPT_Infantry,
    ESPT_Vehicles
};

enum ESpawnPointMethod
{
    ESPM_Hints,
    ESPM_Radius
};

var() ESpawnPointType Type;
var() ESpawnPointMethod Method;
var() bool bIsInitiallyActive;
var() int TeamIndex;
var() name LocationHintTag;
var() string SpawnPointName;
var() float SpawnProtectionTime;

var   array<DHLocationHint> LocationHints;
var   bool bIsActive;

function PreBeginPlay()
{
    bIsActive = bIsInitiallyActive;

    super.PreBeginPlay();
}

function PostBeginPlay()
{
    local DHLocationHint LH;

    foreach AllActors(class'DHLocationHint', LH)
    {
        if (LH.Tag == LocationHintTag)
        {
            LocationHints[LocationHints.Length] = LH;
        }
    }

    super.PostBeginPlay();
}

function Reset()
{
    bIsActive = bIsInitiallyActive;

    super.Reset();
}

defaultproperties
{
    bHidden=true
    bStatic=true
    RemoteRole=ROLE_none
    DrawScale=3.0
    SpawnPointName="UNNAMED SPAWN POINT!!!"
    SpawnProtectionTime=5.0
    Method=ESPM_LocationHint
}
