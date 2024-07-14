$modelname "weapons\v_pist_glock18.mdl"
$cdmaterials "models\weapons\v_models\pist_glock18\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$body "studio" "glock18_mirrored_ref.smd"

$definebone "v_weapon.Glock_Parent" "ValveBiped.Bip01_Spine2" 4.759587 -0.033270 -15.258883 -73.349314 87.590921 -98.940250 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000
$definebone "v_weapon.Glock_Trigger" "v_weapon.Glock_Parent" -0.122437 1.751264 0.286658 8.778917 -110.110396 173.955317 -0.000000 -0.000001 0.000000 0.000001 -0.000002 0.000000
$definebone "v_weapon.Glock_Clip" "v_weapon.Glock_Parent" 1.062895 1.413814 0.230633 9.263410 -91.044073 -6.406013 0.000000 0.000000 0.000000 -0.000000 0.000004 -0.000001
$definebone "v_weapon.Glock_Slide" "v_weapon.Glock_Parent" 2.041597 1.897976 0.309613 -2.667349 163.406131 -178.194692 0.000000 0.000000 0.000000 0.000001 0.000004 0.000001

$attachment "1" "v_weapon.Glock_Parent" -6.50 4.00 0.60 rotate -0.00 -180.00 180.00
$attachment "2" "v_weapon.Glock_Parent" -0.00 2.40 0.50 rotate 260.00 -180.00 180.00

$sequence glock_idle "glock_idle_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 30.00
$sequence glock_fireburst1 "glock_fireburst1_mirrored_merged" snap activity ACT_VM_SECONDARYATTACK 1 fps 40.00 {
  { event 5001 0 "1" }
  { event 5001 2 "1" }
  { event 5001 3 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 90" }
  { event AE_CLIENT_EFFECT_ATTACH 2 "EjectBrass_9mm 2 90" }
  { event AE_CLIENT_EFFECT_ATTACH 3 "EjectBrass_9mm 2 90" }
}
$sequence glock_fireburst2 "glock_fireburst2_mirrored_merged" snap activity ACT_VM_SECONDARYATTACK 1 fps 40.00 {
  { event 5001 0 "1" }
  { event 5001 2 "1" }
  { event 5001 3 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 90" }
  { event AE_CLIENT_EFFECT_ATTACH 2 "EjectBrass_9mm 2 90" }
  { event AE_CLIENT_EFFECT_ATTACH 3 "EjectBrass_9mm 2 90" }
}
$sequence glock_firesingle "glock_firesingle_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 40.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 90" }
}
$sequence glock_firelast "glock_firelast_mirrored_merged" snap activity ACT_VM_DRYFIRE 1 fps 35.00 {
  { event 5001 0 "21" }
}
$sequence glock_draw "glock_draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 45.00 {
  { event 5004 17 "Weapon_Glock.Sliderelease" }
}
$sequence glock_reload "glock_reload_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 35.00 {
  { event 5004 0 "Weapon_Glock.Slideback" }
  { event 5004 14 "Weapon_Glock.Clipout" }
  { event 5004 38 "Weapon_Glock.Clipin" }
  { event 5004 64 "Weapon_Glock.Sliderelease" }
}
