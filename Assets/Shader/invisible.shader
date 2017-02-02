// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-5017-RGB,alpha-4475-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8175,x:30770,y:32805,varname:node_8175,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-7392-UVOUT;n:type:ShaderForge.SFN_Multiply,id:3071,x:30971,y:32805,varname:node_3071,prsc:2|A-8175-OUT,B-8193-OUT;n:type:ShaderForge.SFN_Sin,id:8157,x:31160,y:32805,varname:node_8157,prsc:2|IN-3071-OUT;n:type:ShaderForge.SFN_Panner,id:7392,x:30553,y:32805,varname:node_7392,prsc:2,spu:0,spv:-1|UVIN-2969-OUT,DIST-8459-OUT;n:type:ShaderForge.SFN_Time,id:2832,x:30172,y:32982,varname:node_2832,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8459,x:30384,y:32992,varname:node_8459,prsc:2|A-2832-TSL,B-4296-OUT;n:type:ShaderForge.SFN_Vector1,id:4296,x:30172,y:33121,varname:node_4296,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:8193,x:30971,y:32968,varname:node_8193,prsc:2,v1:200;n:type:ShaderForge.SFN_Multiply,id:2969,x:30384,y:32805,varname:node_2969,prsc:2|A-9506-UVOUT,B-5654-OUT;n:type:ShaderForge.SFN_Vector1,id:5654,x:30215,y:32867,varname:node_5654,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Rotator,id:9506,x:30095,y:32806,varname:node_9506,prsc:2|UVIN-4518-UVOUT,ANG-9835-OUT;n:type:ShaderForge.SFN_Divide,id:9835,x:29880,y:33048,varname:node_9835,prsc:2|A-1285-OUT,B-918-OUT;n:type:ShaderForge.SFN_Vector1,id:918,x:29662,y:33157,varname:node_918,prsc:2,v1:180;n:type:ShaderForge.SFN_ValueProperty,id:168,x:29490,y:32950,ptovrint:False,ptlb:Angle,ptin:_Angle,varname:node_168,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:25;n:type:ShaderForge.SFN_Multiply,id:1285,x:29681,y:32974,varname:node_1285,prsc:2|A-168-OUT,B-8742-OUT;n:type:ShaderForge.SFN_Pi,id:8742,x:29523,y:33056,varname:node_8742,prsc:2;n:type:ShaderForge.SFN_ScreenPos,id:4518,x:29615,y:32788,varname:node_4518,prsc:2,sctp:0;n:type:ShaderForge.SFN_Clamp01,id:4339,x:31356,y:32804,varname:node_4339,prsc:2|IN-8157-OUT;n:type:ShaderForge.SFN_Vector1,id:6729,x:31828,y:33043,varname:node_6729,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Add,id:4475,x:31895,y:32807,varname:node_4475,prsc:2|A-2889-OUT,B-6729-OUT,C-2930-OUT;n:type:ShaderForge.SFN_Multiply,id:2889,x:31554,y:32804,varname:node_2889,prsc:2|A-4339-OUT,B-8337-OUT;n:type:ShaderForge.SFN_Vector1,id:8337,x:31297,y:33011,varname:node_8337,prsc:2,v1:0.4;n:type:ShaderForge.SFN_ToggleProperty,id:2930,x:31387,y:32590,ptovrint:False,ptlb:SwitchOpacity,ptin:_SwitchOpacity,varname:node_2930,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Tex2d,id:5017,x:32076,y:32546,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_5017,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;proporder:168-2930-5017;pass:END;sub:END;*/

Shader "Shader Forge/invisible" {
    Properties {
        _Angle ("Angle", Float ) = 25
        [MaterialToggle] _SwitchOpacity ("SwitchOpacity", Float ) = 0
        _Texture ("Texture", 2D) = "white" {}
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
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _Angle;
            uniform fixed _SwitchOpacity;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 screenPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
////// Lighting:
////// Emissive:
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 emissive = _Texture_var.rgb;
                float3 finalColor = emissive;
                float4 node_2832 = _Time + _TimeEditor;
                float node_9506_ang = ((_Angle*3.141592654)/180.0);
                float node_9506_spd = 1.0;
                float node_9506_cos = cos(node_9506_spd*node_9506_ang);
                float node_9506_sin = sin(node_9506_spd*node_9506_ang);
                float2 node_9506_piv = float2(0.5,0.5);
                float2 node_9506 = (mul(i.screenPos.rg-node_9506_piv,float2x2( node_9506_cos, -node_9506_sin, node_9506_sin, node_9506_cos))+node_9506_piv);
                return fixed4(finalColor,((saturate(sin((((node_9506*0.5)+(node_2832.r*0.5)*float2(0,-1)).g*200.0)))*0.4)+0.1+_SwitchOpacity));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
