#include "ShaderConstants.fxh"

struct PS_Input
{
	float4 position : SV_Position;
};

struct PS_Output
{
	float4 color : SV_Target;

#ifdef FORCE_DEPTH_ZERO
	float depth : SV_Depth;
#endif

};

ROOT_SIGNATURE
void main(in PS_Input PSInput, out PS_Output PSOutput)
{

    float3 color = float3(2.0, 2.0, 2.0);
    float4 alpha = float4(color, 0.25);

	PSOutput.color = alpha;

#ifdef FORCE_DEPTH_ZERO
	PSOutput.depth = 0.0;
#endif
}