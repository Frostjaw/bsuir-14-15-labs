#include <Windows.h>
#include "BitmapLoader.h"
#include <glut.h>
#include <stdio.h>
#include <conio.h>
#include <cmath>
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <vector>

using namespace std;

#define SCREEN_WIDTH 1920
#define SCREEN_HEIGHT 1080

// Time
//***********************************
#define SCENE_DURATION 400
#define TIME_INTERVAL_MS 17

unsigned int time_delta = 1;
unsigned int current_time = 0;

float fCurrentTime = 0.0;

void resetTimer();

// Textures Info
//***********************************
#define TEXTURES_COUNT 2
#define BOX_TEXTURE 0
#define GROUND_TEXTURE 1

GLuint textureIds[TEXTURES_COUNT];
string texturePaths[TEXTURES_COUNT] = {"..\\..\\res\\box.bmp", "..\\..\\res\\ground.bmp"};
//***********************************

float fSceneTranslationY = 0.0;
float fSceneTranslationX = 0.0;
float fSceneRotationAngleY = 30.0;
float fSceneRotationAngleX = 30.0;

typedef struct {
	float x;
	float y;
	float z;
} Vertex3f;

class GLObject {

	private:
		GLuint textureId = -1;
		vector<Vertex3f> v_array;
		vector<Vertex3f> vt_array;

		bool parse_obj(string filename, vector<Vertex3f> & vertex_array, vector<Vertex3f> & vt_array) {

			vector<Vertex3f> raw_vertex_array;
			vector<Vertex3f> raw_vt_array;

			ifstream file(filename, ios_base::in);

			if (!file.is_open()) {
				return false;
			}

			string line;
			while (getline(file, line))
			{
				string prefix;
				istringstream iss(line);

				iss >> prefix;

				if (prefix == "v") {
					Vertex3f vertex;
					iss >> vertex.x >> vertex.y >> vertex.z;
					raw_vertex_array.push_back(vertex);
				}
				else if (prefix == "vt") {
					Vertex3f vt;
					vt.z = 0;
					iss >> vt.x >> vt.y;
					raw_vt_array.push_back(vt);
				}
				else if (prefix == "f") {
					char _;
					string vertex1_str;
					string vertex2_str;
					string vertex3_str;
					iss >> vertex1_str >> vertex2_str >> vertex3_str;

					int v1_id, v2_id, v3_id;
					int vt1_id, vt2_id, vt3_id;

					istringstream v1ss(vertex1_str);
					v1ss >> v1_id;
					v1ss >> _ >> vt1_id;
					istringstream v2ss(vertex2_str);
					v2ss >> v2_id;
					v2ss >> _ >> vt2_id;
					istringstream v3ss(vertex3_str);
					v3ss >> v3_id;
					v3ss >> _ >> vt3_id;

					vertex_array.push_back(raw_vertex_array[v1_id - 1]);
					vertex_array.push_back(raw_vertex_array[v2_id - 1]);
					vertex_array.push_back(raw_vertex_array[v3_id - 1]);

					vt_array.push_back(raw_vt_array[vt1_id - 1]);
					vt_array.push_back(raw_vt_array[vt2_id - 1]);
					vt_array.push_back(raw_vt_array[vt3_id - 1]);
				}
			}

			file.close();
			return true;
		}

	public:

		GLObject(string filepath, GLuint textureId = -1) {
			parse_obj(filepath, v_array, vt_array);
			this->textureId = textureId;
		}

		void GLDraw(float x, float y, float z, float scale) {

			if (this->textureId != -1) {
				glBindTexture(GL_TEXTURE_2D, this->textureId);
				glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
				glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
			}

			glPushMatrix();
			glTranslatef(x, y, z);
			glScalef(scale, scale, scale);
			glBegin(GL_TRIANGLES);
			for (int i = 0; i < (signed)v_array.size(); i++) {
				if ((signed)vt_array.size() > i) {
					glTexCoord2f(vt_array[i].x, vt_array[i].y);
				}
				glVertex3f(v_array[i].x, v_array[i].y, v_array[i].z);
			}
			glEnd();
			glPopMatrix();
		}
};

GLObject *box;
GLObject *crane;

void drawObject(vector<Vertex3f> & vertex_array, float x, float y, float z, float scale) {
	glPushMatrix();
	glTranslatef(x, y, z);
	glScalef(scale, scale, scale);
	glBegin(GL_TRIANGLES);
	for (int i = 0; i < (signed)vertex_array.size(); i++) {
		glVertex3f(vertex_array[i].x, vertex_array[i].y, vertex_array[i].z);
	}
	glEnd();
	glPopMatrix();
}


void drawSurface() {

	glColor3f(1, 1, 1);

	glBindTexture(GL_TEXTURE_2D, textureIds[GROUND_TEXTURE]);
	glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
	glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

	glPushMatrix();

	glBegin(GL_QUADS);
	glTexCoord2f(1.0, 1.0);
	glVertex3f(+2.0f, -1.0f, +2.0f);
	glTexCoord2f(0.0, 1.0);
	glVertex3f(-2.0f, -1.0f, +2.0f);
	glTexCoord2f(0.0, 0.0);
	glVertex3f(-2.0f, -1.0f, -2.0f);
	glTexCoord2f(1.0, 0.0);
	glVertex3f(+2.0f, -1.0f, -2.0f);
	glEnd();
	glPopMatrix();
}

void drawAxis() {
	glPushMatrix();
	glBegin(GL_LINES);
	glColor3f(1.0, 0.0, 0.0);
	glVertex3f(-1.0, 0.0, 0.0);
	glVertex3f(+1.0, 0.0, 0.0);
	glColor3f(0.0, 1.0, 0.0);
	glVertex3f(0.0, -1.0, 0.0);
	glVertex3f(0.0, +1.0, 0.0);
	glColor3f(0.0, 0.0, 1.0);
	glVertex3f(0.0, 0.0, -1.0);
	glVertex3f(0.0, 0.0, +1.0);
	glEnd();
	glPopMatrix();
}

int spot(double a, double b, double c, double d, double e, double f){
	/*
	a, b and c -- x, y and z co-ordinates for light position
	d, e and f -- x, y and z co-ordinates for spot light position
	*/
	GLfloat mat_specular[] = { 0.3, 1.0, 0.3, 1.0 };
	GLfloat mat_shininess[] = { 50.0 };
	GLfloat light_position[] = { a, b, c, 1.0 };
	GLfloat spotDir[] = { d, e, f };
	glClearColor(0.5, 0.5, 0.5, 0.0);
	glShadeModel(GL_SMOOTH);
	glLightfv(GL_LIGHT0, GL_SPECULAR, mat_specular);
	glLightfv(GL_LIGHT0, GL_POSITION, light_position);
	glMaterialfv(GL_FRONT, GL_SPECULAR, mat_specular);
	glMaterialfv(GL_FRONT, GL_SHININESS, mat_shininess);
	// Definig spotlight attributes
	glLightf(GL_LIGHT0, GL_SPOT_CUTOFF, 95.0);
	glLightf(GL_LIGHT0, GL_SPOT_EXPONENT, 2.0);
	glLightfv(GL_LIGHT0, GL_SPOT_DIRECTION, spotDir);
	glEnable(GL_COLOR_MATERIAL);
	glEnable(GL_DEPTH_TEST);
	return 0;
}

// Animations
//***********************************

void transitionForBox1() {

	float y = -(0.275 * 2);
	float angle = -90;

	if (fCurrentTime < 0.075) {
		float local_fCurrentTime = fCurrentTime / 0.075;
		angle = -90 * local_fCurrentTime;
		y = 0;
	}

	if (fCurrentTime >= 0.075 && fCurrentTime < 0.15) {
		float local_fCurrentTime = (fCurrentTime - 0.075) / 0.075;
		y = -(0.275 * 2) * local_fCurrentTime;
	}

	glTranslatef(0, y, 0);
	glRotatef(angle, 0, 1, 0);
}

void transitionForBox2() {

	float y = 0;
	float angle = 0;

	if (fCurrentTime >= 0.225 && fCurrentTime < 0.3) {
		float local_fCurrentTime = (fCurrentTime - 0.225) / 0.075;
		angle = -90 * local_fCurrentTime;
		y = 0;
	 } else if (fCurrentTime >= 0.3 && fCurrentTime < 0.375) {
		float local_fCurrentTime = (fCurrentTime - 0.3) / 0.075;
		angle = -90;
		y = -(0.275 * 2) * local_fCurrentTime;
	}
	 else if (fCurrentTime >= 0.375) {
		 y = -(0.275 * 2);
		 angle = -90;
	 }

	glTranslatef(0, y, 0);
	glRotatef(angle, 0, 1, 0);
}

void transitionForCrane() {

	float angle = 0;

	if (fCurrentTime >= 0.0 && fCurrentTime < 0.075) {
		float local_fCurrentTime = fCurrentTime / 0.075;
		angle = -90 * local_fCurrentTime;
		glRotatef(angle, 0, 1, 0);
	}
	else if (fCurrentTime >= 0.075 && fCurrentTime < 0.15) {
		float local_fCurrentTime = (fCurrentTime - 0.075) / 0.075;
		angle = -90 * (1 - local_fCurrentTime);
		glRotatef(angle, 0, 1, 0);
	}
	else if (fCurrentTime >= 0.15 && fCurrentTime < 0.225) {
		float local_fCurrentTime = (fCurrentTime - 0.15) / 0.075;
		angle = 38 * local_fCurrentTime;
		glRotatef(angle, 0, 1, 0);
	}
	else if (fCurrentTime >= 0.225 && fCurrentTime < 0.3) {
		float local_fCurrentTime = (fCurrentTime - 0.225) / 0.075;
		angle = -90 * local_fCurrentTime + 38;
		glRotatef(angle, 0, 1, 0);
	}
	else if (fCurrentTime >= 0.3 && fCurrentTime < 0.375) {
		float local_fCurrentTime = (fCurrentTime - 0.3) / 0.075;
		angle = (-90 + 38) * (1 - local_fCurrentTime);
		glRotatef(angle, 0, 1, 0);
	}
	else if (fCurrentTime >= 0.375) {
		float local_fCurrentTime = (fCurrentTime - 0.375) / 0.625;
		angle = -90 * (exp(4 * local_fCurrentTime) / exp(4));
		glRotatef(angle, 0, 0, 1);
	}
}
//***********************************

void display() {
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	glEnable(GL_LIGHTING);
	glEnable(GL_LIGHT0);
	
	glPushMatrix();
	// -------------------------------------
	// ----------- Scene global ------------
	//gluPerspective(90, (float)16 / 9, -4.0, 4.0);

	glTranslatef(fSceneTranslationX, fSceneTranslationY, 0.0);

	glRotatef(fSceneRotationAngleX, 1.0, 0.0, 0.0);
	glRotatef(fSceneRotationAngleY, 0.0, 1.0, 0.0);

	spot(0, 0, 0, 1, 1, 1);
	//drawAxis();
	glScalef(0.5, 0.5, 0.5);

	glColor3f(0.2, 0.2, 0.2);
	glPushMatrix();
	glTranslatef(0.0, -0.01, 0.0);
	drawSurface();
	glPopMatrix();
	// -------------------------------------
	// ------------- Objects ---------------

	box->GLDraw(0.0, -1.0 + 0.0000, 0.42, 0.1375);
	box->GLDraw(0.0, -1.0 + 0.2750, 0.42, 0.1375);

	glPushMatrix();
	transitionForBox1();
	box->GLDraw(0.0, -0.450, 0.42, 0.1375);
	glPopMatrix();

	box->GLDraw(0.275, -1.0 + 0.0000, 0.42, 0.1375);
	box->GLDraw(0.275, -1.0 + 0.2750, 0.42, 0.1375);

	glPushMatrix();
	transitionForBox2();
	box->GLDraw(0.275, -0.450, 0.42, 0.1375);
	glPopMatrix();

	glColor3f(1.0, 1.0, 0.0);
	glPushMatrix();
	glTranslatef(0, -1, 0);
	transitionForCrane();
	crane->GLDraw(0.0, 0.0, 0.0, 0.25);
	glPopMatrix();

	// -------------------------------------
	glPopMatrix();
	glutSwapBuffers();
}

void keyboardFunc(unsigned char key, int x, int y) {

	switch (key) {
		case VK_SPACE:
			resetTimer();
			break;
		default:
			exit(0);
	}
}

int _x = MAXINT32;
int _y = MAXINT32;
int __x = MAXINT32;
int __y = MAXINT32;
float _fSceneRotationAngleX;
float _fSceneRotationAngleY;
float _fSceneTranslationX;
float _fSceneTranslationY;

void mouseFunc(int button, int state, int x, int y) {

	_x = MAXINT32;
	_y = MAXINT32;
	__x = MAXINT32;
	__y = MAXINT32;

	if (button == GLUT_LEFT_BUTTON && state == GLUT_DOWN) {
		_fSceneRotationAngleX = fSceneRotationAngleX;
		_fSceneRotationAngleY = fSceneRotationAngleY;
		_x = x;
		_y = y;
	} else if (button == GLUT_RIGHT_BUTTON && state == GLUT_DOWN) {
		_fSceneTranslationX = fSceneTranslationX;
		_fSceneTranslationY = fSceneTranslationY;
		__x = x;
		__y = y;
	}
}

void motionFunc(int x, int y) {

	if (_x != MAXINT32) {
		fSceneRotationAngleY = _fSceneRotationAngleY - (_x - x);
	}

	if (_y != MAXINT32) {
		fSceneRotationAngleX = _fSceneRotationAngleX - (float)(_y - y) / 2;
	}

	if (__x != MAXINT32) {
		fSceneTranslationX = _fSceneTranslationX - (__x - x);
		fSceneTranslationX /= 500;
	}

	if (__y != MAXINT32) {
		fSceneTranslationY = _fSceneTranslationY + (__y - y);
		fSceneTranslationY /= 500;
	}
}

void reshapeFunc(int width, int height) {

	GLfloat aspect = (GLfloat)width / (GLfloat)(height == 0 ? 1 : height);
	
	glViewport(0, 0, width, height);

	glMatrixMode(GL_PROJECTION);  // To operate on the Projection matrix
	glLoadIdentity();             // Reset the projection matrix

	if (width >= height) {
		glOrtho(-1.0 * aspect, 1.0 * aspect, -1.0, 1.0, -4.0, 4.0);
	}
	else {
		glOrtho(-1.0, 1.0, -1.0 / aspect, 1.0 / aspect, -4.0, 4.0);
	}
}

void resetTimer() {
	time_delta = 1;
	current_time = 0;
}

void timerFunc(int i) {

	fCurrentTime = (float)current_time / SCENE_DURATION;

	if (current_time == SCENE_DURATION || current_time == -1) {
		time_delta = 0;
	}
	else {
		current_time += time_delta;
	}

	glutPostRedisplay();
	glutTimerFunc(TIME_INTERVAL_MS, timerFunc, i);
}

void setupTextures() {

	CBitmap *bitmap;
	unsigned char *data;
	int width;
	int height;
	int components;

	glEnable(GL_TEXTURE_2D);
	glGenTextures(TEXTURES_COUNT, textureIds);
	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

	for (int i = 0; i < TEXTURES_COUNT; i++) {
		cout << "Loading '" << texturePaths[i] << "'..." << endl;

		glBindTexture(GL_TEXTURE_2D, textureIds[i]);

		// Load bitmap data
		bitmap = new CBitmap(texturePaths[i].c_str());
		data = (unsigned char *)bitmap->GetBits();
		width = bitmap->GetWidth();
		height = bitmap->GetHeight();
		components = bitmap->GetBitCount() / 8;

		// Load this texture map
		gluBuild2DMipmaps(GL_TEXTURE_2D, components, width, height, GL_RGBA, GL_UNSIGNED_BYTE, data);

		// Trilinear mipmapping
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
	}
}

int main(int argc, char **argv) {

	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
	glutCreateWindow("");
	glutInitWindowSize(SCREEN_WIDTH, SCREEN_HEIGHT);
	glutInitWindowPosition(0, 0);
	glutDisplayFunc(display);
	glutReshapeFunc(reshapeFunc);
	glutKeyboardFunc(keyboardFunc);
	glutMouseFunc(mouseFunc);
	glutMotionFunc(motionFunc);
	glutTimerFunc(TIME_INTERVAL_MS, timerFunc, 0);
	glutFullScreen();

	cout << "Loading textures..." << endl;

	setupTextures();

	cout << "Done." << endl;

	cout << "Loading objects..." << endl;

	box = new GLObject("..\\..\\res\\cube.obj", textureIds[BOX_TEXTURE]);
	crane = new GLObject("..\\..\\res\\crane.obj");

	cout << "Done.";

	glutMainLoop();

	return 0;
}