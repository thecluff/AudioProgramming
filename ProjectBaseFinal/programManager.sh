#!/bin/bash                                                             

echo "                                                 "
echo "   ,___     ,___ _                               "
echo "  /   /    /   ///     /) /)                     "
echo " /        /    // , , // //                      "
echo "(___/o   (___/(/_(_/_//_//_                      "
echo "                    /) /)                        "
echo "                   (/ (/                         "
echo " ______              _   _ __                    "
echo "(  /  o             //  ( /  )        o       _/_"
echo " -/--,  _ _   __,  //    /--'_   __  ,  _  _, /  "
echo "_/   (_/ / /_(_/(_(/_   /   / (_(_)_/|_(/_(__(__ "
echo "                                    /)           "
echo "                                   (/            "
echo "                                                 "
echo "          Charlie Cluff - Final Project          "
echo "      DAT150CA - Beginning Audio Programming     "
echo "                                                 "


#_______________        Step 1 - mix all pureData-generated tones together        _______________

#               Chord 1
# (Chord 1) Mix each chord tone 2 tones at a time, then mix the files together, leaving you with an entire chord
./MixProject ./audio/pd/chordTone1.wav ./audio/pd/chordTone2.wav ./audio/chords/chord1/chord1_3.wav 0 1.0
./MixProject ./audio/pd/chordTone3.wav ./audio/pd/chordTone4.wav ./audio/chords/chord1/chord2_3.wav 0 1.0
./MixProject ./audio/chords/chord1/chord1_3.wav ./audio/chords/chord1/chord2_3.wav ./audio/chords/chord1/chord3_3.wav 0 1.0

# Amp mod the chord
  ./FinalProject2 ./audio/chords/chord1/chord1_3.wav ./audio/chords/chord1/chord1_3_ex.wav 1 2


# (Chord 1) Add a fade in to the chord
  ./FinalProject2 ./audio/chords/chord1/chord1_3_ex.wav ./audio/chords/chord1/chord1_fadein.wav 1 4 3

# (Chord 1) Add a fadeout for 4 sec
  ./FinalProject2 ./audio/chords/chord1/chord1_fadein.wav ./audio/chords/chords_final/chord1_final.wav 1 5 5

echo "Chord 1 created."


#               Chord 2
./MixProject ./audio/pd/chord2Tone1.wav ./audio/pd/chord2Tone2.wav ./audio/chords/chord2/chord21_3.wav 0 1.0
./MixProject ./audio/pd/chord2Tone3.wav ./audio/pd/chord2Tone4.wav ./audio/chords/chord2/chord22_3.wav 0 1.0
./MixProject ./audio/chords/chord2/chord22_3.wav ./audio/chords/chord2/chord21_3.wav ./audio/chords/chord2/chord2_prefade.wav 0 1.0

# (Chord 1) Add a fade in to the chord
  ./FinalProject2 ./audio/chords/chord2/chord2_prefade.wav ./audio/chords/chord2/chord2_fadein.wav 1 4 3

# (Chord 1) Add a fadeout for 5 sec
  ./FinalProject2 ./audio/chords/chord2/chord2_fadein.wav ./audio/chords/chords_final/chord2_final.wav 1 5 5

echo "Chord 2 created."



#               Chord 3
./MixProject ./audio/pd/chord3Tone1.wav ./audio/pd/chord3Tone2.wav ./audio/chords/chord3/chord31_3.wav 0 1.0
./MixProject ./audio/pd/chord3Tone3.wav ./audio/pd/chord3Tone4.wav ./audio/chords/chord3/chord32_3.wav 0 1.0
./MixProject ./audio/pd/chord3Tone5.wav ./audio/chords/chord3/chord32_3.wav ./audio/chords/chord3/chord33_3.wav 0 1.0

./MixProject ./audio/chords/chord3/chord33_3.wav ./audio/chords/chord3/chord31_3.wav ./audio/chords/chord3/chord3_prefade.wav 0 1.0

# (Chord 1) Add a fade in to the chord
  ./FinalProject2 ./audio/chords/chord3/chord3_prefade.wav ./audio/chords/chord3/chord3_fadein.wav 1 4 3

# (Chord 1) Add a fadeout for 4 sec
  ./FinalProject2 ./audio/chords/chord3/chord3_fadein.wav ./audio/chords/chords_final/chord3_final.wav 1 5 5

echo "Chord 3 created."


#               Chord 4
./MixProject ./audio/pd/chord4Tone1.wav ./audio/pd/chord4Tone2.wav ./audio/chords/chord4/chord41_3.wav 0 1.0
./MixProject ./audio/pd/chord4Tone3.wav ./audio/pd/chord4Tone4.wav ./audio/chords/chord4/chord42_3.wav 0 1.0
./MixProject ./audio/pd/chord4Tone5.wav ./audio/chords/chord4/chord42_3.wav ./audio/chords/chord4/chord43_3.wav 0 1.0

./MixProject ./audio/chords/chord4/chord43_3.wav ./audio/chords/chord4/chord41_3.wav ./audio/chords/chord4/chord4_prefade.wav 0 1.0

# (Chord 1) Add a fade in to the chord
  ./FinalProject2 ./audio/chords/chord4/chord4_prefade.wav ./audio/chords/chord4/chord4_fadein.wav 1 4 3

# (Chord 1) Add a fadeout for bigshot0_25gain.wav of 8 secs
  ./FinalProject2 ./audio/chords/chord4/chord4_fadein.wav ./audio/chords/chords_final/chord4_final.wav 1 5 5

echo "Chord 4 created."


#_______________        Step 2 - Use MixProject to loop the percussion files        _______________

# Double the length
./MixProject ./audio/percussion/kick.wav ./audio/percussion/kick.wav ./audio/percussion/kick_doubled.wav 5.217370 1.0
./MixProject ./audio/percussion/shaker1.wav ./audio/percussion/shaker1.wav ./audio/percussion/shaker1_doubled.wav 5.217370 1.0
./MixProject ./audio/percussion/shaker2.wav ./audio/percussion/shaker2.wav ./audio/percussion/shaker2_doubled.wav 5.217370 1.0
./MixProject ./audio/percussion/hats.wav ./audio/percussion/hats.wav ./audio/percussion/hats_doubled.wav 5.217370 1.0

./MixProject ./audio/percussion/snare.wav ./audio/percussion/snare.wav ./audio/percussion/snare_doubled.wav 5.217370 1.0

# Quadruple the length
./MixProject ./audio/percussion/kick_doubled.wav ./audio/percussion/kick_doubled.wav ./audio/percussion/kick_4x.wav 5.217370 1.0
./MixProject ./audio/percussion/shaker1_doubled.wav ./audio/percussion/shaker1_doubled.wav ./audio/percussion/shaker1_4x.wav 5.217370 1.0
./MixProject ./audio/percussion/shaker2_doubled.wav ./audio/percussion/shaker2_doubled.wav ./audio/percussion/shaker2_4x.wav 5.217370 1.0
./MixProject ./audio/percussion/hats_doubled.wav ./audio/percussion/hats_doubled.wav ./audio/percussion/hats_4x.wav 5.217370 1.0

./MixProject ./audio/percussion/snare_doubled.wav ./audio/percussion/snare_doubled.wav ./audio/percussion/snare_4x.wav 5.217370 1.0

# Add one more iteration

# ./MixProject ./audio/percussion/kick_4x.wav ./audio/percussion/kick_4x.wav ./audio/percussion/kick_longer.wav 5.217370 1.0
# ./MixProject ./audio/percussion/shaker1_4x.wav ./audio/percussion/shaker1_4x.wav  ./audio/percussion/shaker1_longer.wav 5.217370 1.0
# ./MixProject ./audio/percussion/shaker2_4x.wav ./audio/percussion/shaker2_4x.wav ./audio/percussion/shaker2_longer.wav 5.217370 1.0
# ./MixProject ./audio/percussion/hats_4x.wav ./audio/percussion/hats_4x.wav ./audio/percussion/hats_longer.wav 5.217370 1.0

# ./MixProject ./audio/percussion/snare_4x.wav ./audio/percussion/snare_4x.wav ./audio/percussion/snare_longer.wav 5.217370 1.0

echo "Percussion looped"

#_______________        Step 3 - Process Percussion Audio stems        _______________

# Reduce the gain for raw mono drum stems to 70%
  ./FinalProject2 ./audio/percussion/kick_4x.wav ./audio/percussion/processed/kick_halfDB.wav 1 1 0.70
  ./FinalProject2 ./audio/percussion/shaker1_4x.wav ./audio/percussion/processed/shaker1_halfDB.wav 1 1 0.70
  ./FinalProject2 ./audio/percussion/shaker2_4x.wav ./audio/percussion/processed/shaker2_halfDB.wav 1 1 0.70
  ./FinalProject2 ./audio/percussion/hats_4x.wav ./audio/percussion/processed/hats_halfDB.wav 1 1 0.70

  ./FinalProject2 ./audio/percussion/snare_4x.wav ./audio/percussion/processed/snare_halfDB.wav 1 1 0.70

# Add extortion to chord 1
# ./FinalProject2 ./audio/chords/chord4/chord1_final.wav ./audio/chords/processed/chord1_extortion.wav 1 9 1

echo "Percussion processed."


#_______________        Step 4 - Mix Percussion Audio stems        _______________

# Mix snare and kick
./MixProject ./audio/percussion/processed/kick_halfDB.wav ./audio/percussion/processed/snare_halfDB.wav ./audio/percussion/kick_snare_fin.wav 0 0.70

# Mix shaker files together
./MixProject ./audio/percussion/processed/shaker1_halfDB.wav ./audio/percussion/processed/shaker2_halfDB.wav  ./audio/percussion/shakers_fina.wav 0 0.70
./MixProject ./audio/percussion/shakers_fina.wav ./audio/percussion/processed/hats_halfDB.wav  ./audio/percussion/shakers_fin.wav 0 0.70


# Mix both percussion parts together
./MixProject ./audio/percussion/shakers_fin.wav ./audio/percussion/kick_snare_fin.wav ./audio/percussion/percussion_fin.wav 0 1.0

echo "Percussion mixed."

#_______________        Step 5 - Combine chords with percussion        _______________

# Mix chords together
./MixProject ./audio/chords/chords_final/chord2_final.wav ./audio/chords/chords_final/chord3_final.wav ./audio/chords/mix_chords/chordmix1.wav 5 1.0
./MixProject ./audio/chords/chords_final/chord1_final.wav ./audio/chords/chords_final/chord4_final.wav ./audio/chords/mix_chords/chordmix2.wav 5 1.0
./MixProject ./audio/chords/mix_chords/chordmix1.wav ./audio/chords/mix_chords/chordmix2.wav ./audio/chords/mix_chords/chordmix_final.wav 5 1.0

# Mix chords with percussion
./MixProject ./audio/chords/mix_chords/chordmix_final.wav ./audio/percussion/percussion_fin.wav ./audio/final_mix1.wav 0 0.9
./MixProject  ./audio/final_mix1.wav ./audio/chords/chords_final/chord3_final.wav ./audio/final_mixb.wav 15.0375 0.9
./MixProject  ./audio/percussion/fill2.wav ./audio/final_mixb.wav ./audio/final_mix.wav 0 0.9

# Double the whole final mix
./MixProject ./audio/final_mix.wav ./audio/final_mix.wav ./audio/final_mix_double.wav 20.869551 1.0

echo "Chords and percussion mixed."


#_______________        Step 6 - Add fade to final audio file        _______________

# (Chord 1) Add a fade in
  ./FinalProject2 ./audio/final_mix_double.wav ./audio/final_mix_fadein.wav 1 4 1

# (Chord 1) Add a fadeout
  ./FinalProject2 ./audio/final_mix_fadein.wav ./final_mix_final.wav 1 5 5

echo "Song is now complete!"

while true; do
    read -p "Do you want to open the song now? (y or n) " yn
    case $yn in
        [Yy]* ) open ./final_mix_final.wav; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


# ./ProjectBase infilename outfilename channels algorithm value 1 value 2
# ./MixProject infilename1 infilename2 outflename offset gain

# Reduce the gain for salt-n-peppa_bigshot_ex.wav to 35%
#   ./ProjectBaseFinal salt_n_pepa_bigshot_ex.wav bigshot0_25gain.wav 2 1 0.35

# Add a fadein for bigshot0_25gain,wav of 10 secs
#   ./ProjectBaseFinal bigshot0_25gain.wav bigshot-gainfade.wav 2 4 10

# Add a fadeout for bigshot0_25gain.wav of 8 secs
#   ./ProjectBaseFinal bigshot_gainfade.wav bigshot_gainfade2.wav 2 5 8

# Add a fadeout to riverdance_ex.wav of 4 secs
#   ./ProjectBaseFinal riverdance_ex.wav riverdancefadeOut.wav 2 5 4

# Mix riverdancefadeOut.wav and bigshot_gainfade.wav to yield strange_mix.wav 8 1.0
#   ./MixProject riverdancefadeOut.wav bigshot gainfade2.wav strangemix.wav 8 1.0
