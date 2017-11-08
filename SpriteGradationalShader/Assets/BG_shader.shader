// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Gradational shader
Shader "Custom/BG_shader" {
	Properties
	{
		_MainTex( "2D Texture", 2D ) = "white" {}
	}

	SubShader
	{
		Pass{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			// Enable Graphics debug on VS2015
			#pragma enable_d3d11_debug_symbols

			struct VertexInput {
				float4 pos:	POSITION;		// 3D pos
				float2 uv:	TEXCOORD0;		// tex uv
			};

			struct VertexOutput {
				float4 v:	SV_POSITION;	// 2D pos
				float2 uv:	TEXCOORD0;		// tex uv
			};

			// Vertex shader
			VertexOutput vert( VertexInput input )
			{
				VertexOutput output;
				output.v = UnityObjectToClipPos(input.pos);
				output.uv = input.uv;

				return output;
			}

			// Pixel shader
			fixed4 frag( VertexOutput output ) : SV_Target
			{
				float2 tex = output.uv;
				// from Yellow to White
				return fixed4( 1.0, 1.0, 1.0 - tex.y, 1.0);
			}

			ENDCG
		}
	}
}
