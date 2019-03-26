// testSndfile.cpp: copy the contents of one audio file to another

#include <iostream>
#include <sndfile.h>

// SNDFILE is a custom data type that belongs to the library libsndfile
// Its purpose is to provide a type that holds sound file data.

SNDFILE *infile, *outfile;

// Each audio file will contain format information. To hold that format information,
// we need to use another custom data type, SF_INFO.
// When we declare a variable name using the '*', it means that it is a pointer, in other words
// a variable that holds the address of another variable.

SF_INFO sfInfo, sfOutInfo;

// Whenever we do a file operation, such as read or write, we will want to keep track of
// the number or count of samples that were transferred.

sf_count_t readCount, writeCount;

// We will need an input buffer and output buffer

double *inp, *outp;

using namespace std;

int main(int argc, const char *argv[]) {

    cout << "If you are reading this, then the compiler must have found libsndfile." << endl;
    if(argc<3) {
        cout << "Please supply an input file and an output file" << endl;
        return 0;
    }
    // Examine tghe two input arguments
    cout << argv[1] << "\t\t" << argv[2] << endl;
    return 0;
}