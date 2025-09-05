// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "ConcreteFloor"
{
	Properties
	{
		_concrete_floor_worn_001_nor_dx_1k("concrete_floor_worn_001_nor_dx_1k", 2D) = "white" {}
		_concrete_floor_worn_001_ao_1k("concrete_floor_worn_001_ao_1k", 2D) = "white" {}
		_concrete_floor_worn_001_rough_1k("concrete_floor_worn_001_rough_1k", 2D) = "white" {}
		_TextureSample0("Texture Sample 0", 2D) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" }
		Cull Back
		CGPROGRAM
		#pragma target 3.0
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows 
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform sampler2D _concrete_floor_worn_001_nor_dx_1k;
		uniform float4 _concrete_floor_worn_001_nor_dx_1k_ST;
		uniform sampler2D _concrete_floor_worn_001_ao_1k;
		uniform float4 _concrete_floor_worn_001_ao_1k_ST;
		uniform sampler2D _concrete_floor_worn_001_rough_1k;
		uniform float4 _concrete_floor_worn_001_rough_1k_ST;
		uniform sampler2D _TextureSample0;
		uniform float4 _TextureSample0_ST;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_concrete_floor_worn_001_nor_dx_1k = i.uv_texcoord * _concrete_floor_worn_001_nor_dx_1k_ST.xy + _concrete_floor_worn_001_nor_dx_1k_ST.zw;
			o.Normal = UnpackNormal( tex2D( _concrete_floor_worn_001_nor_dx_1k, uv_concrete_floor_worn_001_nor_dx_1k ) );
			float2 uv_concrete_floor_worn_001_ao_1k = i.uv_texcoord * _concrete_floor_worn_001_ao_1k_ST.xy + _concrete_floor_worn_001_ao_1k_ST.zw;
			o.Albedo = tex2D( _concrete_floor_worn_001_ao_1k, uv_concrete_floor_worn_001_ao_1k ).rgb;
			float2 uv_concrete_floor_worn_001_rough_1k = i.uv_texcoord * _concrete_floor_worn_001_rough_1k_ST.xy + _concrete_floor_worn_001_rough_1k_ST.zw;
			o.Smoothness = tex2D( _concrete_floor_worn_001_rough_1k, uv_concrete_floor_worn_001_rough_1k ).r;
			float2 uv_TextureSample0 = i.uv_texcoord * _TextureSample0_ST.xy + _TextureSample0_ST.zw;
			o.Occlusion = tex2D( _TextureSample0, uv_TextureSample0 ).r;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18900
0;902;1617;89;1250.483;-156.5996;1.3;True;True
Node;AmplifyShaderEditor.SamplerNode;9;-734.7907,-168.3806;Inherit;True;Property;_concrete_floor_worn_001_ao_1k;concrete_floor_worn_001_ao_1k;1;0;Create;True;0;0;0;False;0;False;-1;0b4907a5f0b6d474682fd8abb436f6bc;0b4907a5f0b6d474682fd8abb436f6bc;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;4;-721.9374,39.34927;Inherit;True;Property;_concrete_floor_worn_001_nor_dx_1k;concrete_floor_worn_001_nor_dx_1k;0;0;Create;True;0;0;0;False;0;False;-1;52aca976aa810ff4d90b1349e93987ac;52aca976aa810ff4d90b1349e93987ac;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;16;-721.914,400.6503;Inherit;True;Property;_TextureSample0;Texture Sample 0;3;0;Create;True;0;0;0;False;0;False;-1;0b4907a5f0b6d474682fd8abb436f6bc;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;10;-720.9885,218.2563;Inherit;True;Property;_concrete_floor_worn_001_rough_1k;concrete_floor_worn_001_rough_1k;2;0;Create;True;0;0;0;False;0;False;-1;edd02f66db0335848a0c45afd03b91b4;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;0,0;Float;False;True;-1;2;ASEMaterialInspector;0;0;Standard;ConcreteFloor;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;14;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;0;0;9;0
WireConnection;0;1;4;0
WireConnection;0;4;10;0
WireConnection;0;5;16;0
ASEEND*/
//CHKSM=2E643C61EC2E7EB39DD6B8E86486E23375B66E79