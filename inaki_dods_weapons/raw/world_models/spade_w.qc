
$mostlyopaque

$ModelName jessev92/dods/weapons/spade_w

$model "Spade" spade_w

$SurfaceProp weapon

$Contents solid

$CDMaterials models/jessev92/dods/weapons/spade
$CDMaterials models/jessev92/dods/weapons/shovel_ger

//$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
//$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence spade_w {
	spade_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel spade_w_phy
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
