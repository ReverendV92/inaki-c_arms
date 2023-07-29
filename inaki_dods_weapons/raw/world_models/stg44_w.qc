
$mostlyopaque

$ModelName jessev92/dods/weapons/stg44_w
$model "StG 44" stg44_w

$SurfaceProp weapon
$Contents solid

$CDMaterials models/jessev92/dods/weapons/mp44
$CDMaterials models/jessev92/dods/weapons/stg44

$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence stg44_w {
	stg44_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel stg44_w_phy
{
	$mass 9
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
