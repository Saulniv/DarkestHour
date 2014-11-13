//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2014
//==============================================================================

class DH_Ardennes_WSSTanker extends DH_WaffenSSTankCrew;

function class<ROHeadgear> GetHeadgear()
{
    if (FRand() < 0.2)
    {
        return Headgear[0];
    }
    else
    {
        return Headgear[1];
    }
}

defaultproperties
{
     MyName="Tank Crewman"
     AltName="Panzerbesatzung"
     Article="a "
     PluralName="Tank Crewmen"
     InfoText="The tank crewman is a composite role tasked with a variety of operations including  gunner, hull gunner and driver. Each position has a specific view sector out of the tank and is responsible for keeping watch and reporting enemy movements in that direction, as well as performing their primary function."
     MenuImage=Texture'DHGermanCharactersTex.Icons.WSS_TankCrew'
     Models(0)="Ardennes_SSP_1"
     Models(1)="Ardennes_SSP_2"
     Models(2)="Ardennes_SSP_3"
     Models(3)="Ardennes_SSP_4"
     Models(4)="Ardennes_SSP_5"
     SleeveTexture=Texture'DHGermanCharactersTex.GerSleeves.Dot44Sleeve'
     DetachedArmClass=class'ROEffects.SeveredArmGerTanker'
     DetachedLegClass=class'ROEffects.SeveredLegGerTanker'
     SecondaryWeapons(0)=(Item=class'DH_Weapons.DH_P38Weapon',Amount=1)
     Headgear(0)=class'DH_GerPlayers.DH_WSSHatPanzerA'
     Headgear(1)=class'DH_GerPlayers.DH_WSSHatPanzerB'
     PrimaryWeaponType=WT_SMG
     bEnhancedAutomaticControl=true
     bCanBeTankCrew=true
     Limit=3
}
