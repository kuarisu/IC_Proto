// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:34220,y:32521,varname:node_4013,prsc:2|diff-6880-OUT,alpha-4349-OUT;n:type:ShaderForge.SFN_Lerp,id:2387,x:33411,y:32781,varname:node_2387,prsc:2|A-3782-RGB,B-8589-RGB,T-9353-OUT;n:type:ShaderForge.SFN_Dot,id:9353,x:32988,y:32817,varname:node_9353,prsc:2,dt:0|A-819-OUT,B-3953-RGB;n:type:ShaderForge.SFN_NormalVector,id:819,x:32637,y:32714,prsc:2,pt:False;n:type:ShaderForge.SFN_FragmentPosition,id:584,x:33139,y:32381,varname:node_584,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:8958,x:33366,y:32423,varname:node_8958,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-584-Y;n:type:ShaderForge.SFN_Multiply,id:186,x:33584,y:32423,varname:node_186,prsc:2|A-8958-OUT,B-8134-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8134,x:33395,y:32298,ptovrint:False,ptlb:Tiling,ptin:_Tiling,varname:node_8134,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Slider,id:7435,x:33078,y:33120,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_7435,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:3949,x:33411,y:32962,varname:node_3949,prsc:2|IN-7435-OUT;n:type:ShaderForge.SFN_RemapRange,id:4349,x:33602,y:32903,varname:node_4349,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3949-OUT;n:type:ShaderForge.SFN_Color,id:3953,x:32460,y:32936,ptovrint:False,ptlb:_Color3,ptin:__Color3,varname:node_3953,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.1310346,c4:1;n:type:ShaderForge.SFN_Color,id:3782,x:32637,y:32370,ptovrint:False,ptlb:_Color1,ptin:__Color1,varname:node_3782,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:8589,x:32637,y:32551,ptovrint:False,ptlb:_Color2,ptin:__Color2,varname:node_8589,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.2551723,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:9606,x:33745,y:32619,varname:node_9606,prsc:2|A-186-OUT,B-2387-OUT;n:type:ShaderForge.SFN_Add,id:6880,x:33945,y:32699,varname:node_6880,prsc:2|A-9606-OUT,B-9606-OUT;proporder:8134-7435-3953-8589-3782;pass:END;sub:END;*/

Shader "Shader Forge/Sh_SecondTest" {
    Properties {
        _Tiling ("Tiling", Float ) = 0.5
        _Opacity ("Opacity", Range(0, 1)) = 0
        __Color3 ("_Color3", Color) = (0,1,0.1310346,1)
        __Color2 ("_Color2", Color) = (0,0.2551723,1,1)
        __Color1 ("_Color1", Color) = (1,0,0,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            Stencil {
                Ref 128
            }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float _Tiling;
            uniform float _Opacity;
            uniform float4 __Color3;
            uniform float4 __Color1;
            uniform float4 __Color2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 node_9606 = ((i.posWorld.g.r*_Tiling)+lerp(__Color1.rgb,__Color2.rgb,dot(i.normalDir,__Color3.rgb)));
                float3 diffuseColor = (node_9606+node_9606);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,((1.0 - _Opacity)*2.0+-1.0));
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float _Tiling;
            uniform float _Opacity;
            uniform float4 __Color3;
            uniform float4 __Color1;
            uniform float4 __Color2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 node_9606 = ((i.posWorld.g.r*_Tiling)+lerp(__Color1.rgb,__Color2.rgb,dot(i.normalDir,__Color3.rgb)));
                float3 diffuseColor = (node_9606+node_9606);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * ((1.0 - _Opacity)*2.0+-1.0),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
