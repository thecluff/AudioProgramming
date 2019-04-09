#include <iostream>
#include <cmath>
#include "processing.hpp"


int gain(double *buffer, int length, double gainFac) {

    for(int ndx=0;ndx<length;ndx++) {

        buffer[ndx] *= gainFac;
    }

    return 0;
}

int normalize(double *buffer, int length) {
    double highestAmp = 0;
    for(int ndx=0;ndx<length;ndx++) {
        if(fabs(buffer[ndx])>highestAmp) {
            highestAmp = fabs(buffer[ndx]);
        }
    }

    // The normFac is 1.0/highestAmp
    double normFac = 1.0/highestAmp;
    for(int ndx=0;ndx<length;ndx++) {
        buffer[ndx] *= normFac;
    }

    return 0;
}

int reverse(double *buffer, int length ) {

    

    return 0;
}