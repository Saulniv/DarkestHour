//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2016
//==============================================================================

class DH_FJGunner extends DH_FJ;

defaultproperties
{
    MyName="Machine-Gunner"
    AltName="Maschinengewehrschütze"
    Article="a "
    PluralName="Machine-Gunners"
    bIsGunner=true
    SleeveTexture=texture'DHGermanCharactersTex.GerSleeves.FJ_Sleeve'
    PrimaryWeapons(0)=(Item=class'DH_Weapons.DH_MG42Weapon')
    PrimaryWeapons(1)=(Item=class'DH_Weapons.DH_MG34Weapon')
    SecondaryWeapons(0)=(Item=class'DH_Weapons.DH_P38Weapon')
    Headgear(0)=class'DH_GerPlayers.DH_FJHelmetCamo1'
    Headgear(1)=class'DH_GerPlayers.DH_FJHelmetCamo2'
    Headgear(2)=class'DH_GerPlayers.DH_FJHelmetNet1'
    PrimaryWeaponType=WT_LMG
    Limit=2
}
