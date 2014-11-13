//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2014
//==============================================================================

class DH_StielGranateTossFire extends ROThrownExplosiveFire;

defaultproperties
{
     minimumThrowSpeed=100.000000
     maximumThrowSpeed=500.000000
     speedFromHoldingPerSec=800.000000
     ProjSpawnOffset=(X=25.000000)
     AddedPitch=0
     bUsePreLaunchTrace=false
     bWaitForRelease=true
     PreFireAnim="Underhand_Pull_Pin"
     FireAnim="Toss"
     TweenTime=0.010000
     FireForce="RocketLauncherFire"
     FireRate=50.000000
     AmmoClass=class'ROAmmo.StielGranateAmmo'
     ProjectileClass=class'DH_Weapons.DH_StielGranateProjectile'
     BotRefireRate=0.500000
     WarnTargetPct=0.900000
     aimerror=200.000000
     Spread=75.000000
     SpreadStyle=SS_Random
}
