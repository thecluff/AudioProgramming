// Generate some sine wave sample values and store them in a text file for plotting
// First, how to create, open and write values to a text file

#include <iostream>
#include <iomanip>
#include <cmath>
#include <fstream>

using namespace std;

// Define PI
double PI = 4.0 * atan(1.0);

// Declare a buffer
double * buffer;    // * is the symbol for what is called a "pointer"
const int pts = 1000;

// Create the file
// ofstream sine;

// Forward declaration for a file output function
// This function will need a filestream, a buffer, 
// and the length of the buffer to write
int saveToFile(double *buf, int nSamps);
int genSine(double *buf, int nSamps, double amp, double freq, double ph);

int main (int argc, const char *argv[]) {

    // Allocate the buffer
    buffer = new double[pts];

    genSine(buffer,pts,0.707,7,PI);

    // Write the values of the buffer to a file
    saveToFile(buffer, pts) ;

    return 0;
}

int genSine(double *buf, int nSamps, double amp, double freq, double phase){
    
    // This generates sine wave values in a loop and leaves them in a buffer
    for(int ndx=0;ndx<nSamps;ndx++){
    buf[ndx] = amp * sin(freq*2*PI*ndx/nSamps + phase);
    }
    return 0;
}

int saveToFile(double *buf, int nSamps) {
    ofstream ofs;
    // Open the file
    ofs.open("sine.txt");

    // Place some data
    // ofs << PI << endl;

    for(int ndx=0;ndx<nSamps;ndx++){
        ofs << ndx << "\t\t" << buf[ndx] << endl;
    }

    // Close File
    ofs.close();

    return 0;
}

// https://medium.com/@geekyants/deep-learning-with-react-native-65fae456839d
// https://github.com/saitoxu/InstaClone
// https://github.com/terrylinla/react-native-sketch-canvas
// https://github.com/ititandev/instagram-api-clone
// https://github.com/claudiobizzotto/ipfs-rpi