
$mostlyopaque

$ModelName jessev92/dods/weapons/bar_w
$model "M1918 BAR" bar_w

$SurfaceProp weapon
$Contents solid

$CDMaterials models/jessev92/dods/weapons/bar
$CDMaterials models/jessev92/dods/weapons/m1918

$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence bar_w {
	bar_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel bar_w_phy
{
	$mass 9
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
