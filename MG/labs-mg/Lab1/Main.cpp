#include <Windows.h>
#include <glut.h>
#include <stdio.h>

#define SCREEN_WIDTH 1920
#define SCREEN_HEIGHT 1080

#define SCENE_DURATION 1000

#define TIME_INTERVAL_MS 4

int current_time = 0;

typedef struct {
	float x;
	float y;
	float z;
} Translation;

typedef struct {
	float angle;
	float x;
	float y;
	float z;
} Rotation;

void PerformBox3Transition() {
	Translation translation;
	Rotation rotation;
	ZeroMemory(&translation, sizeof(Translation));
	ZeroMemory(&rotation, sizeof(Rotation));

	float time_stamp = (float)current_time / SCENE_DURATION;
	const float bam_stamp = 0.7f;
	float timestamp_normalized = time_stamp / bam_stamp;

	if (time_stamp > bam_stamp) {
		timestamp_normalized = 1;
	}

	if (timestamp_normalized < 0.5f) {
		translation.y = 0.9f * timestamp_normalized * 2;
	}
	else {
		translation.y = 0.9f * (1 - timestamp_normalized) * 2;
		rotation.angle = 360 * timestamp_normalized * 2;
		rotation.z = 1;
	}

	glTranslatef(translation.x, translation.y, translation.z);
	glRotatef(rotation.angle, rotation.x, rotation.y, rotation.z);
}

void PerformPart1Transition() {
	Translation translation;
	Rotation rotation;
	ZeroMemory(&translation, sizeof(Translation));
	ZeroMemory(&rotation, sizeof(Rotation));

	float time_stamp = (float)current_time / SCENE_DURATION;
	float timestamp_normalized;

	if (time_stamp < 0.35f) {
		timestamp_normalized = 0;
	}
	else {
		timestamp_normalized = (time_stamp - 0.35f) / 0.3f;
	}

	translation.x = 2 * timestamp_normalized * 1.0f;
	translation.y = 2 * timestamp_normalized * 1.0f;

	if (timestamp_normalized > 0) {
		rotation.angle = 45 * timestamp_normalized;
		rotation.z = 0.5;
	}

	glTranslatef(translation.x, translation.y, translation.z);
	glRotatef(rotation.angle, rotation.x, rotation.y, rotation.z);
}

void PerformPart2Transition() {
	Translation translation;
	Rotation rotation;
	ZeroMemory(&translation, sizeof(Translation));
	ZeroMemory(&rotation, sizeof(Rotation));

	float time_stamp = (float)current_time / SCENE_DURATION;
	float timestamp_normalized;

	if (time_stamp < 0.35f) {
		timestamp_normalized = 0;
	}
	else {
		timestamp_normalized = (time_stamp - 0.35f) / 0.3f;
	}

	translation.x = 1 * timestamp_normalized * 1.0f;
	translation.y = 2 * timestamp_normalized * 1.0f;

	if (timestamp_normalized > 0) {
		rotation.angle = 45 * timestamp_normalized;
		rotation.z = 0.5;
	}

	glTranslatef(translation.x, translation.y, translation.z);
	glRotatef(rotation.angle, rotation.x, rotation.y, rotation.z);
}

void PerformPart3Transition() {
	Translation translation;
	Rotation rotation;
	ZeroMemory(&translation, sizeof(Translation));
	ZeroMemory(&rotation, sizeof(Rotation));

	float time_stamp = (float)current_time / SCENE_DURATION;
	float timestamp_normalized;

	if (time_stamp < 0.35f) {
		timestamp_normalized = 0;
	}
	else {
		timestamp_normalized = (time_stamp - 0.35f) / 0.3f;
	}

	translation.x = 1 * timestamp_normalized * 1.0f;
	translation.y = 3 * timestamp_normalized * 1.0f;

	if (timestamp_normalized > 0) {
		rotation.angle = 45 * timestamp_normalized;
		rotation.z = 0.5;
	}

	glTranslatef(translation.x, translation.y, translation.z);
	glRotatef(rotation.angle, rotation.x, rotation.y, rotation.z);
}

void PerformPart4Transition() {
	Translation translation;
	Rotation rotation;
	ZeroMemory(&translation, sizeof(Translation));
	ZeroMemory(&rotation, sizeof(Rotation));

	float time_stamp = (float)current_time / SCENE_DURATION;
	float timestamp_normalized;

	if (time_stamp < 0.35f) {
		timestamp_normalized = 0;
	}
	else {
		timestamp_normalized = (time_stamp - 0.35f) / 0.3f;
	}

	translation.x = 3 * timestamp_normalized * 1.0f;
	translation.y = -2 * timestamp_normalized * 1.0f;

	if (timestamp_normalized > 0) {
		rotation.angle = 45 * timestamp_normalized;
		rotation.z = 0.5;
	}

	glTranslatef(translation.x, translation.y, translation.z);
	glRotatef(rotation.angle, rotation.x, rotation.y, rotation.z);
}

void PerformPart5Transition() {
	Translation translation;
	Rotation rotation;
	ZeroMemory(&translation, sizeof(Translation));
	ZeroMemory(&rotation, sizeof(Rotation));

	float time_stamp = (float)current_time / SCENE_DURATION;
	float timestamp_normalized;

	if (time_stamp < 0.35f) {
		timestamp_normalized = 0;
	}
	else {
		timestamp_normalized = (time_stamp - 0.35f) / 0.3f;
	}

	translation.x = -1 * timestamp_normalized * 1.0f;
	translation.y = 1 * timestamp_normalized * 1.0f;

	if (timestamp_normalized > 0) {
		rotation.angle = 45 * timestamp_normalized;
		rotation.z = 0.5;
	}

	glTranslatef(translation.x, translation.y, translation.z);
	glRotatef(rotation.angle, rotation.x, rotation.y, rotation.z);
}

void display() {
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f); // Set background color to black and opaque
	glClear(GL_COLOR_BUFFER_BIT);         // Clear the color buffer (background)

	// Parts
	// 1
	glPushMatrix();
	glTranslatef(0.0, 0.1f, 0.0);
	PerformPart1Transition();
	glBegin(GL_QUADS);
	glVertex2f(-0.6f, -1.0f);
	glVertex2f(-0.6f, -0.5f);
	glVertex2f(-0.5f, -0.3f);
	glVertex2f(-0.5f, -1.0f);
	glEnd();
	glPopMatrix();
	// 2
	glPushMatrix();
	glTranslatef(0.0, 0.1f, 0.0);
	PerformPart2Transition();
	glBegin(GL_QUADS);
	glVertex2f(-0.6f, -0.5f);
	glVertex2f(-0.5f, -0.3f);
	glVertex2f(-0.5f, 0.3f);
	glVertex2f(-0.6f, 0.1f);
	glEnd();
	glPopMatrix();
	// 3
	glPushMatrix();
	glTranslatef(0.0, 0.1f, 0.0);
	PerformPart3Transition();
	glBegin(GL_QUADS);
	glVertex2f(-0.5f, 0.3f);
	glVertex2f(-0.6f, 0.1f);
	glVertex2f(-0.6f, 0.8f);
	glVertex2f(-0.5f, 0.8f);
	glEnd();
	glPopMatrix();
	// 4
	glPushMatrix();
	glTranslatef(0.0, 0.1f, 0.0);
	PerformPart4Transition();
	glBegin(GL_QUADS);
	glVertex2f(-0.6f, 0.3f);
	glVertex2f(-0.9f, 0.3f);
	glVertex2f(-0.9f, 0.4f);
	glVertex2f(-0.6f, 0.4f);
	glEnd();
	glPopMatrix();
	// 5
	glPushMatrix();
	glTranslatef(0.0, 0.1f, 0.0);
	PerformPart5Transition();
	glBegin(GL_QUADS);
	glVertex2f(-0.5f, 0.3f);
	glVertex2f(-0.5f, 0.4f);
	glVertex2f(+0.7f, 0.4f);
	glVertex2f(+0.7f, 0.3f);
	glEnd();
	glPopMatrix();
	// 11
	glPushMatrix();
	glTranslatef(0.0, 0.1f, 0.0);
	float ff = ((float)current_time / SCENE_DURATION) > 0.35f ? 1.0 : 0.0;
	glBegin(GL_LINES);
	glVertex2f(-0.9f, 0.4f);
	glVertex2f(-0.6f - 0.3f * ff, 0.8f - 0.4f * ff);
	glEnd();
	glPopMatrix();
	// 22
	glPushMatrix();
	glTranslatef(0.0, 0.1f, 0.0);
	glBegin(GL_LINES);
	glVertex2f(-0.5f, 0.8f);
	glVertex2f(+0.7f - 1.2f * ff, 0.4f + 0.4f * ff);
	glEnd();
	glPopMatrix();
	// 33
	glPushMatrix();
	glTranslatef(0.0, 0.1f, 0.0);
	float f = ((float)current_time / SCENE_DURATION) > 0.35 ? 1.0 : ((float)current_time / SCENE_DURATION) / 0.35;
	glBegin(GL_LINES);
	glVertex2f(+0.25f, +0.3f);
	glVertex2f(+0.25f, -0.6f + 0.9f * f);
	glEnd();
	glPopMatrix();

	glPopMatrix();

	// Box 1
	glPushMatrix();
	glTranslatef(0.25f, -0.8f, 0);
	glBegin(GL_QUADS);
	{
		glColor3f(1.0, 0.0, 0.0);
		glVertex2f(-0.1f, -0.1f);
	}
	{
		glColor3f(1.0, 1.0, 0.0);
		glVertex2f(0.1f, -0.1f);
	}
	{
		glColor3f(1.0, 0.0, 1.0);
		glVertex2f(0.1f, 0.1f);
	}
	{
		glColor3f(1.0, 1.0, 1.0);
		glVertex2f(-0.1f, 0.1f);
	}
	glEnd();
	glPopMatrix();
	// Box 2
	glPushMatrix();
	glTranslatef(0.45f, -0.8f, 0);
	glBegin(GL_QUADS);
	{
		glColor3f(0.3, 0.2, 0.6);
		glVertex2f(-0.1f, -0.1f);
	}
	{
		glColor3f(1.0, 1.0, 0.3);
		glVertex2f(0.1f, -0.1f);
	}
	{
		glColor3f(1.0, 0.7, 1.0);
		glVertex2f(0.1f, 0.1f);
	}
	{
		glColor3f(0.1, 1.0, 1.0);
		glVertex2f(-0.1f, 0.1f);
	}
	glEnd();
	glPopMatrix();
	// Box 3
	glPushMatrix();
	glTranslatef(0.25f, -0.6f, 0);
	PerformBox3Transition();
	glBegin(GL_QUADS);
	{
		glColor3f(1.0, 0.0, 0.0);
		glVertex2f(-0.1f, -0.1f);
	}
	{
		glColor3f(0.3, 1.0, 0.0);
		glVertex2f(0.1f, -0.1f);
	}
	{
		glColor3f(0.1, 0.0, 1.0);
		glVertex2f(0.1f, 0.1f);
	}
	{
		glColor3f(1.0, 1.0, 1.0);
		glVertex2f(-0.1f, 0.1f);
	}
	glEnd();
	glPopMatrix();

	glutSwapBuffers();
}

void keyboardFunc(unsigned char key, int x, int y) {
	exit(0);
}

void reshapeFunc(int width, int height) {

	GLfloat aspect = (GLfloat)width / (GLfloat)(height == 0 ? 1 : height);

	glViewport(0, 0, width, height);

	glMatrixMode(GL_PROJECTION);  // To operate on the Projection matrix
	glLoadIdentity();             // Reset the projection matrix
	if (width >= height) {
		gluOrtho2D(-1.0 * aspect, 1.0 * aspect, -1.0, 1.0);
	}
	else {
		gluOrtho2D(-1.0, 1.0, -1.0 / aspect, 1.0 / aspect);
	}
}

void timerFunc(int i) {

	static int time_delta = 1;

	current_time = i;

	if (i == SCENE_DURATION || i == -1) {
		time_delta = -time_delta;
		//i = -1;
	}

	glutPostRedisplay();
	glutTimerFunc(TIME_INTERVAL_MS, timerFunc, i + time_delta);
}

int main(int argc, char **argv) {
	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_DOUBLE);
	glutCreateWindow("");
	glutInitWindowSize(SCREEN_WIDTH, SCREEN_HEIGHT);
	glutInitWindowPosition(0, 0);
	glutDisplayFunc(display);
	glutReshapeFunc(reshapeFunc);
	glutKeyboardFunc(keyboardFunc);
	glutTimerFunc(TIME_INTERVAL_MS, timerFunc, 0);
	glutFullScreen();
	glutMainLoop();
	return 0;
}