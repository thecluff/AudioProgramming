// This project provides a framework for building future projects

#include <iostream>
#include <sndfile.h>

using namespace std;

// Global variables for file functions, etc.
SNDFILE *infile, *outfile;
SF_INFO sfInInfo, sfOutInfo;
sf_count_t readCount, writeCount;

// Buffers
double *inp, *outp;

// Forward declarations
int openInput(string fn);
int openOutput(string fn, int nChnls);
int allocateBuffers(double *inBuf, double *outBuf, int length);
int readInput();
int writeOutput();
int copySamples(double *inBuf, double *outBuf, int length);
int cleanUp();

int main(int argc, const char * argv[]){

    return 0;
}

int openInput(char *fn) {
    // Opens input file
    if (!(infile = sf_open(fn, SFM_READ, &sfInInfo)))
	{
		cout << "Not able to open input file; closing program." << endl;
		sf_perror(NULL);
		return 1;
	}
    cout << "Input file opened for reading." << endl;

    return 0;
}

int openOutput(char *fn) {
    	// Open the output file
	if (!(outfile = sf_open(fn, SFM_WRITE, &sfOutInfo)))
	{
		cout << "Not able to open the output file." << endl;
		cout << "Application will now close." << endl;
		sf_perror(NULL);
		return 1;
	}

    return 0;
}

int allocateBuffers(double *inBuf, double *outBuf, int length) {
	cout << "The number of input samples is" << sfInInfo.frames*sfInInfo.channels << "." << endl;
	cout << "The number of output samples is" << sfOutInfo.frames*sfOutInfo.channels << "." << endl;
	inBuf = new double[sfInInfo.frames * sfInInfo.channels];
	outBuf = new double[sfInInfo.frames * 1];

    return 0;
}

int readInput(double *inBuf) {
    readCount = sf_read_double(infile, inBuf, sfInInfo.frames*sfInInfo.channels);
	cout << "The number of samples read is" << readCount << endl;

    return 0;
}

int writeOutput();
int copySamples(double *inBuf, double *outBuf, int length);
int cleanUp();