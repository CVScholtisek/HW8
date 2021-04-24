/* Homework 7
 * Read in file
 * convert to grayscale
 * convert to ascii
 * read out ascii
 * Jon Genetti
 * 4/18/2021
 * CS 201
 */

/*
P3
3 2
255
# The part above is the header
# "P3" means this is a RGB color image in ASCII
# "3 2" is the width and height of the image in pixels
# "255" is the maximum value for each color
# The part below is image data: RGB triplets
255 0 0 # red
0 255 0 # green
0 0 255 # blue
255 255 0 # yellow
255 255 255 # white
0 0 0 # black
*/

#include <iostream>
using std::cout;
using std::endl;
#include <string>
using std::string;
#include <fstream>
using std::ifstream;
#include <cmath>
#include <vector>
#include <d2d1.h>
using std::vector;

class RGBImage{
public:
    RGBImage(): _resx(0), _resy(0), _maxval(0){cout << "CONSTRUCTOR" << endl;}
    RGBImage(string fname);
    ~RGBImage() {cout << "DESTRUCTOR" << endl;}
    void toASCII();

private:
    int _resx, _resy, _maxval;
    vector<int> _image;
};

RGBImage::RGBImage(string infile) {

    //open file
    ifstream fin(infile);
    if (!fin) {
        cout << "Error opening " << infile << endl;
        exit(1);
    }
    cout << infile << " successfully opened" << endl;

    //read "magic number"
    string line;
    getline(fin, line);
    if (line.size() < 2 or (line.at(0) != 'P' and line.at(1) != '3')) {
        cout << "Cannot find P3 magic number" << endl;
        exit(2);
    } else {
        cout << "PMM (text)" << endl;
    }

    //Ignore Comments
    getline(fin, line);
    if (!fin) {
        cout << "Error reading file" << endl;
        exit(3);
    }
    if (line[0] == '#') {
        cout << "Ignoring comment" << endl;
    }

    //Resolution
    fin >> _resx >> _resy >> _maxval;
    if (!fin) {
        cout << "Error reading " << infile << endl;
        exit(3);
    }
    //Print resolution values
    cout << "Image Size: " << _resx << "x" << _resy << endl;
    cout << "Maximum Value: " << _maxval << endl;

    //RGB loop by resx * resy

    //char ascii_char[] = "$@#%&HO?!*^;:,. ";
    //characters to choose from


    //loop resx * resy
    int rval, gval, bval;
    for (int i = 1; i <= (_resx * _resy); i++) {
        fin >> rval >> gval >> bval;
        if (!fin) {
            cout << "Error reading " << infile << endl;
            if (fin.eof()) {
                cout << "Reached end of file" << endl;
            }
            exit(4);
        }
        //save rbg values to vector - change to struct pixel / class pixel
        _image.push_back(rval);
        _image.push_back(gval);
        _image.push_back(bval);
    }
}

void RGBImage::toASCII(){
    int inty, div_inty;
    double y;
    string ascii_char = "$@#%&HO?!*^;:,. ";
    int rval, gval, bval;
    int index=0;
//Converting to ascii
    for (int i = 0; i < _resx * _resy; i++, index+=3){
        rval = _image.at(index);
        gval = _image.at(index+1);
        bval = _image.at(index+2);

        // Y = 0.2126R + 0.7152G + 0.0722B from HW7
        y = 0.2126*rval + 0.7152*gval + 0.0722*bval;
        //test if y is in bounds
        if (y < 0 or y > 255){
            cout << "Error, y value out of bounds" << endl;
            exit(5);
        }
        // convert y into integer
        inty = (int) round(y);
        if (inty < 0 or inty > 255){
            cout << "Error, y value out of bounds" << endl;
            exit(5);
        }
        // divide by 16
        div_inty = inty / 16;
        if (div_inty < 0 or div_inty > 15){
            cout << "Error, y value out of bounds" << endl;
            exit(5);
        }
        //Print raw data
        //cout << rval << " " << gval << " " << bval << " = " << y << " = " << inty;
        //cout << " = " << div_inty << endl;
        cout << ascii_char[div_inty];
        if (i % _resx == 0) cout << endl;
        }
    }


    int main(){
        std::cout << "Convert PPM to Ascii" << std::endl;

        RGBImage ppm("parrot.ppm");
        ppm.toASCII();

        cout << "Program Finished" << endl;
    }