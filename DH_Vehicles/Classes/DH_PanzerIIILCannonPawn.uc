//==============================================================================
// DH_PanzerIIILCannonPawn
//
// Darkest Hour Source - (c) Darkest Hour Team 2010
// Red Orchestra Source - (c) Tripwire Interactive 2006
//
// German Panzer III Ausf. L tank cannon pawn
//==============================================================================
class DH_PanzerIIILCannonPawn extends DH_GermanTankCannonPawn;

defaultproperties
{
     ScopeCenterScale=0.635000
     ScopeCenterRotator=TexRotator'DH_VehicleOptics_tex.German.PZ3_Sight_Center'
     CenterRotationFactor=985
     OverlayCenterSize=0.830000
     DestroyedScopeOverlay=Texture'DH_VehicleOpticsDestroyed_tex.German.PZ3_sight_destroyed'
     bManualTraverseOnly=True
     PoweredRotateSound=Sound'Vehicle_Weapons.Turret.manual_turret_traverse'
     PoweredPitchSound=Sound'Vehicle_Weapons.Turret.manual_turret_elevate'
     PoweredRotateAndPitchSound=Sound'Vehicle_Weapons.Turret.manual_turret_traverse'
     CannonScopeCenter=Texture'DH_VehicleOptics_tex.German.PZ3_sight_graticule'
     ScopePositionX=0.237000
     ScopePositionY=0.150000
     WeaponFov=30.000000
     AmmoShellTexture=Texture'InterfaceArt_tex.Tank_Hud.Panzer3shell'
     AmmoShellReloadTexture=Texture'InterfaceArt_tex.Tank_Hud.Panzer3shell_reload'
     DriverPositions(0)=(ViewLocation=(X=30.000000,Y=-22.000000,Z=1.500000),ViewFOV=30.000000,PositionMesh=SkeletalMesh'DH_Panzer3_anm.Panzer3L_turret_int',ViewPitchUpLimit=3641,ViewPitchDownLimit=63715,ViewPositiveYawLimit=19000,ViewNegativeYawLimit=-20000,bDrawOverlays=True)
     DriverPositions(1)=(ViewFOV=85.000000,PositionMesh=SkeletalMesh'DH_Panzer3_anm.Panzer3L_turret_int',TransitionUpAnim="com_open",DriverTransitionAnim="VPanzer3_com_close",ViewPitchUpLimit=5000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=6000,ViewNegativeYawLimit=-10000)
     DriverPositions(2)=(ViewFOV=85.000000,PositionMesh=SkeletalMesh'DH_Panzer3_anm.Panzer3L_turret_int',TransitionDownAnim="com_close",DriverTransitionAnim="VPanzer3_com_open",ViewPitchUpLimit=5000,ViewPitchDownLimit=60000,ViewPositiveYawLimit=10000,ViewNegativeYawLimit=-10000,bExposed=True)
     DriverPositions(3)=(ViewFOV=12.000000,PositionMesh=SkeletalMesh'DH_Panzer3_anm.Panzer3L_turret_int',ViewPitchUpLimit=5000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=10000,ViewNegativeYawLimit=-10000,bDrawOverlays=True,bExposed=True)
     FireImpulse=(X=-80000.000000)
     GunClass=Class'DH_Vehicles.DH_PanzerIIILCannon'
     CameraBone="Gun"
     bPCRelativeFPRotation=True
     bFPNoZFromCameraPitch=True
     DriveAnim="VPanzer3_com_idle_close"
     ExitPositions(0)=(Y=100.000000,Z=150.000000)
     ExitPositions(1)=(Y=-100.000000,Z=150.000000)
     EntryRadius=130.000000
     FPCamPos=(X=50.000000,Y=-30.000000,Z=11.000000)
     TPCamDistance=300.000000
     TPCamLookat=(X=-25.000000,Z=0.000000)
     TPCamWorldOffset=(Z=120.000000)
     VehiclePositionString="in a Panzer III Ausf.M cannon"
     VehicleNameString="Panzer III Ausf.M Cannon"
     PitchUpLimit=6000
     PitchDownLimit=64000
     SoundVolume=130
}
