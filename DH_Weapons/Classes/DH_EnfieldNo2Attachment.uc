//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2014
//==============================================================================

class DH_EnfieldNo2Attachment extends DHWeaponAttachment;

defaultproperties
{
     mMuzFlashClass=class'ROEffects.MuzzleFlash3rdPistol'
     MuzzleBoneName="Muzzle"
     PA_MovementAnims(0)="stand_jogF_pistol"
     PA_MovementAnims(1)="stand_jogB_pistol"
     PA_MovementAnims(2)="stand_jogL_pistol"
     PA_MovementAnims(3)="stand_jogR_pistol"
     PA_MovementAnims(4)="stand_jogFL_pistol"
     PA_MovementAnims(5)="stand_jogFR_pistol"
     PA_MovementAnims(6)="stand_jogBL_pistol"
     PA_MovementAnims(7)="stand_jogBR_pistol"
     PA_CrouchAnims(0)="crouch_walkF_pistol"
     PA_CrouchAnims(1)="crouch_walkB_pistol"
     PA_CrouchAnims(2)="crouch_walkL_pistol"
     PA_CrouchAnims(3)="crouch_walkR_pistol"
     PA_CrouchAnims(4)="crouch_walkFL_pistol"
     PA_CrouchAnims(5)="crouch_walkFR_pistol"
     PA_CrouchAnims(6)="crouch_walkBL_pistol"
     PA_CrouchAnims(7)="crouch_walkBR_pistol"
     PA_ProneAnims(0)="prone_crawlF_pistol"
     PA_ProneAnims(1)="prone_crawlB_pistol"
     PA_ProneAnims(2)="prone_crawlL_pistol"
     PA_ProneAnims(3)="prone_crawlR_pistol"
     PA_ProneAnims(4)="prone_crawlFL_pistol"
     PA_ProneAnims(5)="prone_crawlFR_pistol"
     PA_ProneAnims(6)="prone_crawlBL_pistol"
     PA_ProneAnims(7)="prone_crawlBR_pistol"
     PA_ProneIronAnims(0)="prone_slowcrawlF_pistol"
     PA_ProneIronAnims(1)="prone_slowcrawlB_pistol"
     PA_ProneIronAnims(2)="prone_slowcrawlL_pistol"
     PA_ProneIronAnims(3)="prone_slowcrawlR_pistol"
     PA_ProneIronAnims(4)="prone_slowcrawlL_pistol"
     PA_ProneIronAnims(5)="prone_slowcrawlR_pistol"
     PA_ProneIronAnims(6)="prone_slowcrawlB_pistol"
     PA_ProneIronAnims(7)="prone_slowcrawlB_pistol"
     PA_WalkAnims(0)="stand_walkFhip_pistol"
     PA_WalkAnims(1)="stand_walkBhip_pistol"
     PA_WalkAnims(2)="stand_walkLhip_pistol"
     PA_WalkAnims(3)="stand_walkRhip_pistol"
     PA_WalkAnims(4)="stand_walkFLhip_pistol"
     PA_WalkAnims(5)="stand_walkFRhip_pistol"
     PA_WalkAnims(6)="stand_walkBLhip_pistol"
     PA_WalkAnims(7)="stand_walkBRhip_pistol"
     PA_WalkIronAnims(0)="stand_walkFiron_pistol"
     PA_WalkIronAnims(1)="stand_walkBiron_pistol"
     PA_WalkIronAnims(2)="stand_walkLiron_pistol"
     PA_WalkIronAnims(3)="stand_walkRiron_pistol"
     PA_WalkIronAnims(4)="stand_walkFLiron_pistol"
     PA_WalkIronAnims(5)="stand_walkFRiron_pistol"
     PA_WalkIronAnims(6)="stand_walkBLiron_pistol"
     PA_WalkIronAnims(7)="stand_walkBRiron_pistol"
     PA_SprintAnims(0)="stand_sprintF_pistol"
     PA_SprintAnims(1)="stand_sprintB_pistol"
     PA_SprintAnims(2)="stand_sprintL_pistol"
     PA_SprintAnims(3)="stand_sprintR_pistol"
     PA_SprintAnims(4)="stand_sprintFL_pistol"
     PA_SprintAnims(5)="stand_sprintFR_pistol"
     PA_SprintAnims(6)="stand_sprintBL_pistol"
     PA_SprintAnims(7)="stand_sprintBR_pistol"
     PA_SprintCrouchAnims(0)="crouch_sprintF_pistol"
     PA_SprintCrouchAnims(1)="crouch_sprintB_pistol"
     PA_SprintCrouchAnims(2)="crouch_sprintL_pistol"
     PA_SprintCrouchAnims(3)="crouch_sprintR_pistol"
     PA_SprintCrouchAnims(4)="crouch_sprintFL_pistol"
     PA_SprintCrouchAnims(5)="crouch_sprintFR_pistol"
     PA_SprintCrouchAnims(6)="crouch_sprintBL_pistol"
     PA_SprintCrouchAnims(7)="crouch_sprintBR_pistol"
     PA_LimpAnims(0)="stand_limpFhip_pistol"
     PA_LimpAnims(1)="stand_limpBhip_pistol"
     PA_LimpAnims(2)="stand_limpLhip_pistol"
     PA_LimpAnims(3)="stand_limpRhip_pistol"
     PA_LimpAnims(4)="stand_limpFLhip_pistol"
     PA_LimpAnims(5)="stand_limpFRhip_pistol"
     PA_LimpAnims(6)="stand_limpBLhip_pistol"
     PA_LimpAnims(7)="stand_limpBRhip_pistol"
     PA_LimpIronAnims(0)="stand_limpFiron_pistol"
     PA_LimpIronAnims(1)="stand_limpBiron_pistol"
     PA_LimpIronAnims(2)="stand_limpLiron_pistol"
     PA_LimpIronAnims(3)="stand_limpRiron_pistol"
     PA_LimpIronAnims(4)="stand_limpFLiron_pistol"
     PA_LimpIronAnims(5)="stand_limpFRiron_pistol"
     PA_LimpIronAnims(6)="stand_limpBLiron_pistol"
     PA_LimpIronAnims(7)="stand_limpBRiron_pistol"
     PA_TurnRightAnim="stand_turnRhip_pistol"
     PA_TurnLeftAnim="stand_turnLhip_pistol"
     PA_TurnIronRightAnim="stand_turnRiron_pistol"
     PA_TurnIronLeftAnim="stand_turnLiron_pistol"
     PA_CrouchTurnIronRightAnim="crouch_turnRiron_pistol"
     PA_CrouchTurnIronLeftAnim="crouch_turnRiron_pistol"
     PA_ProneTurnRightAnim="prone_turnR_pistol"
     PA_ProneTurnLeftAnim="prone_turnL_pistol"
     PA_StandToProneAnim="StandtoProne_pistol"
     PA_CrouchToProneAnim="CrouchtoProne_pistol"
     PA_ProneToStandAnim="PronetoStand_pistol"
     PA_ProneToCrouchAnim="PronetoCrouch_pistol"
     PA_DiveToProneStartAnim="prone_diveF_pistol"
     PA_DiveToProneEndAnim="prone_diveend_pistol"
     PA_CrouchTurnRightAnim="crouch_turnR_pistol"
     PA_CrouchTurnLeftAnim="crouch_turnL_pistol"
     PA_CrouchIdleRestAnim="crouch_idle_pistol"
     PA_IdleCrouchAnim="crouch_idle_pistol"
     PA_IdleRestAnim="stand_idlehip_pistol"
     PA_IdleWeaponAnim="stand_idlehip_pistol"
     PA_IdleIronRestAnim="stand_idleiron_pistol"
     PA_IdleIronWeaponAnim="stand_idleiron_pistol"
     PA_IdleCrouchIronWeaponAnim="crouch_idleiron_pistol"
     PA_IdleProneAnim="prone_idle_pistol"
     PA_ReloadAnim="stand_reloadhalf_tt33"
     PA_ProneReloadAnim="prone_reloadhalf_tt33"
     PA_ReloadEmptyAnim="stand_reloadempty_tt33"
     PA_ProneReloadEmptyAnim="prone_reloadempty_tt33"
     PA_ProneIdleRestAnim="prone_idle_pistol"
     PA_Fire="stand_shoothip_pistol"
     PA_IronFire="stand_shootiron_pistol"
     PA_CrouchFire="crouch_shoot_pistol"
     PA_CrouchIronFire="crouch_shootiron_pistol"
     PA_ProneFire="prone_shoot_pistol"
     PA_MoveStandFire(0)="stand_shootFhip_pistol"
     PA_MoveStandFire(1)="stand_shootFhip_pistol"
     PA_MoveStandFire(2)="stand_shootLRhip_pistol"
     PA_MoveStandFire(3)="stand_shootLRhip_pistol"
     PA_MoveStandFire(4)="stand_shootFLhip_pistol"
     PA_MoveStandFire(5)="stand_shootFRhip_pistol"
     PA_MoveStandFire(6)="stand_shootFRhip_pistol"
     PA_MoveStandFire(7)="stand_shootFLhip_pistol"
     PA_MoveCrouchFire(0)="crouch_shootF_pistol"
     PA_MoveCrouchFire(1)="crouch_shootF_pistol"
     PA_MoveCrouchFire(2)="crouch_shootLR_pistol"
     PA_MoveCrouchFire(3)="crouch_shootLR_pistol"
     PA_MoveCrouchFire(4)="crouch_shootF_pistol"
     PA_MoveCrouchFire(5)="crouch_shootF_pistol"
     PA_MoveCrouchFire(6)="crouch_shootF_pistol"
     PA_MoveCrouchFire(7)="crouch_shootF_pistol"
     PA_MoveWalkFire(0)="stand_shootFwalk_pistol"
     PA_MoveWalkFire(1)="stand_shootFwalk_pistol"
     PA_MoveWalkFire(2)="stand_shootLRwalk_pistol"
     PA_MoveWalkFire(3)="stand_shootLRwalk_pistol"
     PA_MoveWalkFire(4)="stand_shootFLwalk_pistol"
     PA_MoveWalkFire(5)="stand_shootFRwalk_pistol"
     PA_MoveWalkFire(6)="stand_shootFRwalk_pistol"
     PA_MoveWalkFire(7)="stand_shootFLwalk_pistol"
     PA_MoveStandIronFire(0)="stand_shootiron_pistol"
     PA_MoveStandIronFire(1)="stand_shootiron_pistol"
     PA_MoveStandIronFire(2)="stand_shootLRiron_pistol"
     PA_MoveStandIronFire(3)="stand_shootLRiron_pistol"
     PA_MoveStandIronFire(4)="stand_shootFLiron_pistol"
     PA_MoveStandIronFire(5)="stand_shootFRiron_pistol"
     PA_MoveStandIronFire(6)="stand_shootFRiron_pistol"
     PA_MoveStandIronFire(7)="stand_shootFLiron_pistol"
     PA_AltFire="stand_idlestrike_kar"
     PA_CrouchAltFire="stand_idlestrike_kar"
     PA_ProneAltFire="prone_idlestrike_bayo"
     PA_BayonetAltFire="stand_stab_kar"
     PA_CrouchBayonetAltFire="crouch_idlestrike_bayo"
     PA_ProneBayonetAltFire="prone_idlestrike_bayo"
     PA_FireLastShot="stand_shoothip_pistol"
     PA_IronFireLastShot="stand_shootiron_pistol"
     PA_CrouchFireLastShot="crouch_shoot_pistol"
     PA_ProneFireLastShot="prone_shoot_pistol"
     PA_HitFAnim="hitF_pistol"
     PA_HitBAnim="hitB_pistol"
     PA_HitLAnim="hitL_pistol"
     PA_HitRAnim="hitR_pistol"
     PA_HitLLegAnim="hitL_leg_pistol"
     PA_HitRLegAnim="hitR_leg_pistol"
     PA_AirStillAnim="jump_mid_pistol"
     PA_AirAnims(0)="jumpF_mid_pistol"
     PA_AirAnims(1)="jumpB_mid_pistol"
     PA_AirAnims(2)="jumpL_mid_pistol"
     PA_AirAnims(3)="jumpR_mid_pistol"
     PA_TakeoffStillAnim="jump_takeoff_pistol"
     PA_TakeoffAnims(0)="jumpF_takeoff_pistol"
     PA_TakeoffAnims(1)="jumpB_takeoff_pistol"
     PA_TakeoffAnims(2)="jumpL_takeoff_pistol"
     PA_TakeoffAnims(3)="jumpR_takeoff_pistol"
     PA_LandAnims(0)="jumpF_land_pistol"
     PA_LandAnims(1)="jumpB_land_pistol"
     PA_LandAnims(2)="jumpL_land_pistol"
     PA_LandAnims(3)="jumpR_land_pistol"
     PA_DodgeAnims(0)="jumpF_mid_pistol"
     PA_DodgeAnims(1)="jumpB_mid_pistol"
     PA_DodgeAnims(2)="jumpL_mid_pistol"
     PA_DodgeAnims(3)="jumpR_mid_pistol"
     WA_Idle="idle_enfieldno2"
     WA_IdleEmpty="idle_enfieldno2"
     WA_Fire="idle_enfieldno2"
     WA_Reload="idle_enfieldno2"
     WA_ReloadEmpty="idle_enfieldno2"
     WA_ProneReload="idle_enfieldno2"
     WA_ProneReloadEmpty="idle_enfieldno2"
     MenuImage=Texture'DH_InterfaceArt_tex.weapon_icons.EnfieldNo2_icon'
     MenuDescription="Enfield No2: revolver. Standard issue sidearm in the British Army using .38 caliber rounds. Maximum effective range: 50 metres."
     bRapidFire=false
     Mesh=SkeletalMesh'DH_Weapons3rd_anm.EnfieldNo2_3rd'
}
