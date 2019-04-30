#!/bin/bash

./ProjectBase2 salt_n_pepa_bigshot_ex.wav bigshot0_25gain.wav 2 1 0.35

./ProjectBase2/ bigshot0_25gain.wav bigshot-gainfade.wav 2 4 10

./ProjectBase2 bigshot_gainfade.wav bigshot_gainfade2.wav 2 5 8

./ProjectBase2 riverdance_ex.wav riverdancefadeOut.wav 2 5 4

./MixProject riverdancefadeOut.wav bigshot gainfade2.wav strangemix.wav 8 1.0