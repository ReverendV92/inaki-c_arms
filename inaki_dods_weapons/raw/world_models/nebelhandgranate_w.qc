
$mostlyopaque

$ModelName jessev92/dods/weapons/nebelhandgranate_w

$model "Nebelhandgranate" nebelhandgranate_w

$SurfaceProp grenade

$Contents solid

$CDMaterials models/jessev92/dods/weapons/nebelhandgranate
$CDMaterials models/jessev92/dods/weapons/smoke_ger

$Sequence nebelhandgranate_w {
	nebelhandgranate_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel stielhandgranate_w_phy
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
