
$mostlyopaque

$ModelName jessev92/dods/weapons/bazooka_w
$model "Bazooka" bazooka_w

$SurfaceProp weapon
$Contents solid

$CDMaterials models/jessev92/dods/weapons/bazooka
$CDMaterials models/jessev92/dods/weapons/m1a1bazooka

$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
$Attachment "backblast" "backblast" 0 0 0 rotate 0 0 0

$Sequence bazooka_w {
	bazooka_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel bazooka_w_phy
{
	$mass 9
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
