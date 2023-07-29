$modelname "weapons\v_eq_flashbang.mdl"
$cdmaterials "models\weapons\V_models\eq_flashbang\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.Flashbang_Parent" "ValveBiped.Bip01_Spine2" -0.679307 -15.241169 6.758670 0.000000 179.999980 90.000038 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000

$body "studio" "flashbang_mirrored_ref.smd"

$sequence idle "idle_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 30.00
$sequence pullpin "pullpin_mirrored_merged" snap activity ACT_VM_PULLPIN 1 fps 41.00 {
  { event 5004 27 "Default.PullPin_Grenade" }
}
$sequence pullpin2 "pullpin2_mirrored_merged" snap activity ACT_VM_PULLBACK_HIGH 1 fps 41.00 {
  { event 5004 27 "Default.PullPin_Grenade" }
}
$sequence pullpin3 "pullpin3_mirrored_merged" snap activity ACT_VM_PULLBACK_LOW 1 fps 41.00 {
  { event 5004 27 "Default.PullPin_Grenade" }
}
$sequence pullpin4 "pullpin4_mirrored_merged" snap activity ACT_VM_PULLBACK_HAULBACK 1 fps 41.00 {
  { event 5004 27 "Default.PullPin_Grenade" }
}
$sequence throw "throw_mirrored_merged" snap activity ACT_VM_THROW 1 fps 30.00 {
  { event 3005 10 }
}
$sequence deploy "deploy_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 30.00
