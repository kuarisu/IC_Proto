// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9361,x:33889,y:32708,varname:node_9361,prsc:2|normal-2611-RGB,emission-7133-OUT,custl-4749-OUT;n:type:ShaderForge.SFN_LightVector,id:6869,x:30895,y:34240,varname:node_6869,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9684,x:30895,y:34368,prsc:2,pt:True;n:type:ShaderForge.SFN_HalfVector,id:9471,x:30895,y:34519,varname:node_9471,prsc:2;n:type:ShaderForge.SFN_Dot,id:7782,x:31414,y:34292,cmnt:Lambert,varname:node_7782,prsc:2,dt:1|A-6869-OUT,B-9684-OUT;n:type:ShaderForge.SFN_Dot,id:3269,x:31402,y:34485,cmnt:Blinn-Phong,varname:node_3269,prsc:2,dt:1|A-9684-OUT,B-9471-OUT;n:type:ShaderForge.SFN_Multiply,id:2746,x:31830,y:34668,cmnt:Specular Contribution,varname:node_2746,prsc:2|A-5267-OUT,B-4081-OUT;n:type:ShaderForge.SFN_Slider,id:5328,x:30968,y:34720,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_5328,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:6.32133,max:11;n:type:ShaderForge.SFN_Power,id:5267,x:31613,y:34600,varname:node_5267,prsc:2|VAL-3269-OUT,EXP-6056-OUT;n:type:ShaderForge.SFN_Slider,id:4081,x:31425,y:34857,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_4081,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4,max:4;n:type:ShaderForge.SFN_Exp,id:6056,x:31374,y:34686,varname:node_6056,prsc:2,et:0|IN-5328-OUT;n:type:ShaderForge.SFN_Add,id:9889,x:32483,y:34423,varname:node_9889,prsc:2|A-7782-OUT,B-7959-OUT,C-6969-OUT;n:type:ShaderForge.SFN_Multiply,id:4749,x:33048,y:34589,varname:node_4749,prsc:2|A-2247-OUT,B-2873-RGB,C-1969-RGB;n:type:ShaderForge.SFN_AmbientLight,id:2873,x:32654,y:34645,varname:node_2873,prsc:2;n:type:ShaderForge.SFN_LightColor,id:1969,x:32720,y:34823,varname:node_1969,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:6521,x:32064,y:32252,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_6521,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7133,x:32340,y:32343,varname:node_7133,prsc:2|A-6521-RGB,B-1434-RGB;n:type:ShaderForge.SFN_AmbientLight,id:1434,x:32064,y:32432,varname:node_1434,prsc:2;n:type:ShaderForge.SFN_Posterize,id:2247,x:32862,y:34474,varname:node_2247,prsc:2|IN-7834-OUT,STPS-4178-OUT;n:type:ShaderForge.SFN_Vector1,id:4178,x:32675,y:34560,varname:node_4178,prsc:2,v1:3;n:type:ShaderForge.SFN_Add,id:7959,x:32248,y:34480,varname:node_7959,prsc:2|A-5267-OUT,B-2746-OUT;n:type:ShaderForge.SFN_Clamp01,id:7834,x:32675,y:34409,varname:node_7834,prsc:2|IN-9889-OUT;n:type:ShaderForge.SFN_Tex2d,id:2611,x:34299,y:32480,ptovrint:False,ptlb:Normalmap,ptin:_Normalmap,varname:node_2611,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2473a2d29782a8342ab4441dbf79cbc3,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Fresnel,id:6794,x:32286,y:34680,varname:node_6794,prsc:2|EXP-7926-OUT;n:type:ShaderForge.SFN_Vector1,id:7926,x:32077,y:34789,varname:node_7926,prsc:2,v1:5;n:type:ShaderForge.SFN_Posterize,id:6969,x:32469,y:34645,varname:node_6969,prsc:2|IN-6794-OUT,STPS-9057-OUT;n:type:ShaderForge.SFN_Vector1,id:9057,x:32263,y:34888,varname:node_9057,prsc:2,v1:3;n:type:ShaderForge.SFN_Lerp,id:4470,x:31471,y:33022,varname:node_4470,prsc:2|A-3784-RGB,B-5455-RGB,T-2891-OUT;n:type:ShaderForge.SFN_Dot,id:2891,x:31048,y:33058,varname:node_2891,prsc:2,dt:0|A-5317-OUT,B-5669-RGB;n:type:ShaderForge.SFN_NormalVector,id:5317,x:30697,y:32955,prsc:2,pt:False;n:type:ShaderForge.SFN_FragmentPosition,id:7708,x:31110,y:32539,varname:node_7708,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:601,x:31441,y:32656,varname:node_601,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-7708-Y;n:type:ShaderForge.SFN_Multiply,id:1904,x:31772,y:32650,varname:node_1904,prsc:2|A-601-OUT,B-6885-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6885,x:31455,y:32539,ptovrint:False,ptlb:Tiling,ptin:_Tiling,varname:node_8134,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Color,id:5669,x:30520,y:33177,ptovrint:False,ptlb:_Color3,ptin:__Color3,varname:node_3953,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.1310346,c4:1;n:type:ShaderForge.SFN_Color,id:3784,x:30697,y:32611,ptovrint:False,ptlb:_Color1,ptin:__Color1,varname:node_3782,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:5455,x:30697,y:32792,ptovrint:False,ptlb:_Color2,ptin:__Color2,varname:node_8589,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.2551723,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:6880,x:31805,y:32860,varname:node_6880,prsc:2|A-1904-OUT,B-4470-OUT;n:type:ShaderForge.SFN_Add,id:6290,x:32005,y:32940,varname:node_6290,prsc:2|A-6880-OUT,B-6880-OUT;n:type:ShaderForge.SFN_Slider,id:7476,x:31361,y:33241,ptovrint:False,ptlb:Opactiy,ptin:_Opactiy,varname:node_4926,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:8837,x:31811,y:33161,varname:node_8837,prsc:2|IN-7476-OUT;n:type:ShaderForge.SFN_RemapRange,id:6251,x:32025,y:33154,varname:node_6251,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-8837-OUT;proporder:5328-4081-6521-2611;pass:END;sub:END;*/

Shader "Shader Forge/light" {
    Properties {
        _Gloss ("Gloss", Range(0, 11)) = 6.32133
        _Specular ("Specular", Range(0, 4)) = 4
        _Texture ("Texture", 2D) = "white" {}
        _Normalmap ("Normalmap", 2D) = "bump" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float _Gloss;
            uniform float _Specular;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Normalmap; uniform float4 _Normalmap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normalmap_var = UnpackNormal(tex2D(_Normalmap,TRANSFORM_TEX(i.uv0, _Normalmap)));
                float3 normalLocal = _Normalmap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
////// Emissive:
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 emissive = (_Texture_var.rgb*UNITY_LIGHTMODEL_AMBIENT.rgb);
                float node_5267 = pow(max(0,dot(normalDirection,halfDirection)),exp(_Gloss));
                float node_9057 = 3.0;
                float node_4178 = 3.0;
                float3 finalColor = emissive + (floor(saturate((max(0,dot(lightDirection,normalDirection))+(node_5267+(node_5267*_Specular))+floor(pow(1.0-max(0,dot(normalDirection, viewDirection)),5.0) * node_9057) / (node_9057 - 1))) * node_4178) / (node_4178 - 1)*UNITY_LIGHTMODEL_AMBIENT.rgb*_LightColor0.rgb);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float _Gloss;
            uniform float _Specular;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Normalmap; uniform float4 _Normalmap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normalmap_var = UnpackNormal(tex2D(_Normalmap,TRANSFORM_TEX(i.uv0, _Normalmap)));
                float3 normalLocal = _Normalmap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float node_5267 = pow(max(0,dot(normalDirection,halfDirection)),exp(_Gloss));
                float node_9057 = 3.0;
                float node_4178 = 3.0;
                float3 finalColor = (floor(saturate((max(0,dot(lightDirection,normalDirection))+(node_5267+(node_5267*_Specular))+floor(pow(1.0-max(0,dot(normalDirection, viewDirection)),5.0) * node_9057) / (node_9057 - 1))) * node_4178) / (node_4178 - 1)*UNITY_LIGHTMODEL_AMBIENT.rgb*_LightColor0.rgb);
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
