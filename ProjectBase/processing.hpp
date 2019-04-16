#ifndef PROCESSING_HPP_
#define PROCESSING_HPP_

int gain(double *buffer, int length, double gainFac);

int normalize(double *buffer, int length);

int rectify(double *buffer, int length);

int reverse(double *inBuf, double *outBuf, int length);

int invert(double *inBuf, double *outBuf, int length);

int clip(double *buffer, int length, double height);

int fadeIn(double *buffer, int SR, int nChnls, double fadeTime);

int fadeIn(double *buffer, int length, int SR, int nChnls, double fadeTime);

int dynPan(double *buffer, int length, int SR, int nChnls);

#endif /* PROCESSING.HPP */