
$mostlyopaque

$ModelName jessev92/dods/weapons/p38_w

$model "Walther P38" p38_w

$SurfaceProp weapon

$Contents solid

$CDMaterials models/jessev92/dods/weapons/luger
$CDMaterials models/jessev92/dods/weapons/p38

$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence p38_w {
	p38_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel p38_w_phy
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
