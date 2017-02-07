// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2649,x:33787,y:32696,varname:node_2649,prsc:2|emission-5895-OUT,alpha-9927-OUT;n:type:ShaderForge.SFN_NormalVector,id:8953,x:32898,y:32710,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:2026,x:33163,y:32734,varname:node_2026,prsc:2|A-8953-OUT,B-8953-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:5895,x:33398,y:32734,varname:node_5895,prsc:2,chbt:0|M-2026-OUT,R-3195-RGB,G-1606-RGB,B-8972-RGB;n:type:ShaderForge.SFN_Color,id:3195,x:32731,y:32938,ptovrint:False,ptlb:color1,ptin:_color1,varname:node_3195,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2279412,c2:1,c3:0.5527382,c4:1;n:type:ShaderForge.SFN_Color,id:1606,x:32865,y:32972,ptovrint:False,ptlb:color2,ptin:_color2,varname:node_1606,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:8972,x:32987,y:32996,ptovrint:False,ptlb:color3,ptin:_color3,varname:node_8972,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3602941,c2:0.55,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:9363,x:32931,y:33227,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_9363,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:8112,x:33282,y:33118,varname:node_8112,prsc:2|IN-9363-OUT;n:type:ShaderForge.SFN_RemapRange,id:9927,x:33432,y:33032,varname:node_9927,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-8112-OUT;proporder:3195-1606-8972-9363;pass:END;sub:END;*/

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
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
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
                float3 normalDir : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 node_2026 = (i.normalDir*i.normalDir);
                float3 emissive = (node_2026.r*_color1.rgb + node_2026.g*_color2.rgb + node_2026.b*_color3.rgb);
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
