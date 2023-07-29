
$mostlyopaque

$ModelName jessev92/dods/weapons/thompson_w

$model "M1A1 Thompson" thompson_w

$SurfaceProp weapon

$Contents solid

$CDMaterials models/jessev92/dods/weapons/thompson
$CDMaterials models/jessev92/dods/weapons/m1a1thompson

$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence thompson_w {
	thompson_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel thompson_w_phy
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
