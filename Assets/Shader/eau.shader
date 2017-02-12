// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|normal-593-OUT,emission-9122-OUT,alpha-4268-OUT,refract-2694-OUT,voffset-3749-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:9557,x:30520,y:33550,varname:node_9557,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:8707,x:31216,y:33517,varname:node_8707,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9557-X;n:type:ShaderForge.SFN_ComponentMask,id:7166,x:31216,y:33652,varname:node_7166,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9557-Y;n:type:ShaderForge.SFN_ComponentMask,id:4751,x:31230,y:33790,varname:node_4751,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9557-Z;n:type:ShaderForge.SFN_Vector1,id:8848,x:31219,y:33977,varname:node_8848,prsc:2,v1:5;n:type:ShaderForge.SFN_Time,id:5084,x:31204,y:34035,varname:node_5084,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8829,x:31711,y:33813,varname:node_8829,prsc:2|A-6889-OUT,B-8848-OUT;n:type:ShaderForge.SFN_Multiply,id:8370,x:31706,y:33533,varname:node_8370,prsc:2|A-2716-OUT,B-8848-OUT;n:type:ShaderForge.SFN_Sin,id:5575,x:31918,y:33533,varname:node_5575,prsc:2|IN-8370-OUT;n:type:ShaderForge.SFN_Color,id:2015,x:31737,y:32492,ptovrint:False,ptlb:node_2015,ptin:_node_2015,varname:node_2015,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1544118,c2:0.6850914,c3:1,c4:1;n:type:ShaderForge.SFN_NormalVector,id:593,x:30985,y:32717,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:3749,x:32272,y:33500,varname:node_3749,prsc:2|A-593-OUT,B-5575-OUT,C-3483-OUT,D-7073-OUT,E-270-OUT;n:type:ShaderForge.SFN_Add,id:2716,x:31457,y:33517,varname:node_2716,prsc:2|A-8707-OUT,B-5084-TSL;n:type:ShaderForge.SFN_Sin,id:3483,x:31916,y:33813,varname:node_3483,prsc:2|IN-8829-OUT;n:type:ShaderForge.SFN_Vector1,id:7073,x:32170,y:33699,varname:node_7073,prsc:2,v1:0.15;n:type:ShaderForge.SFN_Tau,id:3339,x:31509,y:33975,varname:node_3339,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5713,x:31706,y:33666,varname:node_5713,prsc:2|A-7166-OUT,B-8848-OUT;n:type:ShaderForge.SFN_Sin,id:270,x:31928,y:33666,varname:node_270,prsc:2|IN-5713-OUT;n:type:ShaderForge.SFN_Add,id:6889,x:31492,y:33786,varname:node_6889,prsc:2|A-4751-OUT,B-5084-TSL;n:type:ShaderForge.SFN_Vector1,id:4268,x:32269,y:33054,varname:node_4268,prsc:2,v1:1;n:type:ShaderForge.SFN_ScreenPos,id:8244,x:31651,y:33306,varname:node_8244,prsc:2,sctp:0;n:type:ShaderForge.SFN_Multiply,id:2694,x:32003,y:33319,varname:node_2694,prsc:2|A-8244-UVOUT,B-598-OUT;n:type:ShaderForge.SFN_Vector1,id:598,x:31791,y:33436,varname:node_598,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Fresnel,id:6446,x:31219,y:33107,varname:node_6446,prsc:2|NRM-593-OUT;n:type:ShaderForge.SFN_Vector1,id:3636,x:31297,y:33230,varname:node_3636,prsc:2,v1:2;n:type:ShaderForge.SFN_Power,id:3135,x:31490,y:33123,varname:node_3135,prsc:2|VAL-6446-OUT,EXP-3636-OUT;n:type:ShaderForge.SFN_Multiply,id:6339,x:31750,y:33163,varname:node_6339,prsc:2|A-1697-RGB,B-3135-OUT;n:type:ShaderForge.SFN_Color,id:1697,x:31490,y:32971,ptovrint:False,ptlb:node_1697,ptin:_node_1697,varname:node_1697,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6323529,c2:0.923935,c3:1,c4:1;n:type:ShaderForge.SFN_LightVector,id:7337,x:30985,y:32556,varname:node_7337,prsc:2;n:type:ShaderForge.SFN_Dot,id:3846,x:31266,y:32583,varname:node_3846,prsc:2,dt:0|A-7337-OUT,B-593-OUT;n:type:ShaderForge.SFN_Dot,id:7204,x:31270,y:32865,varname:node_7204,prsc:2,dt:0|A-593-OUT,B-8677-OUT;n:type:ShaderForge.SFN_Multiply,id:7338,x:31568,y:32672,varname:node_7338,prsc:2|A-3846-OUT,B-7204-OUT;n:type:ShaderForge.SFN_Posterize,id:9122,x:32447,y:32714,varname:node_9122,prsc:2|IN-1885-OUT,STPS-8430-OUT;n:type:ShaderForge.SFN_Vector1,id:8430,x:31631,y:32853,varname:node_8430,prsc:2,v1:3;n:type:ShaderForge.SFN_Add,id:1885,x:32237,y:32851,varname:node_1885,prsc:2|A-5366-OUT,B-9949-OUT;n:type:ShaderForge.SFN_Clamp01,id:9949,x:31988,y:33134,varname:node_9949,prsc:2|IN-6339-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:8677,x:31024,y:32937,varname:node_8677,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:705,x:31826,y:32701,varname:node_705,prsc:2|IN-7338-OUT;n:type:ShaderForge.SFN_Add,id:5366,x:32001,y:32617,varname:node_5366,prsc:2|A-2015-RGB,B-705-OUT;proporder:2015-1697;pass:END;sub:END;*/

Shader "Shader Forge/eau" {
    Properties {
        _node_2015 ("node_2015", Color) = (0.1544118,0.6850914,1,1)
        _node_1697 ("node_1697", Color) = (0.6323529,0.923935,1,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform float4 _node_2015;
            uniform float4 _node_1697;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 screenPos : TEXCOORD4;
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_5084 = _Time + _TimeEditor;
                float node_8848 = 5.0;
                v.vertex.xyz += (v.normal*sin(((mul(unity_ObjectToWorld, v.vertex).r.r+node_5084.r)*node_8848))*sin(((mul(unity_ObjectToWorld, v.vertex).b.r+node_5084.r)*node_8848))*0.15*sin((mul(unity_ObjectToWorld, v.vertex).g.r*node_8848)));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalLocal = i.normalDir;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (i.screenPos.rg*0.2);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float node_8430 = 3.0;
                float3 emissive = floor(((_node_2015.rgb+saturate((dot(lightDirection,i.normalDir)*dot(i.normalDir,viewReflectDirection))))+saturate((_node_1697.rgb*pow((1.0-max(0,dot(i.normalDir, viewDirection))),2.0)))) * node_8430) / (node_8430 - 1);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,1.0),1);
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform float4 _node_2015;
            uniform float4 _node_1697;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 screenPos : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_5084 = _Time + _TimeEditor;
                float node_8848 = 5.0;
                v.vertex.xyz += (v.normal*sin(((mul(unity_ObjectToWorld, v.vertex).r.r+node_5084.r)*node_8848))*sin(((mul(unity_ObjectToWorld, v.vertex).b.r+node_5084.r)*node_8848))*0.15*sin((mul(unity_ObjectToWorld, v.vertex).g.r*node_8848)));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalLocal = i.normalDir;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (i.screenPos.rg*0.2);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
                fixed4 finalRGBA = fixed4(finalColor * 1.0,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
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
                float4 node_5084 = _Time + _TimeEditor;
                float node_8848 = 5.0;
                v.vertex.xyz += (v.normal*sin(((mul(unity_ObjectToWorld, v.vertex).r.r+node_5084.r)*node_8848))*sin(((mul(unity_ObjectToWorld, v.vertex).b.r+node_5084.r)*node_8848))*0.15*sin((mul(unity_ObjectToWorld, v.vertex).g.r*node_8848)));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _node_2015;
            uniform float4 _node_1697;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_5084 = _Time + _TimeEditor;
                float node_8848 = 5.0;
                v.vertex.xyz += (v.normal*sin(((mul(unity_ObjectToWorld, v.vertex).r.r+node_5084.r)*node_8848))*sin(((mul(unity_ObjectToWorld, v.vertex).b.r+node_5084.r)*node_8848))*0.15*sin((mul(unity_ObjectToWorld, v.vertex).g.r*node_8848)));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float node_8430 = 3.0;
                o.Emission = floor(((_node_2015.rgb+saturate((dot(lightDirection,i.normalDir)*dot(i.normalDir,viewReflectDirection))))+saturate((_node_1697.rgb*pow((1.0-max(0,dot(i.normalDir, viewDirection))),2.0)))) * node_8430) / (node_8430 - 1);
                
                float3 diffColor = float3(0,0,0);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
