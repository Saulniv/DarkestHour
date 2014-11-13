//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2014
//==============================================================================

class DHmoButton extends moButton;

var(Option) string DHButtonStyleName;

function InternalOnCreateComponent(GUIComponent NewComp, GUIComponent Sender)
{
    super.InternalOnCreateComponent(NewComp, Sender);
    NewComp.StyleName = DHButtonStyleName;
}

defaultproperties
{
     DHButtonStyleName="DHSmallTextButtonStyle"
     CaptionWidth=0.000000
     ComponentClassName="DH_Interface.DHGUIButton"
     LabelStyleName="DHLargeText"
     StyleName="DHSmallTextButtonStyle"
     WinHeight=0.040000
}
