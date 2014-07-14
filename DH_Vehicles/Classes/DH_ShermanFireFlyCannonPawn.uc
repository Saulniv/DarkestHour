//==============================================================================
// DH_ShermanFireFlyCannonPawn
//
// Darkest Hour Source - (c) Darkest Hour Team 2010
// Red Orchestra Source - (c) Tripwire Interactive 2006
//
// British 'Sherman' VC tank cannon pawn
//==============================================================================
class DH_ShermanFireFlyCannonPawn extends DH_BritishTankCannonPawn;


simulated function SpecialCalcFirstPersonView(PlayerController PC, out actor ViewActor, out vector CameraLocation, out rotator CameraRotation )
{
    local vector x, y, z;
    local vector VehicleZ, CamViewOffsetWorld;
    local float CamViewOffsetZAmount;
    local coords CamBoneCoords;
    local rotator WeaponAimRot;
    local quat AQuat, BQuat, CQuat;

    GetAxes(CameraRotation, x, y, z);
    ViewActor = self;

    WeaponAimRot = rotator(vector(Gun.CurrentAim) >> Gun.Rotation);
    WeaponAimRot.Roll =  GetVehicleBase().Rotation.Roll;

    if( ROPlayer(Controller) != none )
    {
        ROPlayer(Controller).WeaponBufferRotation.Yaw = WeaponAimRot.Yaw;
        ROPlayer(Controller).WeaponBufferRotation.Pitch = WeaponAimRot.Pitch;
    }

    // This makes the camera stick to the cannon, but you have no control
    if (DriverPositionIndex < GunsightPositions)
    {
        CameraRotation =  WeaponAimRot;
        // Make the cannon view have no roll
        CameraRotation.Roll = 0;
    }
    else if (bPCRelativeFPRotation)
    {
        //__________________________________________
        // First, Rotate the headbob by the player
        // controllers rotation (looking around) ---
        AQuat = QuatFromRotator(PC.Rotation);
        BQuat = QuatFromRotator(HeadRotationOffset - ShiftHalf);
        CQuat = QuatProduct(AQuat,BQuat);
        //__________________________________________
        // Then, rotate that by the vehicles rotation
        // to get the final rotation ---------------
        AQuat = QuatFromRotator(GetVehicleBase().Rotation);
        BQuat = QuatProduct(CQuat,AQuat);
        //__________________________________________
        // Make it back into a rotator!
        CameraRotation = QuatToRotator(BQuat);
    }
    else
        CameraRotation = PC.Rotation;

    if( IsInState('ViewTransition') && bLockCameraDuringTransition )
    {
        CameraRotation = Gun.GetBoneRotation( 'Camera_com' );
    }

    CamViewOffsetWorld = FPCamViewOffset >> CameraRotation;

    if(CameraBone != '' && Gun != None)
    {
        CamBoneCoords = Gun.GetBoneCoords(CameraBone);

        if( DriverPositions[DriverPositionIndex].bDrawOverlays && DriverPositionIndex < GunsightPositions && !IsInState('ViewTransition'))
        {
            CameraLocation = CamBoneCoords.Origin + (FPCamPos >> WeaponAimRot) + CamViewOffsetWorld;
        }
        else
        {
            CameraLocation = Gun.GetBoneCoords('Camera_com').Origin + (FPCamPos >> WeaponAimRot) + CamViewOffsetWorld;
        }

        if(bFPNoZFromCameraPitch)
        {
            VehicleZ = vect(0,0,1) >> WeaponAimRot;
            CamViewOffsetZAmount = CamViewOffsetWorld dot VehicleZ;
            CameraLocation -= CamViewOffsetZAmount * VehicleZ;
        }
    }
    else
    {
        CameraLocation = GetCameraLocationStart() + (FPCamPos >> Rotation) + CamViewOffsetWorld;

        if(bFPNoZFromCameraPitch)
        {
            VehicleZ = vect(0,0,1) >> Rotation;
            CamViewOffsetZAmount = CamViewOffsetWorld Dot VehicleZ;
            CameraLocation -= CamViewOffsetZAmount * VehicleZ;
        }
    }

    CameraRotation = Normalize(CameraRotation + PC.ShakeRot);
    CameraLocation = CameraLocation + PC.ShakeOffset.X * x + PC.ShakeOffset.Y * y + PC.ShakeOffset.Z * z;
}

defaultproperties
{
     PeriscopePositionIndex=2
     GunsightPositions=2
     UnbuttonedPositionIndex=3
     DestroyedScopeOverlay=Texture'DH_VehicleOpticsDestroyed_tex.Allied.17pdr_sight_destroyed'
     PoweredRotateSound=Sound'DH_AlliedVehicleSounds.Sherman.ShermanTurretTraverse'
     PoweredPitchSound=Sound'Vehicle_Weapons.Turret.manual_turret_elevate'
     PoweredRotateAndPitchSound=Sound'DH_AlliedVehicleSounds.Sherman.ShermanTurretTraverse'
     CannonScopeOverlay=Texture'DH_VehicleOptics_tex.Allied.17Pdr_sight_background'
     CannonScopeCenter=Texture'DH_VehicleOptics_tex.Allied.British_sight_mover'
     ScopePositionX=0.000000
     ScopePositionY=0.000000
     BinocPositionIndex=4
     WeaponFov=24.000000
     AmmoShellTexture=Texture'InterfaceArt_tex.Tank_Hud.T3485shell'
     AmmoShellReloadTexture=Texture'InterfaceArt_tex.Tank_Hud.T3485shell_reload'
     DriverPositions(0)=(ViewLocation=(X=21.000000,Y=14.000000,Z=6.000000),ViewFOV=12.000000,PositionMesh=SkeletalMesh'DH_ShermanFirefly_anm.ShermanFirefly_turret_ext',ViewPitchUpLimit=4551,ViewPitchDownLimit=64625,ViewPositiveYawLimit=19000,ViewNegativeYawLimit=-20000,bDrawOverlays=True)
     DriverPositions(1)=(ViewLocation=(X=21.000000,Y=14.000000,Z=6.000000),ViewFOV=24.000000,PositionMesh=SkeletalMesh'DH_ShermanFirefly_anm.ShermanFirefly_turret_ext',TransitionUpAnim="Periscope_in",ViewPitchUpLimit=4551,ViewPitchDownLimit=64625,bDrawOverlays=True)
     DriverPositions(2)=(ViewFOV=85.000000,PositionMesh=SkeletalMesh'DH_ShermanFirefly_anm.ShermanFirefly_turret_ext',TransitionUpAnim="com_open",ViewPitchUpLimit=1,ViewPitchDownLimit=65535,ViewPositiveYawLimit=65536,ViewNegativeYawLimit=-65536,bDrawOverlays=True)
     DriverPositions(3)=(ViewLocation=(X=-5.000000,Z=15.000000),ViewFOV=85.000000,PositionMesh=SkeletalMesh'DH_ShermanFirefly_anm.ShermanFirefly_turret_ext',TransitionDownAnim="com_close",DriverTransitionAnim="stand_idlehip_binoc",ViewPitchUpLimit=10000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=10000,ViewNegativeYawLimit=-10000,bExposed=True)
     DriverPositions(4)=(ViewLocation=(X=-5.000000,Z=15.000000),ViewFOV=12.000000,PositionMesh=SkeletalMesh'DH_ShermanFirefly_anm.ShermanFirefly_turret_ext',DriverTransitionAnim="stand_idleiron_binoc",ViewPitchUpLimit=10000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=10000,ViewNegativeYawLimit=-10000,bDrawOverlays=True,bExposed=True)
     FireImpulse=(X=-100000.000000)
     GunClass=Class'DH_Vehicles.DH_ShermanFireFlyCannon'
     CameraBone="Gun"
     bPCRelativeFPRotation=True
     bFPNoZFromCameraPitch=True
     DrivePos=(X=2.000000,Z=-5.000000)
     DriveAnim="stand_idlehip_binoc"
     ExitPositions(0)=(X=20.000000,Y=-10.000000,Z=186.000000)
     ExitPositions(1)=(X=20.000000,Y=10.000000,Z=186.000000)
     EntryRadius=130.000000
     TPCamDistance=300.000000
     TPCamLookat=(X=-25.000000,Z=0.000000)
     TPCamWorldOffset=(Z=120.000000)
     VehiclePositionString="in a Sherman Mk.VC cannon"
     VehicleNameString="Sherman Mk.VC Cannon"
     PitchUpLimit=6000
     PitchDownLimit=64000
     SoundVolume=130
}
