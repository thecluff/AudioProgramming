#ifndef PROCESSING_HPP_
#define PROCESSING_HPP_

int gain(double *buffer, int length, double gainFac);

int normalize(double *buffer, int length);

int rectify(double *buffer, int length);

int reverse(double *inBuf, double *outBuf, int length);

int invert(double *inBuf, double *outBuf, int length);

#endif /* PROCESSING.HPP */