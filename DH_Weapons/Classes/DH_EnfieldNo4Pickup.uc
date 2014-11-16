//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2014
//==============================================================================

class DH_EnfieldNo4Pickup extends DHWeaponPickup
   notplaceable;

defaultproperties
{
     TouchMessage="Pick Up: Lee Enfield No. 4"
     MaxDesireability=0.780000
     InventoryType=class'DH_Weapons.DH_EnfieldNo4Weapon'
     PickupMessage="You got the Lee Enfield No. 4."
     PickupForce="AssaultRiflePickup"
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'DH_WeaponPickups.Weapons.EnfieldNo4'
     PrePivot=(Z=3.000000)
     CollisionRadius=25.000000
     CollisionHeight=3.000000
}
