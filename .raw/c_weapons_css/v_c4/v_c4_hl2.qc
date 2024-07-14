$modelname "weapons\v_c4.mdl"
$cdmaterials "models\weapons\v_models\c4\"

$include ".\..\_css_hl2skeleton_renamebones.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.c4" "ValveBiped.Bip01_Spine2" 4.622282 0.213746 -8.687950 81.522099 -172.850698 -170.374467 0.000000 0.000000 0.000001 -0.000000 0.000006 -0.000002
$definebone "v_weapon.button6" "v_weapon.c4" -2.128866 2.672354 -1.562264 -0.000000 0.000006 -0.000002 0.000000 0.000000 0.000001 -0.000000 0.000006 -0.000002
$definebone "v_weapon.button7" "v_weapon.c4" -2.711489 2.672354 -1.562264 -0.000000 0.000006 -0.000002 0.000000 0.000000 0.000001 -0.000000 0.000006 -0.000002
$definebone "v_weapon.button8" "v_weapon.c4" -3.285789 2.672354 -1.553936 -0.000000 0.000006 -0.000002 0.000000 0.000000 0.000000 -0.000000 0.000006 -0.000002
$definebone "v_weapon.button9" "v_weapon.c4" -3.843443 2.672354 -1.553936 -0.000000 0.000006 -0.000002 0.000000 0.000000 0.000000 -0.000000 0.000006 -0.000002
$definebone "v_weapon.button0" "v_weapon.c4" -4.376127 2.672354 -1.570593 -0.000000 0.000006 -0.000002 0.000000 0.000000 0.000001 -0.000000 0.000006 -0.000002
$definebone "v_weapon.button5" "v_weapon.c4" -4.392773 2.672354 -0.904263 -0.000000 0.000006 -0.000002 0.000000 0.000000 0.000001 -0.000000 0.000006 -0.000002
$definebone "v_weapon.button4" "v_weapon.c4" -3.835119 2.672354 -0.904263 -0.000000 0.000006 -0.000002 0.000000 0.000000 0.000000 -0.000000 0.000006 -0.000002
$definebone "v_weapon.button3" "v_weapon.c4" -3.285789 2.672354 -0.904263 -0.000000 0.000006 -0.000002 0.000000 -0.000000 0.000000 -0.000000 0.000006 -0.000002
$definebone "v_weapon.button2" "v_weapon.c4" -2.711489 2.672354 -0.904263 -0.000000 0.000006 -0.000002 0.000000 0.000000 0.000001 -0.000000 0.000006 -0.000002
$definebone "v_weapon.button1" "v_weapon.c4" -2.137189 2.672354 -0.904263 -0.000000 0.000006 -0.000002 0.000000 -0.000000 0.000001 -0.000000 0.000006 -0.000002

$body "studio" "v_c4_ref.smd"

$attachment "controlpanel0_ur" "v_weapon.c4" -4.60 2.80 1.15 rotate -0.00 -180.00 90.00
$attachment "controlpanel0_ll" "v_weapon.c4" -1.90 2.80 -0.10 rotate -0.00 -180.00 90.00

$sequence idle1 "idle1_merged" loop activity ACT_VM_IDLE 1 fps 12.00
$sequence draw "draw_merged" snap activity ACT_VM_DRAW 1 fps 25.00 {
  { event 7001 0 }
}
$sequence drop "drop_merged" snap activity ACT_VM_SECONDARYATTACK 1 fps 30.00
$sequence pressbutton "pressbutton_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 30.00 {
  { event 5004 27 "c4.click" }
  { event 5004 37 "c4.click" }
  { event 5004 45 "c4.click" }
  { event 5004 51 "c4.click" }
  { event 5004 57 "c4.click" }
  { event 5004 63 "c4.click" }
  { event 5004 67 "c4.click" }
  { event 7001 0 }
  { event 7001 27 "7" }
  { event 7001 37 "73" }
  { event 7001 45 "735" }
  { event 7001 51 "7355" }
  { event 7001 57 "73556" }
  { event 7001 63 "735560" }
  { event 7001 67 "7355608" }
  { event 7001 78 "*******" }
}
