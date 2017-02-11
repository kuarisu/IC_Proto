// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9361,x:33259,y:33003,varname:node_9361,prsc:2|emission-2414-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5292,x:31728,y:33093,varname:node_5292,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-6564-OUT;n:type:ShaderForge.SFN_Add,id:9055,x:32047,y:33268,varname:node_9055,prsc:2|A-5292-OUT,B-1099-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:3000,x:31123,y:32836,varname:node_3000,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:2346,x:32250,y:33303,varname:node_2346,prsc:2|IN-9055-OUT;n:type:ShaderForge.SFN_Abs,id:4838,x:32702,y:33324,varname:node_4838,prsc:2|IN-5104-OUT;n:type:ShaderForge.SFN_RemapRange,id:5104,x:32473,y:33380,varname:node_5104,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2346-OUT;n:type:ShaderForge.SFN_OneMinus,id:2414,x:32876,y:33297,varname:node_2414,prsc:2|IN-4838-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:7026,x:31165,y:33052,varname:node_7026,prsc:2;n:type:ShaderForge.SFN_Subtract,id:6564,x:31349,y:32944,varname:node_6564,prsc:2|A-3000-XYZ,B-7026-XYZ;n:type:ShaderForge.SFN_Slider,id:2742,x:31326,y:33403,ptovrint:False,ptlb:node_2742,ptin:_node_2742,varname:node_2742,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_ConstantLerp,id:1099,x:31660,y:33413,varname:node_1099,prsc:2,a:-6,b:6|IN-2742-OUT;proporder:2742;pass:END;sub:END;*/

Shader "Shader Forge/relique" {
    Properties {
        _node_2742 ("node_2742", Range(0, 1)) = 1
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
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _node_2742;
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
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float node_2414 = (1.0 - abs((saturate(((i.posWorld.rgb-objPos.rgb).r+lerp(-6,6,_node_2742)))*2.0+-1.0)));
                float3 emissive = float3(node_2414,node_2414,node_2414);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
