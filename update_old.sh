#!/bin/bash

scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

otherDest="../other"
otherRepos=()
otherRepos+=("git@github.com:diasurgical/devilution.git")
otherRepos+=("git@github.com:diasurgical/devilutionX.git")
otherRepos+=("git@github.com:SmokeMonsterPacks/EverDrive-Packs-Lists-Database.git")
otherRepos+=("git@github.com:Aleyr/EverDrive-Packs-Lists-Database-UI.git")
otherRepos+=("git@github.com:misterkun-io/MiSTer_DeViL.git")
#otherRepos+=("git@github.com:RetroDriven/MiSTerMAME.git")
otherRepos+=("git@github.com:calle81/MiSTer_UnofficialCores.git")
otherRepos+=("git@github.com:michaelshmitty/SD-Installer-macos_MiSTer.git")


misterDest="../Mister-devel"
misterRepos=()
misterRepos+=("git@github.com:MiSTer-devel/Altair8800_Mister.git")
misterRepos+=("git@github.com:MiSTer-devel/Amstrad_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/ao486_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Apogee_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Apple-I_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Apple-II_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Aquarius_MISTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-1942_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-1943_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Arkanoid_MISTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Asteroids_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-AsteroidsDeluxe_Mister.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-ATetris_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Bagman_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Berzerk_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-BlackWidow_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-BombJack_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-BurgerTime_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-BurningRubber_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-CanyonBomber_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Centipede_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-ComputerSpace_MiSTer.git")
#misterRepos+=("git@github.com:MiSTer-devel/Arcade-CosmicAvenger_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-CrazyClimber_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-CrazyKong_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Defender_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-DigDug_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Dominos_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-DonkeyKong_MiSTer.git")
#misterRepos+=("git@github.com:MiSTer-devel/Arcade-Dorodon_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Druaga_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-FoodFight_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Frenzy_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Galaga_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Galaxian_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Gaplus_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-GnG_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-LadyBug_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-LunarLander_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-MCR1_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-MCR2_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-MCR3_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-MCR3Mono_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-MCR3Scroll_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-MoonPatrol_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-NinjaKun_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Pacman_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Pengo_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Phoenix_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Pleiads_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Pong_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Pooyan_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Popeye_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-RallyX_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-RiverPatrol_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Robotron_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-RushnAttack_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Scramble_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-SilverLand_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-SkySkipper_MiSTer.git")
#misterRepos+=("git@github.com:MiSTer-devel/Arcade-SnapJack_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-SolomonsKey_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Sprint1_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Sprint2_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-SuperBreakout_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-TimePilot_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-TraverseUSA_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Ultratank_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-Xevious_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arcade-ZigZag_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Archie_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Arduboy_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Astrocade_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Atari2600_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Atari800_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/AY-3-8500-MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/BBCMicro_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/BK0011M_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/C16_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/C64_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Chip8_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/ColecoVision_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/do_not_use_Linux-Kernel_4.6.5_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Filters_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Fonts_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Gameboy_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/GBA_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Genesis_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Hardware_alternative.git")
misterRepos+=("git@github.com:MiSTer-devel/Hardware_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/HT1080Z_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Injector_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Jupiter_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Linux_Image_creator_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Linux-Kernel_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/LXDE-Head_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/MacPlus_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Main_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/MegaCD_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/MemTest_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Menu_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/MidiLink_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Minimig-AGA_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/MiSTer-bootstrap.git")
misterRepos+=("git@github.com:MiSTer-devel/MiSTer-devel.github.io.git")
misterRepos+=("git@github.com:MiSTer-devel/MiSTerConfigurator.git")
misterRepos+=("git@github.com:MiSTer-devel/MRA-Alternatives_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/MSX_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/MultiComp_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/NeoGeo_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/NES_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Odyssey2_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Orao_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/PET2001_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/PDP1_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/QL_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Retro-Controllers-USB-MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/SAM-Coupe_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Scripts_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/SD-Installer-Win64_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/SD-InstallTool_Win_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/SharpMZ_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/SMS_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/SNES_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Specialist_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/TI-99_4A_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/TSConf_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/TurboGrafx16_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/u-boot_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Updater_script_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Vector-06C_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/Vectrex_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/VIC20_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/X68000_MiSTer.git")
misterRepos+=("git@github.com:MiSTer-devel/ZX-Spectrum_MISTer.git")
misterRepos+=("git@github.com:MiSTer-devel/ZX81_MiSTer.git")

function updateGit() {
  # git@github.com:
  # 012345678901234
  #           11111
  url=$1
  githubRemoved=${url:15}
  gorg=${githubRemoved%/*}
  gend=${githubRemoved#[!/]*/}
  repo=${gend%%\.git}
  if [ "X${gorg}" == "XMiSTer-devel" ]
  then
    dest="${misterDest}"
  else
    dest="${otherDest}"
  fi
  echo "================================"
  echo "url:  [${url}]"
  echo "gorg: [${gorg}]"
  #echo "gend: [${gend}]"
  echo "repo: [${repo}]"
  echo "dest: [${dest}]"
  echo "================================"
  if [ -f ${dest}/${repo}/.git/config ]
  then
    cd ${dest}/${repo} || exit
    git fetch --all    || exit
    git pull           || exit
    cd ${scriptDir}    || exit
  else
    cd ${dest}/        || exit
    git clone ${url}   || exit
    cd ${scriptDir}    || exit
  fi
}

for url in "${otherRepos[@]}"
do
  updateGit ${url}
done

for url in "${misterRepos[@]}"
do
  updateGit ${url}
done

echo "MiSTer-devel has ${#misterRepos[@]} repos"
echo "cloned ${#otherRepos[@]} other repos"
