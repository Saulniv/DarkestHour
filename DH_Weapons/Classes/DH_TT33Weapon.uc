//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2019
//==============================================================================

class DH_TT33Weapon extends DHPistolWeapon;

defaultproperties
{
    ItemName="TT-33"
    FireModeClass(0)=class'DH_Weapons.DH_TT33Fire'
    FireModeClass(1)=class'DH_Weapons.DH_TT33MeleeFire'
    AttachmentClass=class'DH_Weapons.DH_TT33Attachment'
    PickupClass=class'DH_Weapons.DH_TT33Pickup'

    Mesh=SkeletalMesh'Allies_Tt33_1st.TT-33-Mesh'
    HighDetailOverlay=shader'Weapons1st_tex.Pistols.TT33_S'
    bUseHighDetailOverlayIndex=true
    HighDetailOverlayIndex=2

    IronSightDisplayFOV=65.0

    InitialNumPrimaryMags=5
    MaxNumPrimaryMags=5

    IdleEmptyAnim="idle-empty"
    IronIdleEmptyAnim="iron_idle_empty"
    IronBringUpEmpty="iron_in_empty"
    IronPutDownEmpty="iron_out_empty"
    CrawlForwardEmptyAnim="crawlF_empty"
    CrawlBackwardEmptyAnim="crawlB_empty"
    CrawlStartEmptyAnim="crawl_in_empty"
    CrawlEndEmptyAnim="crawl_out_empty"
    SprintStartEmptyAnim="Sprint_Empty_Start"
    SprintLoopEmptyAnim="Sprint_Empty_Middle"
    SprintEndEmptyAnim="Sprint_Empty_End"
    SelectEmptyAnim="Draw_Empty"
    PutDownEmptyAnim="Put_Away_empty"
}
