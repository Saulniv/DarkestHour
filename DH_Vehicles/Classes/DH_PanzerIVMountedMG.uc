//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_PanzerIVMountedMG extends DH_ROMountedTankMG;

defaultproperties
{
    ReloadSound=sound'Vehicle_reloads.Reloads.MG34_ReloadHidden'
    NumMags=5
    FireEffectOffset=(X=0.0)
    TracerProjectileClass=class'DH_MG34VehicleTracerBullet'
    TracerFrequency=7
    hudAltAmmoIcon=texture'InterfaceArt_tex.HUD.mg42_ammo'
    YawBone="mg_yaw"
    PitchBone="mg_pitch"
    PitchUpLimit=15000
    PitchDownLimit=45000
    WeaponFireAttachmentBone="mg_yaw"
    WeaponFireOffset=28.0
    bInstantFire=false
    Spread=0.002
    FireInterval=0.07059
    FireSoundClass=SoundGroup'DH_WeaponSounds.mg34.mg34_fire_loop'
    AmbientSoundScaling=5.0
    FireEndSound=SoundGroup'DH_WeaponSounds.mg34.mg34_fire_end'
    ProjectileClass=class'DH_Vehicles.DH_MG34VehicleBullet'
    ShakeRotMag=(X=10.0,Y=10.0,Z=10.0)
    ShakeOffsetMag=(X=0.01,Y=0.01,Z=0.01)
    MaxPositiveYaw=2730
    MaxNegativeYaw=-2730
    bLimitYaw=true
    InitialPrimaryAmmo=150
    Mesh=SkeletalMesh'axis_panzer4F1_anm.Panzer4F1_mg_ext'
}
