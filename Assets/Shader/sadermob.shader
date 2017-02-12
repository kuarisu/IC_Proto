// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-9140-RGB,alpha-2950-OUT,voffset-1617-OUT;n:type:ShaderForge.SFN_Tex2d,id:9140,x:31721,y:32414,ptovrint:False,ptlb:node_9140,ptin:_node_9140,varname:node_9140,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a6e33d45ccefcf547883e2636aeef906,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ComponentMask,id:4635,x:31257,y:33244,varname:node_4635,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-2842-OUT;n:type:ShaderForge.SFN_Vector1,id:5070,x:31257,y:33396,varname:node_5070,prsc:2,v1:4;n:type:ShaderForge.SFN_Multiply,id:9021,x:31633,y:33247,varname:node_9021,prsc:2|A-4262-OUT,B-5070-OUT;n:type:ShaderForge.SFN_Multiply,id:1617,x:32352,y:33384,varname:node_1617,prsc:2|A-8455-OUT,B-7205-OUT,C-7921-OUT;n:type:ShaderForge.SFN_NormalVector,id:7205,x:32125,y:33619,prsc:2,pt:False;n:type:ShaderForge.SFN_Vector1,id:7921,x:32125,y:33818,varname:node_7921,prsc:2,v1:0.01;n:type:ShaderForge.SFN_ComponentMask,id:2525,x:31257,y:33474,varname:node_2525,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-2842-OUT;n:type:ShaderForge.SFN_Multiply,id:3337,x:31649,y:33431,varname:node_3337,prsc:2|A-8486-OUT,B-5070-OUT;n:type:ShaderForge.SFN_Sin,id:971,x:31839,y:33411,varname:node_971,prsc:2|IN-3337-OUT;n:type:ShaderForge.SFN_Sin,id:1988,x:31839,y:33247,varname:node_1988,prsc:2|IN-9021-OUT;n:type:ShaderForge.SFN_Multiply,id:2842,x:30858,y:33370,varname:node_2842,prsc:2|A-1841-OUT,B-6612-OUT;n:type:ShaderForge.SFN_Vector1,id:6612,x:30597,y:33508,varname:node_6612,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:8455,x:32089,y:33341,varname:node_8455,prsc:2|A-1988-OUT,B-971-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5225,x:30377,y:33328,varname:node_5225,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:9485,x:30377,y:33476,varname:node_9485,prsc:2;n:type:ShaderForge.SFN_Subtract,id:1841,x:30616,y:33363,varname:node_1841,prsc:2|A-5225-XYZ,B-9485-XYZ;n:type:ShaderForge.SFN_Tex2d,id:9409,x:31731,y:32820,ptovrint:False,ptlb:node_9409,ptin:_node_9409,varname:node_9409,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-5538-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5113,x:30845,y:32723,varname:node_5113,prsc:2,cc1:2,cc2:-1,cc3:-1,cc4:-1|IN-2842-OUT;n:type:ShaderForge.SFN_Add,id:4262,x:31452,y:33110,varname:node_4262,prsc:2|A-3671-T,B-4635-OUT;n:type:ShaderForge.SFN_Time,id:3671,x:31162,y:33103,varname:node_3671,prsc:2;n:type:ShaderForge.SFN_Add,id:8486,x:31460,y:33630,varname:node_8486,prsc:2|A-2525-OUT,B-8082-OUT;n:type:ShaderForge.SFN_Multiply,id:8082,x:31222,y:33724,varname:node_8082,prsc:2|A-3671-T,B-7487-OUT;n:type:ShaderForge.SFN_Vector1,id:7487,x:30991,y:33791,varname:node_7487,prsc:2,v1:-1;n:type:ShaderForge.SFN_Add,id:5538,x:31554,y:32820,varname:node_5538,prsc:2|A-3201-OUT,B-8282-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4425,x:30856,y:32885,varname:node_4425,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-2842-OUT;n:type:ShaderForge.SFN_Append,id:3201,x:31031,y:32829,varname:node_3201,prsc:2|A-5113-OUT,B-4425-OUT;n:type:ShaderForge.SFN_Multiply,id:8282,x:31321,y:32976,varname:node_8282,prsc:2|A-3671-T,B-2985-OUT;n:type:ShaderForge.SFN_Vector1,id:2985,x:31117,y:33020,varname:node_2985,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:2950,x:32112,y:32921,varname:node_2950,prsc:2|A-9409-R,B-1241-OUT;n:type:ShaderForge.SFN_Vector1,id:1241,x:31826,y:32979,varname:node_1241,prsc:2,v1:2;proporder:9140-9409;pass:END;sub:END;*/

Shader "Shader Forge/sadermob" {
    Properties {
        _node_9140 ("node_9140", 2D) = "white" {}
        _node_9409 ("node_9409", 2D) = "white" {}
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
            uniform sampler2D _node_9140; uniform float4 _node_9140_ST;
            uniform sampler2D _node_9409; uniform float4 _node_9409_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_3671 = _Time + _TimeEditor;
                float3 node_2842 = ((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb)*1.0);
                float node_5070 = 4.0;
                v.vertex.xyz += ((sin(((node_3671.g+node_2842.g)*node_5070))+sin(((node_2842.g+(node_3671.g*(-1.0)))*node_5070)))*v.normal*0.01);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _node_9140_var = tex2D(_node_9140,TRANSFORM_TEX(i.uv0, _node_9140));
                float3 emissive = _node_9140_var.rgb;
                float3 finalColor = emissive;
                float3 node_2842 = ((i.posWorld.rgb-objPos.rgb)*1.0);
                float4 node_3671 = _Time + _TimeEditor;
                float2 node_5538 = (float2(node_2842.b,node_2842.g)+(node_3671.g*0.1));
                float4 _node_9409_var = tex2D(_node_9409,TRANSFORM_TEX(node_5538, _node_9409));
                float node_1241 = 2.0;
                return fixed4(finalColor,(_node_9409_var.r*node_1241));
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_3671 = _Time + _TimeEditor;
                float3 node_2842 = ((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb)*1.0);
                float node_5070 = 4.0;
                v.vertex.xyz += ((sin(((node_3671.g+node_2842.g)*node_5070))+sin(((node_2842.g+(node_3671.g*(-1.0)))*node_5070)))*v.normal*0.01);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
