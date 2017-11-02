struct Vout
{
	float4 position : SV_POSITION;
	float4 color : COLOR;

};

Vout VShader(float4 position : POSITION, float4 color : COLOR)
{
	Vout output;

	output.position = position;
	output.color = color;

	return output;
}

float4 PShader(float4 position : SV_POSITION, float4 color : COLOR) : SV_TARGET
{
	return color;
}