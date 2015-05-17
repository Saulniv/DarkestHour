//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_GreyhoundCannon extends DHTankCannon;

defaultproperties
{
    InitialTertiaryAmmo=8
    TertiaryProjectileClass=class'DH_Vehicles.DH_TankCannonShellCanisterAmerican'
    TertiarySpread=0.04
    SecondarySpread=0.00145
    ManualRotationsPerSecond=0.04
    FrontArmorFactor=1.9
    RightArmorFactor=1.9
    LeftArmorFactor=1.9
    RearArmorFactor=1.9
    FrontLeftAngle=319.0
    FrontRightAngle=41.0
    RearRightAngle=139.0
    RearLeftAngle=221.0
    ReloadSoundOne=sound'DH_AlliedVehicleSounds.Sherman.ShermanReload01'
    ReloadSoundTwo=sound'DH_AlliedVehicleSounds.Sherman.ShermanReload02'
    ReloadSoundThree=sound'DH_AlliedVehicleSounds.Sherman.ShermanReload03'
    ReloadSoundFour=sound'DH_AlliedVehicleSounds.Sherman.ShermanReload04'
    CannonFireSound(0)=SoundGroup'Inf_Weapons.PTRD.PTRD_fire01'
    CannonFireSound(1)=SoundGroup'Inf_Weapons.PTRD.PTRD_fire02'
    CannonFireSound(2)=SoundGroup'Inf_Weapons.PTRD.PTRD_fire03'
    ProjectileDescriptions(0)="APCBC"
    ProjectileDescriptions(2)="Canister"
    AddedPitch=26
    ReloadSound=sound'Vehicle_reloads.Reloads.MG34_ReloadHidden'
    NumAltMags=6
    AltTracerProjectileClass=class'DH_30CalVehicleTracerBullet'
    AltFireTracerFrequency=5
    bUsesTracers=true
    bAltFireTracersOnly=true
    MinCommanderHitHeight=40.5;
    VehHitpoints(0)=(PointRadius=8.0,PointScale=1.0,PointBone="com_player",PointOffset=(X=12.0,Y=4.0,Z=-3.0))
    VehHitpoints(1)=(PointRadius=12.0,PointScale=1.0,PointBone="com_player",PointOffset=(X=12.0,Y=4.0,Z=-20.0))
    hudAltAmmoIcon=texture'InterfaceArt_tex.HUD.mg42_ammo'
    YawBone="Turret"
    PitchBone="Gun"
    PitchUpLimit=15000
    PitchDownLimit=45000
    WeaponFireAttachmentBone="Gun"
    GunnerAttachmentBone="com_attachment"
    WeaponFireOffset=110.0
    AltFireOffset=(X=40.0,Y=11.0)
    bAmbientAltFireSound=true
    FireInterval=3.0
    AltFireInterval=0.12
    FireSoundVolume=512.0
    AltFireSoundClass=SoundGroup'DH_AlliedVehicleSounds2.3Cal.V30cal_loop01'
    AltFireSoundScaling=3.0
    AltFireEndSound=SoundGroup'DH_AlliedVehicleSounds2.3Cal.V30cal_end01'
    FireForce="Explosion05"
    ProjectileClass=class'DH_Vehicles.DH_GreyhoundCannonShell'
    AltFireProjectileClass=class'DH_Vehicles.DH_30CalVehicleBullet'
    ShakeRotMag=(Z=50.0)
    ShakeRotRate=(Z=600.0)
    ShakeRotTime=4.0
    ShakeOffsetMag=(Z=5.0)
    ShakeOffsetRate=(Z=100.0)
    ShakeOffsetTime=6.0
    AltShakeRotMag=(X=0.01,Y=0.01,Z=0.01)
    AltShakeRotRate=(X=1000.0,Y=1000.0,Z=1000.0)
    AltShakeRotTime=2.0
    AltShakeOffsetMag=(X=0.01,Y=0.01,Z=0.01)
    AltShakeOffsetRate=(X=1000.0,Y=1000.0,Z=1000.0)
    AltShakeOffsetTime=2.0
    AIInfo(0)=(bLeadTarget=true,WarnTargetPct=0.75,RefireRate=0.5)
    AIInfo(1)=(bLeadTarget=true,WarnTargetPct=0.75,RefireRate=0.015)
    CustomPitchUpLimit=3641
    CustomPitchDownLimit=63716
    BeginningIdleAnim="com_idle_close"
    InitialPrimaryAmmo=24
    InitialSecondaryAmmo=48
    InitialAltAmmo=250
    PrimaryProjectileClass=class'DH_Vehicles.DH_GreyhoundCannonShell'
    SecondaryProjectileClass=class'DH_Vehicles.DH_GreyhoundCannonShellHE'
    Mesh=SkeletalMesh'DH_Greyhound_anm.Greyhound_turret_ext'
    Skins(0)=texture'DH_VehiclesUS_tex4.ext_vehicles.Greyhound_turret_ext'
    Skins(1)=texture'DH_VehiclesUS_tex4.int_vehicles.Greyhound_body_int'
    SoundVolume=100
    SoundRadius=300.0
}
