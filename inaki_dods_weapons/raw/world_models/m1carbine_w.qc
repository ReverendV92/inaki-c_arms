
$mostlyopaque

$ModelName jessev92/dods/weapons/m1carbine_w

$model "M1 Carbine" m1carbine_w

$SurfaceProp weapon

$Contents solid

$CDMaterials models/jessev92/dods/weapons/carbine
$CDMaterials models/jessev92/dods/weapons/m1carbine
$CDMaterials models/jessev92/dods/weapons/m1carb

$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence m1carbine_w {
	m1carbine_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel m1carbine_w_phy
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
