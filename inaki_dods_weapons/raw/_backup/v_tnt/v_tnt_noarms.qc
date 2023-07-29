/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/
$include .\..\_v_models_name.qci

$modelname $modeldir$tnt$CArmSuffix$
$cdmaterials "models/jessev92/dods/weapons/tnt\"


// --------- Body Groups ---------
$body "tnt" "v_tnt_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.RRootShoulder" "ValveBiped.Bip01_Spine4" -1.937610 1.822822 1.346623 -0.201681 -163.712888 175.489241 0 0 0 0 -0.000002 0
$definebone "ValveBiped.RShouldereff" "ValveBiped.Bip01_R_Clavicle" 6.028141 0 0 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.RArmRoot" "ValveBiped.RShouldereff" 0 0 0 -0.681648 -33.608441 93.207460 0 0 0 -0.000003 0 0
$definebone "ValveBiped.RArmeff" "ValveBiped.Bip01_R_Forearm" 11.481695 0 -0.000001 0.000005 0.000001 0 0 0 0 0.000005 0.000001 0
$definebone "ValveBiped.RHandRoot" "ValveBiped.RArmeff" 0.000002 0 0 2.204518 2.112381 -89.708232 0 0 0 0 0.000005 0
$definebone "ValveBiped.RHandeffector" "ValveBiped.Bip01_R_Hand" 3.912975 0 0 0 0.000004 0 0 0 0 0 0.000004 0
$definebone "ValveBiped.RPinkyRoot" "ValveBiped.RHandeffector" -0.177498 -0.021700 1.432298 0 0.000004 0 0 0 0 0 0.000004 0
$definebone "ValveBiped.RRingRoot" "ValveBiped.RHandeffector" -0.126503 -0.019100 0.517700 0 0.000004 0 0 0 0 0 0.000004 0
$definebone "ValveBiped.RMiddleRoot" "ValveBiped.RHandeffector" -0.013805 0.157000 -0.360000 0 0.000004 0 -0.000004 0 0 0 0.000004 0
$definebone "ValveBiped.RIndexRoot" "ValveBiped.RHandeffector" -0.262897 0.146200 -1.268699 0 0.000004 0 0.000004 0 0 0 0.000004 0
$definebone "ValveBiped.LRootShoulder" "ValveBiped.Bip01_Spine4" 1.937660 1.822816 1.346618 -0.201681 -16.286900 0.395169 0 0 0 0 0 0
$definebone "ValveBiped.LShouldereff" "ValveBiped.Bip01_L_Clavicle" 6.028141 0 0 0 -0.000003 0 0 0 0 0 -0.000003 0
$definebone "ValveBiped.LArmRoot" "ValveBiped.LShouldereff" 0 0 0 2.957092 -33.506463 -90.004566 0 0 0 0.000005 0 0
$definebone "ValveBiped.LArmeff" "ValveBiped.Bip01_L_Forearm" 11.481695 0 0 -0.000002 -0.000001 0 0 0 0 -0.000002 -0.000001 0
$definebone "ValveBiped.LHandRoot" "ValveBiped.LArmeff" -0.000029 0 -0.000032 -2.213968 2.086884 90.184535 0 0 0 0 0.000002 0
$definebone "ValveBiped.LHandeffector" "ValveBiped.Bip01_L_Hand" 3.912977 0 0 0 0.000002 0 0 0 0 0 0.000002 0
$definebone "ValveBiped.LPinkyRoot" "ValveBiped.LHandeffector" -0.177502 -0.021710 -1.432285 0 0.000002 0 0 0 0 0 0.000002 0
$definebone "ValveBiped.LRingRoot" "ValveBiped.LHandeffector" -0.126526 -0.019092 -0.517730 0 0.000002 0 0 0 0 0 0.000002 0
$definebone "ValveBiped.LMiddleRoot" "ValveBiped.LHandeffector" -0.013836 0.156952 0.360019 0 0.000002 0 0 0 0 0 0.000002 0
$definebone "ValveBiped.LIndexRoot" "ValveBiped.LHandeffector" -0.262947 0.146238 1.268709 0 0.000002 0 -0.000004 0 0 0 0.000002 0
$definebone "ValveBiped.LThumbRoot" "ValveBiped.LHandeffector" -2.976730 -0.656000 0.984588 0 -60.000030 0 -0.000001 -0.000002 0 0 0 0
$definebone "ValveBiped.tnt_parent" "ValveBiped.Bip01_Spine2" 0 0 9.367933 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.root" "ValveBiped.tnt_parent" 9.183740 -5.697880 0.243833 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.bone" "ValveBiped.root" 0 0 0 0 90.028697 0 0 -0.000001 0 0 0 0
$definebone "ValveBiped.bone1" "ValveBiped.bone" 5.220980 -0.000001 0 0 -0.007162 0 0 0 0 0 0 0
$definebone "ValveBiped.bone2" "ValveBiped.bone1" 3.699291 0 0 0 -0.044347 0 0 0 0 0 0 0
$definebone "ValveBiped.bone3" "ValveBiped.bone2" 3.131683 0.000001 0 0 -0.045206 0 0 0 0 0 0 0
$definebone "ValveBiped.bone4" "ValveBiped.bone3" 3.119441 0 0 0 0.194519 0 0 0 0 0 0 0
$definebone "ValveBiped.bone5" "ValveBiped.bone4" 3.124599 0 0 0 -0.191196 0 0.000001 0 0 0 0 0
$definebone "ValveBiped.bone6" "ValveBiped.bone5" 3.127201 0 0 0 0.055290 0 0 0 0 0 0 0


// --------- Animation Sequences ---------
$sequence test "test_fixed" fps 10.00
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 24.00
$sequence idle02 "idle02_fixed" loop ACT_VM_IDLE 2 fps 24.00
$sequence plant "plant_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 30.00
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 1 "DODS.TNT.Draw" }
}

