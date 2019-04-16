#include <iostream>
#include <cmath>
#include <cstdlib>
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

int reverse(double *inBuf, double *outBuf, int length) {
    // Copy from one buffer to the other and reverse
    for(int ndx=0;ndx<length;ndx++) {
        outBuf[length-1-ndx] = inBuf[ndx];
    }
    return 0;
}

// This function will distort the output somewhat
int rectify(double *buffer, int length) {
    // Force all negative sample values to be positive
    for(int ndx=0;ndx<length;ndx++) {
        if(buffer[ndx]<0) {
            buffer[ndx]*=1.0;
        }
    }
    return 0;
}

// Invert signal polarity (positive to negative, negative to positive)

int invert(double *buffer, int length) {
    for(int ndx=0;ndx<length;ndx++) {
        buffer[ndx] *= -1.0;
    }
    return 0;
}

int clip(double *buffer, int length, double height) {

    for(int ndx=0;ndx<length;ndx++) {
        if(fabs(buffer[ndx])>height) {
            if(buffer[ndx]<0.0) {
                buffer[ndx] = -1.0 * height;
            }
            else {
                buffer[ndx] = height;
            }
        }
    }
    return 0;
}

int fadeIn(double *buffer, int SR, int nChnls, double fadeTime) {
    int nSamps = SR * nChnls * fadeTime;

    for(int ndx=0;ndx<nSamps;ndx++){
        buffer[ndx] *= double(ndx)/nSamps;
    }
    return nSamps;
}

int fadeOut(double *buffer, int length, int SR, int nChnls, double fadeTime) {
    int nSamps = SR * nChnls * fadeTime;

    for(int ndx=0;ndx<nSamps;ndx++){
        buffer[length - 1 - ndx] *= double(ndx)/nSamps;
    }

    return nSamps;
}

int dynPan(double *buffer, int length, int SR, int nChnls) {
    int total = SR * nChnls;

    int intervals = SR;
    
    for(int ndx=0;ndx<length;ndx++){
        // create each channel as an array of bits 
        int newChannel1
    }

    for(int ndx=0;ndx<total;ndx++){
        // get the same ndx fom each channel and put that into buffer at next index
        int tempNdx = ndx;
        for(int ndx2=1;ndx2<=nChnls;ndx2++){
            buffer[tempNdx] = newChannel${ndx2}[ndx]; 
            tempNdx++;
        } 
        ndx = tempNdx;
    }

    return 0;
}
