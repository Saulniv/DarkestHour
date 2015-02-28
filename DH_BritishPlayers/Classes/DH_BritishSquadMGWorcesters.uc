//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_BritishSquadMGWorcesters extends DH_Worcesters;

defaultproperties
{
    MyName="Bren Gunner"
    AltName="Bren Gunner"
    Article="a "
    PluralName="Bren Gunners"
    MenuImage=texture'DHBritishCharactersTex.Icons.Brit_SMG'
    Models(0)="Wor_1"
    Models(1)="Wor_2"
    Models(2)="Wor_3"
    Models(3)="Wor_4"
    Models(4)="Wor_5"
    Models(5)="Wor_6"
    bIsGunner=true
    SleeveTexture=texture'DHBritishCharactersTex.Sleeves.brit_sleeves'
    PrimaryWeapons(0)=(Item=class'DH_Weapons.DH_BrenWeapon',Amount=6)
    Headgear(0)=class'DH_BritishPlayers.DH_BritishTurtleHelmet'
    Headgear(1)=class'DH_BritishPlayers.DH_BritishTurtleHelmetNet'
    Headgear(2)=class'DH_BritishPlayers.DH_BritishTommyHelmet'
    bCarriesMGAmmo=false
    PrimaryWeaponType=WT_LMG
    Limit=3
}
xture'DHBritishCharactersTex.Sleeves.brit_sleeves'
    PrimaryWeapons(0)=(Item=class'DH_Weapons.DH_BrenWeapon',Amount=6)
    Headgear(0)=class'DH_BritishPlayers.DH_BritishTurtleHelmet'
    Headgear(1)=class'DH_BritishPlayers.DH_BritishTurtleHelmetNet'
    Headgear(2)=class'DH_BritishPlayers.DH_BritishTommyHelmet'
    bCarriesMGAmmo=false
    PrimaryWeaponType=WT_LMG
    Limit=3
}
