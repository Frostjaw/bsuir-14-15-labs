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

typedef struct {
	float x;
	float y;
	float z;
} Vertex3f;

vector<Vertex3f> box_vertex_array;
vector<Vertex3f> crane_vertex_array;

bool parse_obj(string filename, vector<Vertex3f> & vertex_array) {

	vector<Vertex3f> raw_vertex_array;

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
		else if (prefix == "f") {
			string vertex1_str;
			string vertex2_str;
			string vertex3_str;
			iss >> vertex1_str >> vertex2_str >> vertex3_str;

			int v1_id, v2_id, v3_id;
			
			istringstream v1ss(vertex1_str);
			v1ss >> v1_id;
			istringstream v2ss(vertex2_str);
			v2ss >> v2_id;
			istringstream v3ss(vertex3_str);
			v3ss >> v3_id;
			
			vertex_array.push_back(raw_vertex_array[v1_id - 1]);
			vertex_array.push_back(raw_vertex_array[v2_id - 1]);
			vertex_array.push_back(raw_vertex_array[v3_id - 1]);
		}
	}

	file.close();
	return true;
}

void drawTexturedBox(float x, float y, float z, float scale) {

	glColor3f(1, 1, 1);

	glBindTexture(GL_TEXTURE_2D, textureIds[BOX_TEXTURE]);
	glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
	glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

	glPushMatrix();
	glTranslatef(x, y, z);
	glScalef(scale, scale, scale);
	glTranslatef(-0.5, 0.0, -0.5);
	glBegin(GL_QUADS);

	glTexCoord2f(1.0, 1.0);
	glVertex3f(+1.0, +0.0, +1.0);
	glTexCoord2f(0.0, 1.0);
	glVertex3f(-0.0, +0.0, +1.0);
	glTexCoord2f(0.0, 0.0);
	glVertex3f(-0.0, +0.0, -0.0);
	glTexCoord2f(1.0, 0.0);
	glVertex3f(+1.0, +0.0, -0.0);

	glTexCoord2f(1.0, 1.0);
	glVertex3f(+1.0, +1.0, +1.0);
	glTexCoord2f(0.0, 1.0);
	glVertex3f(-0.0, +1.0, +1.0);
	glTexCoord2f(0.0, 0.0);
	glVertex3f(-0.0, +1.0, -0.0);
	glTexCoord2f(1.0, 0.0);
	glVertex3f(+1.0, +1.0, -0.0);

	glTexCoord2f(1.0, 1.0);
	glVertex3f(+0.0, +0.0, +0.0);
	glTexCoord2f(0.0, 1.0);
	glVertex3f(-0.0, +1.0, +0.0);
	glTexCoord2f(0.0, 0.0);
	glVertex3f(-0.0, +1.0, +1.0);
	glTexCoord2f(1.0, 0.0);
	glVertex3f(+0.0, +0.0, +1.0);

	glTexCoord2f(1.0, 1.0);
	glVertex3f(+1.0, +0.0, +0.0);
	glTexCoord2f(0.0, 1.0);
	glVertex3f(+1.0, +1.0, +0.0);
	glTexCoord2f(0.0, 0.0);
	glVertex3f(+1.0, +1.0, +1.0);
	glTexCoord2f(1.0, 0.0);
	glVertex3f(+1.0, +0.0, +1.0);

	glTexCoord2f(1.0, 1.0);
	glVertex3f(+0.0, +0.0, +0.0);
	glTexCoord2f(0.0, 1.0);
	glVertex3f(+1.0, +0.0, +0.0);
	glTexCoord2f(0.0, 0.0);
	glVertex3f(+1.0, +1.0, +0.0);
	glTexCoord2f(1.0, 0.0);
	glVertex3f(+0.0, +1.0, +0.0);

	glTexCoord2f(1.0, 1.0);
	glVertex3f(+0.0, +0.0, +1.0);
	glTexCoord2f(0.0, 1.0);
	glVertex3f(+1.0, +0.0, +1.0);
	glTexCoord2f(0.0, 0.0);
	glVertex3f(+1.0, +1.0, +1.0);
	glTexCoord2f(1.0, 0.0);
	glVertex3f(+0.0, +1.0, +1.0);

	glEnd();
	glPopMatrix();
}

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
	glVertex3f(+1.0f, -1.0f, +1.0f);
	glTexCoord2f(0.0, 1.0);
	glVertex3f(-1.0f, -1.0f, +1.0f);
	glTexCoord2f(0.0, 0.0);
	glVertex3f(-1.0f, -1.0f, -1.0f);
	glTexCoord2f(1.0, 0.0);
	glVertex3f(+1.0f, -1.0f, -1.0f);
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
	//gluPerspective(120, (float)16 / 9, 0.5, 2.0);
	glRotatef(30, 1, 0, 0);
	glRotatef(30, 0, 1, 0);

	static float angle = 30;
	glRotatef(angle++, 0.0, 1.0, 0.0);
	spot(0, 0, 0, 1, 1, 1);
	//drawAxis();
	glScalef(0.5, 0.5, 0.5);

	glColor3f(0.2, 0.2, 0.2);
	drawSurface();
	// -------------------------------------
	// ------------- Objects ---------------
	/*
	GLfloat mat_specular[] = { 0.3, 0.3, 1.0, 1.0 };
	GLfloat mat_shininess[] = { 100.0 };
	glShadeModel(GL_SMOOTH);
	glMaterialfv(GL_FRONT, GL_SPECULAR, mat_specular);
	glMaterialfv(GL_FRONT, GL_SHININESS, mat_shininess);
	*/

	drawTexturedBox(0.0, -1.000, 0.42, 0.275);
	drawTexturedBox(0.0, -0.725, 0.42, 0.275);

	glPushMatrix();
	transitionForBox1();
	drawTexturedBox(0.0, -0.450, 0.42, 0.275);
	glPopMatrix();

	drawTexturedBox(0.275, -1.000, 0.42, 0.275);
	drawTexturedBox(0.275, -0.725, 0.42, 0.275);

	glPushMatrix();
	transitionForBox2();
	drawTexturedBox(0.275, -0.450, 0.42, 0.275);
	glPopMatrix();

	glColor3f(1.0, 1.0, 0.0);
	glPushMatrix();
	glTranslatef(0, -1, 0);
	transitionForCrane();
	drawObject(crane_vertex_array, +0.0, -0.0, +0.0, 0.25);
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

void reshapeFunc(int width, int height) {

	GLfloat aspect = (GLfloat)width / (GLfloat)(height == 0 ? 1 : height);

	glViewport(0, 0, width, height);

	glMatrixMode(GL_PROJECTION);  // To operate on the Projection matrix
	glLoadIdentity();             // Reset the projection matrix

	if (width >= height) {
		glOrtho(-1.0 * aspect, 1.0 * aspect, -1.0, 1.0, -1.0, 1.0);
	}
	else {
		glOrtho(-1.0, 1.0, -1.0 / aspect, 1.0 / aspect, -1.0, 1.0);
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

  	bool success = parse_obj("..\\..\\res\\crane.obj", crane_vertex_array) && parse_obj("..\\..\\res\\cube.obj", box_vertex_array);

	if (success) {
		glutInit(&argc, argv);
		glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
		glutCreateWindow("");
		glutInitWindowSize(SCREEN_WIDTH, SCREEN_HEIGHT);
		glutInitWindowPosition(0, 0);
		glutDisplayFunc(display);
		glutReshapeFunc(reshapeFunc);
		glutKeyboardFunc(keyboardFunc);
		glutTimerFunc(TIME_INTERVAL_MS, timerFunc, 0);
		glutFullScreen();

		setupTextures();

		glutMainLoop();
	}
	else {
		cout << "Error";
		_getch();
	}

	return 0;
}