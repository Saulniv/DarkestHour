//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2014
//==============================================================================

class DH_OpelBlitzTransport extends DH_ROWheeledVehicle;

#exec OBJ LOAD FILE=..\Animations\DH_OpelBlitz_anm.ukx
#exec OBJ LOAD FILE=..\Textures\DH_VehiclesGE_tex2.utx

//resupply attachment code
var     DH_OpelBlitzResupplyAttachment    ResupplyAttach;
var()   name                              ResupplyAttachBone;

var     DH_OpelBlitzDecoAttachment        DecorationAttach;
var()   name                              DecorationAttachBone;

static function StaticPrecache(LevelInfo L)
{
    super.StaticPrecache(L);

    L.AddPrecacheMaterial(Material'DH_VehiclesGE_tex2.ext_vehicles.OpelBlitz_body_ext');
    L.AddPrecacheMaterial(Material'DH_VehiclesGE_tex2.int_vehicles.OpelBlitz_body_int');

}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'DH_VehiclesGE_tex2.ext_vehicles.OpelBlitz_body_ext');
    Level.AddPrecacheMaterial(Material'DH_VehiclesGE_tex2.int_vehicles.OpelBlitz_body_int');

    super.UpdatePrecacheMaterials();
}

simulated function PostBeginPlay()
{
     super.PostBeginPlay();

     if (ResupplyAttach == none)
     {
           ResupplyAttach = Spawn(class'DH_OpelBlitzResupplyAttachment');
           AttachToBone(ResupplyAttach, ResupplyAttachBone);
     }

     if (DecorationAttach == none)
     {
           DecorationAttach = Spawn(class'DH_OpelBlitzDecoAttachment');
           AttachToBone(DecorationAttach, DecorationAttachBone);
     }

}

simulated function Destroyed()
{

    if (ResupplyAttach != none)
        ResupplyAttach.Destroy();

    if (DecorationAttach != none)
        DecorationAttach.Destroy();

    super.Destroyed();
}

simulated event DestroyAppearance()
{

    if (ResupplyAttach != none)
    {
        ResupplyAttach.Destroy();
    }

    super.DestroyAppearance();
}

// Overridden due to the Onslaught team lock not working in RO
function bool TryToDrive(Pawn P)
{
    local int x;

    //don't allow vehicle to be stolen when somebody is in a turret
    if (!bTeamLocked && P.GetTeamNum() != VehicleTeam)
    {
        for (x = 0; x < WeaponPawns.length; x++)
            if (WeaponPawns[x].Driver != none)
            {
                DenyEntry(P, 2);
                return false;
            }
    }

    if (P.bIsCrouched ||  bNonHumanControl || (P.Controller == none) || (Driver != none) || (P.DrivenVehicle != none) || !P.Controller.bIsPlayer
         || P.IsA('Vehicle') || Health <= 0 || (P.Weapon != none && P.Weapon.IsInState('Reloading')))
        return false;

    if (!Level.Game.CanEnterVehicle(self, P))
        return false;

    // Check vehicle Locking....
    if (bTeamLocked && (P.GetTeamNum() != VehicleTeam))
    {
        DenyEntry(P, 1);
        return false;
    }
    else if (bMustBeTankCommander && !ROPlayerReplicationInfo(P.Controller.PlayerReplicationInfo).RoleInfo.bCanBeTankCrew && P.IsHumanControlled())
    {
       DenyEntry(P, 0);
       return false;
    }
    else
    {
        if (bEnterringUnlocks && bTeamLocked)
            bTeamLocked = false;

        KDriverEnter(P);
        return true;
    }
}

defaultproperties
{
    ResupplyAttachBone="supply"
    DecorationAttachBone="Deco"
    bResupplyVehicle=true
    WheelSoftness=0.025
    WheelPenScale=1.2
    WheelPenOffset=0.01
    WheelRestitution=0.1
    WheelInertia=0.1
    WheelLongFrictionFunc=(Points=(,(InVal=100.0,OutVal=1.0),(InVal=200.0,OutVal=0.9),(InVal=10000000000.0,OutVal=0.9)))
    WheelLongSlip=0.001
    WheelLatSlipFunc=(Points=(,(InVal=30.0,OutVal=0.009),(InVal=45.0),(InVal=10000000000.0)))
    WheelLongFrictionScale=1.1
    WheelLatFrictionScale=1.35
    WheelHandbrakeSlip=0.01
    WheelHandbrakeFriction=0.1
    WheelSuspensionTravel=15.0
    WheelSuspensionMaxRenderTravel=15.0
    FTScale=0.03
    ChassisTorqueScale=0.4
    MinBrakeFriction=4.0
    MaxSteerAngleCurve=(Points=((OutVal=35.0),(InVal=1500.0,OutVal=20.0),(InVal=1000000000.0,OutVal=15.0)))
    TorqueCurve=(Points=((OutVal=10.0),(InVal=300.0,OutVal=2.0),(InVal=1500.0,OutVal=5.0),(InVal=2400.0)))
    GearRatios(0)=-0.2
    GearRatios(1)=0.2
    GearRatios(2)=0.35
    GearRatios(3)=0.65
    GearRatios(4)=0.95
    TransRatio=0.2
    ChangeUpPoint=2000.0
    ChangeDownPoint=1000.0
    LSDFactor=1.0
    EngineBrakeFactor=0.0001
    EngineBrakeRPMScale=0.1
    MaxBrakeTorque=20.0
    SteerSpeed=50.0
    TurnDamping=35.0
    StopThreshold=100.0
    HandbrakeThresh=200.0
    EngineInertia=0.1
    IdleRPM=700.0
    EngineRPMSoundRange=5000.0
    SteerBoneName="WheelDrive"
    RevMeterScale=4000.0
    ExhaustEffectClass=class'ROEffects.ExhaustPetrolEffect'
    ExhaustEffectLowClass=class'ROEffects.ExhaustPetrolEffect_simple'
    ExhaustPipes(0)=(ExhaustPosition=(X=-30.0,Y=180.0,Z=-50.0),ExhaustRotation=(Pitch=36000,Yaw=5000))
    PassengerWeapons(0)=(WeaponPawnClass=class'DH_Vehicles.DH_OpelBlitzPassengerOne',WeaponBone="passenger1")
    PassengerWeapons(1)=(WeaponPawnClass=class'DH_Vehicles.DH_OpelBlitzPassengerFour',WeaponBone="passenger_l_3")
    PassengerWeapons(2)=(WeaponPawnClass=class'DH_Vehicles.DH_OpelBlitzPassengerSeven',WeaponBone="passenger_r_3")
    IdleSound=SoundGroup'Vehicle_Engines.BA64.ba64_engine_loop'
    StartUpSound=sound'Vehicle_Engines.BA64.BA64_engine_start'
    ShutDownSound=sound'Vehicle_Engines.BA64.BA64_engine_stop'
    DestroyedVehicleMesh=StaticMesh'DH_German_vehicles_stc.Trucks.OpelBlitz_dest'
    DisintegrationEffectClass=class'ROEffects.ROVehicleObliteratedEmitter'
    DisintegrationEffectLowClass=class'ROEffects.ROVehicleObliteratedEmitter_simple'
    DisintegrationHealth=-1000.0
    DestructionLinearMomentum=(Min=100.0,Max=350.0)
    DestructionAngularMomentum=(Max=150.0)
    DamagedEffectScale=0.8
    DamagedEffectOffset=(X=115.0,Z=70.0)
    ImpactDamageThreshold=5000.0
    ImpactDamageMult=0.001
    SteeringScaleFactor=4.0
    BeginningIdleAnim="driver_hatch_idle_close"
    DriverPositions(0)=(PositionMesh=SkeletalMesh'DH_OpelBlitz_anm.OpelBlitz_body_int',TransitionUpAnim="Overlay_In",ViewPitchUpLimit=10000,ViewPitchDownLimit=60000,ViewPositiveYawLimit=20000,ViewNegativeYawLimit=-20000,bExposed=true,ViewFOV=90.0)
    DriverPositions(1)=(PositionMesh=SkeletalMesh'DH_OpelBlitz_anm.OpelBlitz_body_int',TransitionDownAnim="Overlay_Out",ViewPitchUpLimit=10000,ViewPitchDownLimit=60000,ViewPositiveYawLimit=20000,ViewNegativeYawLimit=-20000,bExposed=true,ViewFOV=90.0)
    InitialPositionIndex=0
    VehicleHudImage=texture'DH_InterfaceArt_tex.Tank_Hud.opelblitz_body'
    VehicleHudOccupantsX(0)=0.45
    VehicleHudOccupantsX(1)=0.55
    VehicleHudOccupantsX(2)=0.45
    VehicleHudOccupantsX(3)=0.55
    VehicleHudOccupantsY(0)=0.35
    VehicleHudOccupantsY(1)=0.35
    VehicleHudOccupantsY(2)=0.8
    VehicleHudOccupantsY(3)=0.8
    VehicleHudEngineY=0.25
    VehHitpoints(0)=(PointBone="Camera_driver",bPenetrationPoint=false)
    VehHitpoints(1)=(PointBone="Engine",PointOffset=(X=16.0),DamageMultiplier=1.0)
    VehHitpoints(2)=(PointRadius=40.0,PointScale=1.0,PointBone="body",PointOffset=(Y=50.0,Z=15.0),DamageMultiplier=5.0,HitPointType=HP_AmmoStore)
    EngineHealth=35
    DriverAttachmentBone="driver_player"
    Begin Object Class=SVehicleWheel Name=RFWheel
        SteerType=VST_Steered
        BoneName="wheel_FR"
        BoneRollAxis=AXIS_Y
        WheelRadius=25.0
        SupportBoneName="Axle_F_R"
        SupportBoneAxis=AXIS_X
    End Object
    Wheels(0)=SVehicleWheel'DH_Vehicles.DH_OpelBlitzTransport.RFWheel'
    Begin Object Class=SVehicleWheel Name=LFWheel
        SteerType=VST_Steered
        BoneName="wheel_FL"
        BoneRollAxis=AXIS_Y
        WheelRadius=25.0
        SupportBoneName="Axle_F_L"
        SupportBoneAxis=AXIS_X
    End Object
    Wheels(1)=SVehicleWheel'DH_Vehicles.DH_OpelBlitzTransport.LFWheel'
    Begin Object Class=SVehicleWheel Name=RRWheel
        bPoweredWheel=true
        bHandbrakeWheel=true
        BoneName="wheel_RR"
        BoneRollAxis=AXIS_Y
        WheelRadius=26.0
        SupportBoneName="Axle_R_R"
        SupportBoneAxis=AXIS_Z
    End Object
    Wheels(2)=SVehicleWheel'DH_Vehicles.DH_OpelBlitzTransport.RRWheel'
    Begin Object Class=SVehicleWheel Name=LRWheel
        bPoweredWheel=true
        bHandbrakeWheel=true
        BoneName="wheel_LR"
        BoneRollAxis=AXIS_Y
        WheelRadius=26.0
        SupportBoneName="Axle_R_L"
        SupportBoneAxis=AXIS_Z
    End Object
    Wheels(3)=SVehicleWheel'DH_Vehicles.DH_OpelBlitzTransport.LRWheel'
    VehicleMass=3.5
    bFPNoZFromCameraPitch=true
    DrivePos=(X=6.0)
    DriveAnim="VUC_driver_idle_close"
    ExitPositions(0)=(X=70.0,Y=-130.0,Z=60.0)
    ExitPositions(1)=(X=70.0,Y=130.0,Z=60.0)
    ExitPositions(2)=(X=-255.0,Y=-30.0,Z=60.0)
    ExitPositions(3)=(X=-255.0,Y=30.0,Z=60.0)
    EntryRadius=375.0
    FPCamPos=(X=120.0,Y=-21.0,Z=17.0)
    TPCamDistance=1000.0
    CenterSpringForce="SpringONSSRV"
    TPCamLookat=(X=0.0,Z=0.0)
    TPCamWorldOffset=(Z=50.0)
    DriverDamageMult=1.0
    VehicleNameString="Opel Blitz"
    MaxDesireability=0.12
    FlagBone="Mg_placement"
    FlagRotation=(Yaw=32768)
    GroundSpeed=325.0
    PitchUpLimit=5000
    PitchDownLimit=49000
    HealthMax=150.0
    Health=150
    Mesh=SkeletalMesh'DH_OpelBlitz_anm.OpelBlitz_body_ext'
    Skins(0)=texture'DH_VehiclesGE_tex2.ext_vehicles.OpelBlitz_body_ext'
    Skins(1)=texture'DH_VehiclesGE_tex2.int_vehicles.OpelBlitz_body_int'
    SoundRadius=800.0
    TransientSoundRadius=1500.0
    CollisionRadius=175.0
    CollisionHeight=40.0
    Begin Object Class=KarmaParamsRBFull Name=KParams0
        KInertiaTensor(0)=1.0
        KInertiaTensor(3)=3.0
        KInertiaTensor(5)=3.0
        KLinearDamping=0.5
        KAngularDamping=0.5
        KStartEnabled=true
        bKNonSphericalInertia=true
        bHighDetailOnly=false
        bClientOnly=false
        bKDoubleTickRate=true
        bDestroyOnWorldPenetrate=true
        bDoSafetime=true
        KFriction=0.5
        KImpactThreshold=700.0
    End Object
    KParams=KarmaParamsRBFull'DH_Vehicles.DH_OpelBlitzTransport.KParams0'
}
