#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 2) in vec3 aTexCoord;

out vec2 Textura;

void main()
{
	gl_Position =  vec4(aPos, 1.0);
	Textura = vec2(aTexCoord.x, aTexCoord.y);
}

	
