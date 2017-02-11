// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:6,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:2,qpre:3,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2649,x:33813,y:32695,varname:node_2649,prsc:2|emission-5895-OUT,alpha-3423-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:5895,x:33398,y:32734,varname:node_5895,prsc:2,chbt:0|M-169-OUT,R-3195-RGB,G-1606-RGB,B-8972-RGB;n:type:ShaderForge.SFN_Color,id:3195,x:32822,y:32895,ptovrint:False,ptlb:color1,ptin:_color1,varname:node_3195,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2279412,c2:1,c3:0.5527382,c4:1;n:type:ShaderForge.SFN_Color,id:1606,x:32967,y:32982,ptovrint:False,ptlb:color2,ptin:_color2,varname:node_1606,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:8972,x:33152,y:32982,ptovrint:False,ptlb:color3,ptin:_color3,varname:node_8972,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3602941,c2:0.55,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:8494,x:32913,y:33236,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_8494,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:3423,x:33500,y:33209,varname:node_3423,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4793-OUT;n:type:ShaderForge.SFN_OneMinus,id:4793,x:33281,y:33226,varname:node_4793,prsc:2|IN-8494-OUT;n:type:ShaderForge.SFN_Multiply,id:169,x:33106,y:32675,varname:node_169,prsc:2|A-3884-OUT,B-3884-OUT;n:type:ShaderForge.SFN_NormalVector,id:3884,x:32778,y:32591,prsc:2,pt:False;proporder:3195-1606-8972-8494;pass:END;sub:END;*/

Shader "Custom/Sh_Test" {
    Properties {
        _color1 ("color1", Color) = (0.2279412,1,0.5527382,1)
        _color2 ("color2", Color) = (1,0.5,0.5,1)
        _color3 ("color3", Color) = (0.3602941,0.55,1,1)
        _Opacity ("Opacity", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent+2"
            "RenderType"="Opaque"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _color1;
            uniform float4 _color2;
            uniform float4 _color3;
            uniform float _Opacity;
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
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float3 node_169 = (i.normalDir*i.normalDir);
                float3 emissive = (node_169.r*_color1.rgb + node_169.g*_color2.rgb + node_169.b*_color3.rgb);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,((1.0 - _Opacity)*2.0+-1.0));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
