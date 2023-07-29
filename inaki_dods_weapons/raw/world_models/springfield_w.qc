
$mostlyopaque

$ModelName jessev92/dods/weapons/springfield_w

$model "M1903 Springfield" springfield_w

$SurfaceProp weapon

$Contents solid

$CDMaterials models/jessev92/dods/weapons/springfield
$CDMaterials models/jessev92/dods/weapons/m1903
$CDMaterials models/jessev92/dods/weapons/m1903springfield

$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence springfield_w {
	springfield_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel springfield_w_phy
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
