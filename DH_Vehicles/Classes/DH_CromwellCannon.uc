//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2016
//==============================================================================

class DH_CromwellCannon extends DHVehicleCannon;

defaultproperties
{
    // Turret mesh
    Mesh=SkeletalMesh'DH_Cromwell_anm.Cromwell_turret_ext'
    Skins(0)=texture'DH_VehiclesUK_tex.ext_vehicles.Cromwell_body_ext'
    Skins(1)=texture'DH_VehiclesUK_tex.int_vehicles.Cromwell_body_int2'
    CollisionStaticMesh=StaticMesh'DH_allies_vehicles_stc.Cromwell.Cromwell_turret_Coll'
    FireAttachBone="Turret"
    FireEffectOffset=(X=-3.0,Y=-30.0,Z=50.0)

    // Turret armor
    FrontArmorFactor=7.6
    RightArmorFactor=6.3
    LeftArmorFactor=6.3
    RearArmorFactor=5.7
    FrontLeftAngle=318.0
    FrontRightAngle=42.0
    RearRightAngle=138.0
    RearLeftAngle=222.0

    // Turret movement
    ManualRotationsPerSecond=0.029
    PoweredRotationsPerSecond=0.0625
    CustomPitchUpLimit=3641
    CustomPitchDownLimit=64500

    // Cannon ammo
    ProjectileClass=class'DH_Vehicles.DH_CromwellCannonShell'
    PrimaryProjectileClass=class'DH_Vehicles.DH_CromwellCannonShell'
    SecondaryProjectileClass=class'DH_Vehicles.DH_CromwellCannonShellHE'
    TertiaryProjectileClass=class'DH_Vehicles.DH_CromwellCannonShellSmoke'
    ProjectileDescriptions(2)="Smoke"
    InitialPrimaryAmmo=33
    InitialSecondaryAmmo=26
    InitialTertiaryAmmo=5
    SecondarySpread=0.00175
    TertiarySpread=0.0036

    // Coaxial MG ammo
    AltFireProjectileClass=class'DH_Vehicles.DH_BesaVehicleBullet'
    InitialAltAmmo=225
    NumMGMags=10
    AltFireInterval=0.092
    TracerProjectileClass=class'DH_Vehicles.DH_BesaVehicleTracerBullet'
    TracerFrequency=5

    // Weapon fire
    AltFireOffset=(X=-109.5,Y=-11.5,Z=1.0)
    AltFireSpawnOffsetX=23.0
    AltShakeRotMag=(X=10.0,Y=10.0,Z=10.0)

    // Sounds
    CannonFireSound(0)=SoundGroup'DH_AlliedVehicleSounds.75mm.DHM3-75mm'
    CannonFireSound(1)=SoundGroup'DH_AlliedVehicleSounds.75mm.DHM3-75mm'
    CannonFireSound(2)=SoundGroup'DH_AlliedVehicleSounds.75mm.DHM3-75mm'
    AltFireSoundClass=SoundGroup'Inf_Weapons.dt.dt_fire_loop'
    AltFireEndSound=SoundGroup'Inf_Weapons.dt.dt_fire_end'
    ReloadStages(0)=(Sound=sound'DH_Vehicle_Reloads.Reloads.reload_01s_01')
    ReloadStages(1)=(Sound=sound'DH_Vehicle_Reloads.Reloads.reload_01s_02')
    ReloadStages(2)=(Sound=sound'DH_Vehicle_Reloads.Reloads.reload_01s_03')
    ReloadStages(3)=(Sound=sound'DH_Vehicle_Reloads.Reloads.reload_01s_04')
    AltReloadSound=sound'Vehicle_reloads.Reloads.DT_ReloadHidden'
    SoundRadius=300.0 // TODO: maybe remove so inherits default 200, as not a powerful gun

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
}
