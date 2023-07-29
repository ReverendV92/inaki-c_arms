
$mostlyopaque

$ModelName jessev92/dods/weapons/m18_w

$model "M18 Smoke Grenade" m18_w

$SurfaceProp grenade

$Contents solid

$CDMaterials models/jessev92/dods/weapons/m18
$CDMaterials models/jessev92/dods/weapons/smoke_us

$Sequence m18_w {
	m18_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel m18_w_phy
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
