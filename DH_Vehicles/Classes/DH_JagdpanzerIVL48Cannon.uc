//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2014
//==============================================================================

class DH_JagdpanzerIVL48Cannon extends DH_ROTankCannon;

defaultproperties
{
     InitialTertiaryAmmo=5
     TertiaryProjectileClass=class'DH_Vehicles.DH_JagdpanzerIVL48CannonShellSmoke'
     SecondarySpread=0.001270
     TertiarySpread=0.003570
     ManualRotationsPerSecond=0.033000
     PoweredRotationsPerSecond=0.033000
     bIsAssaultGun=true
     FrontArmorFactor=8.000000
     RightArmorFactor=8.000000
     LeftArmorFactor=8.000000
     RearArmorFactor=8.000000
     FrontArmorSlope=40.000000
     RightArmorSlope=40.000000
     LeftArmorSlope=40.000000
     RearArmorSlope=40.000000
     FrontLeftAngle=293.000000
     FrontRightAngle=67.000000
     RearRightAngle=113.000000
     RearLeftAngle=247.000000
     ReloadSoundOne=Sound'DH_Vehicle_Reloads.Reloads.reload_01s_01'
     ReloadSoundTwo=Sound'DH_Vehicle_Reloads.Reloads.reload_01s_02'
     ReloadSoundThree=Sound'DH_Vehicle_Reloads.Reloads.reload_01s_03'
     ReloadSoundFour=Sound'DH_Vehicle_Reloads.Reloads.reload_01s_04'
     CannonFireSound(0)=SoundGroup'Vehicle_Weapons.PanzerIV_F2.75mm_L_fire01'
     CannonFireSound(1)=SoundGroup'Vehicle_Weapons.PanzerIV_F2.75mm_L_fire02'
     CannonFireSound(2)=SoundGroup'Vehicle_Weapons.PanzerIV_F2.75mm_L_fire03'
     ProjectileDescriptions(0)="APCBC"
     ProjectileDescriptions(2)="Smoke"
     RangeSettings(1)=100
     RangeSettings(2)=200
     RangeSettings(3)=300
     RangeSettings(4)=400
     RangeSettings(5)=500
     RangeSettings(6)=600
     RangeSettings(7)=700
     RangeSettings(8)=800
     RangeSettings(9)=900
     RangeSettings(10)=1000
     RangeSettings(11)=1100
     RangeSettings(12)=1200
     RangeSettings(13)=1300
     RangeSettings(14)=1400
     RangeSettings(15)=1500
     RangeSettings(16)=1600
     RangeSettings(17)=1700
     RangeSettings(18)=1800
     RangeSettings(19)=1900
     RangeSettings(20)=2000
     RangeSettings(21)=2200
     RangeSettings(22)=2400
     RangeSettings(23)=2600
     RangeSettings(24)=2800
     RangeSettings(25)=3000
     VehHitpoints(0)=(PointRadius=9.000000,PointScale=1.000000,PointBone="com_player",PointOffset=(X=-1.000000,Z=-1.000000))
     YawBone="Turret"
     YawStartConstraint=-3000.000000
     YawEndConstraint=3000.000000
     PitchBone="Turret"
     PitchUpLimit=15000
     PitchDownLimit=45000
     WeaponFireAttachmentBone="Barrel"
     GunnerAttachmentBone="Commander_attachment"
     WeaponFireOffset=-80.000000
     RotationsPerSecond=0.033000
     FireInterval=4.000000
     EffectEmitterClass=class'ROEffects.TankCannonFireEffect'
     FireSoundVolume=512.000000
     RotateSound=Sound'Vehicle_Weapons.Turret.manual_gun_traverse'
     FireForce="Explosion05"
     ProjectileClass=class'DH_Vehicles.DH_JagdpanzerIVL48CannonShell'
     ShakeRotMag=(Z=50.000000)
     ShakeRotRate=(Z=1000.000000)
     ShakeRotTime=4.000000
     ShakeOffsetMag=(Z=1.000000)
     ShakeOffsetRate=(Z=100.000000)
     ShakeOffsetTime=10.000000
     AIInfo(0)=(bLeadTarget=true,WarnTargetPct=0.750000,RefireRate=0.500000)
     AIInfo(1)=(bLeadTarget=true,WarnTargetPct=0.750000,RefireRate=0.015000)
     CustomPitchUpLimit=2731
     CustomPitchDownLimit=64653
     MaxPositiveYaw=1820
     MaxNegativeYaw=-1820
     bLimitYaw=true
     BeginningIdleAnim="Overlay_Idle"
     InitialPrimaryAmmo=54
     InitialSecondaryAmmo=20
     PrimaryProjectileClass=class'DH_Vehicles.DH_JagdpanzerIVL48CannonShell'
     SecondaryProjectileClass=class'DH_Vehicles.DH_JagdpanzerIVL48CannonShellHE'
     Mesh=SkeletalMesh'DH_Jagdpanzer4_anm.jagdpanzer4L48_turret_ext'
     Skins(0)=Texture'DH_VehiclesGE_tex4.ext_vehicles.jagdpanzeriv_body_camo1'
     Skins(1)=Texture'DH_VehiclesGE_tex4.int_vehicles.jagdpanzeriv_body_int'
     Skins(2)=Texture'DH_VehiclesGE_tex4.int_vehicles.jagdpanzeriv_body_int'
     SoundVolume=130
     SoundRadius=200.000000
}
