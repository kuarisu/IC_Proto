// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33126,y:32612,varname:node_3138,prsc:2|emission-3055-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:9037,x:30022,y:32966,varname:node_9037,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:2354,x:30840,y:33202,varname:node_2354,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9037-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:684,x:30862,y:32948,varname:node_684,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-9037-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:3505,x:30840,y:33374,varname:node_3505,prsc:2,cc1:2,cc2:-1,cc3:-1,cc4:-1|IN-9037-XYZ;n:type:ShaderForge.SFN_Slider,id:2642,x:30471,y:32781,ptovrint:False,ptlb:node_2642,ptin:_node_2642,varname:node_2642,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1245117,max:1;n:type:ShaderForge.SFN_Add,id:1994,x:31667,y:32910,varname:node_1994,prsc:2|A-2886-OUT,B-2876-OUT;n:type:ShaderForge.SFN_Add,id:8593,x:31667,y:33115,varname:node_8593,prsc:2|A-1745-OUT,B-2876-OUT;n:type:ShaderForge.SFN_RemapRange,id:2876,x:30970,y:32689,varname:node_2876,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2642-OUT;n:type:ShaderForge.SFN_Multiply,id:6169,x:31905,y:32984,varname:node_6169,prsc:2|A-1994-OUT,B-8593-OUT;n:type:ShaderForge.SFN_Posterize,id:9412,x:32438,y:33025,varname:node_9412,prsc:2|IN-3470-OUT,STPS-147-OUT;n:type:ShaderForge.SFN_Vector1,id:147,x:32450,y:33287,varname:node_147,prsc:2,v1:5;n:type:ShaderForge.SFN_Multiply,id:1745,x:31304,y:33274,varname:node_1745,prsc:2|A-3670-OUT,B-8992-OUT;n:type:ShaderForge.SFN_Clamp01,id:3470,x:32100,y:33000,varname:node_3470,prsc:2|IN-6169-OUT;n:type:ShaderForge.SFN_Append,id:6738,x:31084,y:33645,varname:node_6738,prsc:2|A-2354-OUT,B-3505-OUT;n:type:ShaderForge.SFN_Length,id:2886,x:31169,y:32967,varname:node_2886,prsc:2|IN-684-OUT;n:type:ShaderForge.SFN_Length,id:3670,x:31140,y:33176,varname:node_3670,prsc:2|IN-2354-OUT;n:type:ShaderForge.SFN_Length,id:8992,x:31123,y:33361,varname:node_8992,prsc:2|IN-3505-OUT;n:type:ShaderForge.SFN_Lerp,id:3055,x:32702,y:32790,varname:node_3055,prsc:2|A-4210-OUT,B-9412-OUT,T-2876-OUT;n:type:ShaderForge.SFN_Vector1,id:4210,x:32310,y:32385,varname:node_4210,prsc:2,v1:0;proporder:2642;pass:END;sub:END;*/

Shader "Shader Forge/transition" {
    Properties {
        _node_2642 ("node_2642", Range(0, 1)) = 0.1245117
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _node_2642;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float node_2876 = (_node_2642*2.0+-1.0);
                float node_2354 = i.posWorld.rgb.r;
                float node_3505 = i.posWorld.rgb.b;
                float node_147 = 5.0;
                float node_3055 = lerp(0.0,floor(saturate(((length(i.posWorld.rgb.g)+node_2876)*((length(node_2354)*length(node_3505))+node_2876))) * node_147) / (node_147 - 1),node_2876);
                float3 emissive = float3(node_3055,node_3055,node_3055);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
