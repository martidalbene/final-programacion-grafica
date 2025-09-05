// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Floor"
{
	Properties
	{
		_laminate_floor_02_diff_2k("laminate_floor_02_diff_2k", 2D) = "white" {}
		_laminate_floor_02_nor_dx_2k("laminate_floor_02_nor_dx_2k", 2D) = "white" {}
		_laminate_floor_02_rough_2k("laminate_floor_02_rough_2k", 2D) = "white" {}
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

		uniform sampler2D _laminate_floor_02_nor_dx_2k;
		uniform sampler2D _laminate_floor_02_diff_2k;
		uniform sampler2D _laminate_floor_02_rough_2k;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_TexCoord11 = i.uv_texcoord * float2( 3,3 );
			o.Normal = tex2D( _laminate_floor_02_nor_dx_2k, uv_TexCoord11 ).rgb;
			o.Albedo = tex2D( _laminate_floor_02_diff_2k, uv_TexCoord11 ).rgb;
			o.Smoothness = tex2D( _laminate_floor_02_rough_2k, uv_TexCoord11 ).r;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18900
0;573;1617;418;1828.273;108.744;1.3;True;True
Node;AmplifyShaderEditor.Vector2Node;13;-1313.473,-3.444015;Inherit;False;Constant;_Vector0;Vector 0;3;0;Create;True;0;0;0;False;0;False;3,3;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.TextureCoordinatesNode;11;-1066.474,-2.543948;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1;-650.0641,-132.2242;Inherit;True;Property;_laminate_floor_02_diff_2k;laminate_floor_02_diff_2k;0;0;Create;True;0;0;0;False;0;False;-1;b8d1bb73c3724154e832334b8bb12ccd;b8d1bb73c3724154e832334b8bb12ccd;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;5;-641.612,282.4906;Inherit;True;Property;_laminate_floor_02_rough_2k;laminate_floor_02_rough_2k;2;0;Create;True;0;0;0;False;0;False;-1;4ee7ced57e01a5e4fb3d53543aabc4c8;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;2;-652.4649,69.85086;Inherit;True;Property;_laminate_floor_02_nor_dx_2k;laminate_floor_02_nor_dx_2k;1;0;Create;True;0;0;0;False;0;False;-1;b3384f58abfc9a04ebc965d40d537aae;b3384f58abfc9a04ebc965d40d537aae;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;0,0;Float;False;True;-1;2;ASEMaterialInspector;0;0;Standard;Floor;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;14;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;11;0;13;0
WireConnection;1;1;11;0
WireConnection;5;1;11;0
WireConnection;2;1;11;0
WireConnection;0;0;1;0
WireConnection;0;1;2;0
WireConnection;0;4;5;0
ASEEND*/
//CHKSM=496D4BB03473E0C2183C3D6866E59798772DACD1