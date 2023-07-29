
$mostlyopaque

$ModelName jessev92/dods/weapons/c96_w
$model "Mauser C1896" c96_w

$SurfaceProp weapon
$Contents solid

$CDMaterials models/jessev92/dods/weapons/c96
$CDMaterials models/jessev92/dods/weapons/c1896

$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence c96_w {
	c96_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel c96_w_phy
{
	$mass 9
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
