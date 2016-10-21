//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2016
//==============================================================================

class DH_T3476Cannon extends DHVehicleCannon;

defaultproperties
{
    // Turret mesh
    Mesh=SkeletalMesh'DH_T34_anm.T34-76_turret_ext'
    Skins(0)=Texture'allies_vehicles_tex.ext_vehicles.T3476_ext'
    Skins(1)=Texture'allies_vehicles_tex.int_vehicles.T3476_int'
    bUseHighDetailOverlayIndex=true
    HighDetailOverlayIndex=1
    HighDetailOverlay=material'allies_vehicles_tex.int_vehicles.t3476_int_s'
    CollisionStaticMesh=StaticMesh'DH_allies_vehicles_stc4.T34-76_turret_col'

    // Turret armor
    FrontArmorFactor=4.0
    RightArmorFactor=5.2
    LeftArmorFactor=5.2
    RearArmorFactor=5.2
    FrontArmorSlope=30.0
    RightArmorSlope=30.0
    LeftArmorSlope=30.0
    RearArmorSlope=30.0
    FrontLeftAngle=320.0
    FrontRightAngle=40.0
    RearRightAngle=140.0
    RearLeftAngle=220.0

    // Turret movement
    ManualRotationsPerSecond=0.029
    PoweredRotationsPerSecond=0.07
    CustomPitchUpLimit=4660
    CustomPitchDownLimit=64535

    // Cannon ammo
    ProjectileClass=class'DH_Vehicles.DH_T3476CannonShell'
    PrimaryProjectileClass=class'DH_Vehicles.DH_T3476CannonShell'
    SecondaryProjectileClass=class'DH_Vehicles.DH_T3476CannonShellHE'
    ProjectileDescriptions(0)="APBC"
    InitialPrimaryAmmo=27
    InitialSecondaryAmmo=50
    SecondarySpread=0.002

    // Coaxial MG ammo
    AltFireProjectileClass=class'DH_Weapons.DH_DP28Bullet'
    InitialAltAmmo=60
    NumMGMags=15
    AltFireInterval=0.1
    TracerProjectileClass=class'DH_Weapons.DH_DP28TracerBullet'
    TracerFrequency=5

    // Weapon fire
    WeaponFireAttachmentBone="Gun"
    WeaponFireOffset=200.0
    AddedPitch=360
    AltFireOffset=(X=13.0,Y=12.0,Z=2.0)

    // Sounds
    CannonFireSound(0)=sound'Vehicle_Weapons.T34_76.76mm_fire01'
    CannonFireSound(1)=sound'Vehicle_Weapons.T34_76.76mm_fire02'
    CannonFireSound(2)=sound'Vehicle_Weapons.T34_76.76mm_fire03'
    AltFireSoundClass=sound'Inf_Weapons.dt_fire_loop'
    AltFireEndSound=sound'Inf_Weapons.dt.dt_fire_end'
    AltFireSoundScaling=3.0
    ReloadStages(0)=(Sound=sound'Vehicle_reloads.Reloads.t34_76_reload_01')
    ReloadStages(1)=(Sound=sound'Vehicle_reloads.Reloads.t34_76_reload_02')
    ReloadStages(2)=(Sound=sound'Vehicle_reloads.Reloads.t34_76_reload_03')
    ReloadStages(3)=(Sound=sound'Vehicle_reloads.Reloads.t34_76_reload_04')
    AltReloadSound=sound'Vehicle_reloads.Reloads.DT_ReloadHidden'

    // Cannon range settings
    RangeSettings(1)=200
    RangeSettings(2)=400
    RangeSettings(3)=600
    RangeSettings(4)=800
    RangeSettings(5)=1000
    RangeSettings(6)=1200
    RangeSettings(7)=1400
    RangeSettings(8)=1600
    RangeSettings(9)=1800
    RangeSettings(10)=2000
    RangeSettings(11)=2200
    RangeSettings(12)=2400
    RangeSettings(13)=2600
    RangeSettings(14)=2800
    RangeSettings(15)=3000
    RangeSettings(16)=3200
    RangeSettings(17)=3400
    RangeSettings(18)=3600
    RangeSettings(19)=3800
    RangeSettings(20)=4000
    RangeSettings(21)=4200
    RangeSettings(22)=4400
    RangeSettings(23)=4600
    RangeSettings(24)=4800
    RangeSettings(25)=5000
}
