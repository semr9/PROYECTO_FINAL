#version 330 core
layout (location = 0) in vec3 aPosicion;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 cordTex;

out vec3 ourColor;
out vec2 Textura;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
	gl_Position =  model *vec4(aPosicion, 1.0);
	ourColor = aColor;
	Textura = vec2(cordTex.x, cordTex.y);
}
