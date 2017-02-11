// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33740,y:32698,varname:node_3138,prsc:2|emission-8901-OUT,alpha-3286-OUT,clip-8593-OUT,olwid-1624-OUT,olcol-8901-OUT,voffset-5610-OUT,disp-4257-OUT,tess-5925-OUT;n:type:ShaderForge.SFN_Color,id:6409,x:32352,y:32397,ptovrint:False,ptlb:node_6409,ptin:_node_6409,varname:node_6409,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1712803,c2:0.4553155,c3:0.5294118,c4:1;n:type:ShaderForge.SFN_Tex2d,id:8142,x:32089,y:32933,ptovrint:False,ptlb:node_8142,ptin:_node_8142,varname:node_8142,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2793099bad844d842b54d08203752ea2,ntxv:0,isnm:False|UVIN-3410-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:5879,x:32307,y:32950,varname:node_5879,prsc:2|IN-8142-R;n:type:ShaderForge.SFN_TexCoord,id:9872,x:30694,y:32734,varname:node_9872,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:3410,x:31919,y:32877,varname:node_3410,prsc:2,spu:1,spv:0|UVIN-1403-OUT,DIST-3095-OUT;n:type:ShaderForge.SFN_Time,id:5002,x:31701,y:33069,varname:node_5002,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3095,x:31893,y:33095,varname:node_3095,prsc:2|A-5002-T,B-9811-OUT;n:type:ShaderForge.SFN_Slider,id:9811,x:31463,y:33306,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_9811,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1425552,max:1;n:type:ShaderForge.SFN_Sin,id:3873,x:31529,y:32825,varname:node_3873,prsc:2|IN-1431-OUT;n:type:ShaderForge.SFN_Multiply,id:1431,x:31340,y:32825,varname:node_1431,prsc:2|A-580-OUT,B-9872-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:580,x:31070,y:32651,varname:node_580,prsc:2|IN-9872-UVOUT;n:type:ShaderForge.SFN_RemapRange,id:1403,x:31704,y:32841,varname:node_1403,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3873-OUT;n:type:ShaderForge.SFN_NormalVector,id:1912,x:31972,y:33256,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:4752,x:32919,y:33274,varname:node_4752,prsc:2|A-5879-OUT,B-1912-OUT,C-1928-OUT;n:type:ShaderForge.SFN_Vector1,id:1928,x:32386,y:33473,varname:node_1928,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Vector1,id:1624,x:33307,y:33021,varname:node_1624,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Vector1,id:5925,x:33307,y:33088,varname:node_5925,prsc:2,v1:20;n:type:ShaderForge.SFN_Add,id:2104,x:32499,y:32663,varname:node_2104,prsc:2|A-6409-RGB,B-5879-OUT,C-8547-OUT;n:type:ShaderForge.SFN_TexCoord,id:8622,x:30907,y:32366,varname:node_8622,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:5686,x:31382,y:32385,varname:node_5686,prsc:2,spu:0.2,spv:1|UVIN-8622-UVOUT,DIST-473-OUT;n:type:ShaderForge.SFN_OneMinus,id:8547,x:31835,y:32391,varname:node_8547,prsc:2|IN-2023-RGB;n:type:ShaderForge.SFN_Tex2d,id:2023,x:31585,y:32391,ptovrint:False,ptlb:node_2023,ptin:_node_2023,varname:node_2023,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4aba2bbda997edc43af9669c0bc43ec4,ntxv:0,isnm:False|UVIN-5686-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:8773,x:32129,y:32626,varname:node_8773,prsc:2|IN-2023-R;n:type:ShaderForge.SFN_Add,id:8593,x:32626,y:32829,varname:node_8593,prsc:2|A-8773-OUT,B-5879-OUT;n:type:ShaderForge.SFN_Time,id:8121,x:31157,y:32038,varname:node_8121,prsc:2;n:type:ShaderForge.SFN_Multiply,id:473,x:31349,y:32064,varname:node_473,prsc:2|A-8121-T,B-9167-OUT;n:type:ShaderForge.SFN_Slider,id:9167,x:30919,y:32275,ptovrint:False,ptlb:Speed2,ptin:_Speed2,varname:_node_9811_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.09878577,max:0.1;n:type:ShaderForge.SFN_Multiply,id:3286,x:32921,y:32827,varname:node_3286,prsc:2|A-8593-OUT,B-6989-OUT;n:type:ShaderForge.SFN_Vector1,id:6989,x:32678,y:33019,varname:node_6989,prsc:2,v1:0.9;n:type:ShaderForge.SFN_Add,id:4257,x:33151,y:33217,varname:node_4257,prsc:2|A-6521-OUT,B-4752-OUT;n:type:ShaderForge.SFN_Multiply,id:6521,x:32899,y:33128,varname:node_6521,prsc:2|A-8773-OUT,B-9730-OUT,C-5879-OUT,D-1912-OUT;n:type:ShaderForge.SFN_Slider,id:6391,x:31875,y:33658,ptovrint:False,ptlb:Taille,ptin:_Taille,varname:node_6391,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:5610,x:33219,y:33373,varname:node_5610,prsc:2|A-1912-OUT,B-1129-OUT,C-2233-OUT;n:type:ShaderForge.SFN_RemapRange,id:9730,x:32359,y:33617,varname:node_9730,prsc:2,frmn:0,frmx:1,tomn:0.2,tomx:1|IN-6391-OUT;n:type:ShaderForge.SFN_RemapRange,id:1129,x:32359,y:33783,varname:node_1129,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.8|IN-6391-OUT;n:type:ShaderForge.SFN_Posterize,id:2808,x:32883,y:33695,varname:node_2808,prsc:2|IN-8773-OUT,STPS-3328-OUT;n:type:ShaderForge.SFN_Vector1,id:3328,x:32714,y:33840,varname:node_3328,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:2233,x:33192,y:33596,varname:node_2233,prsc:2|A-2808-OUT,B-5156-OUT;n:type:ShaderForge.SFN_Vector1,id:5156,x:33045,y:33818,varname:node_5156,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:8901,x:33004,y:32656,varname:node_8901,prsc:2|A-6409-RGB,B-2104-OUT;proporder:6409-8142-9811-2023-9167-6391;pass:END;sub:END;*/

Shader "Shader Forge/blast" {
    Properties {
        _node_6409 ("node_6409", Color) = (0.1712803,0.4553155,0.5294118,1)
        _node_8142 ("node_8142", 2D) = "white" {}
        _Speed ("Speed", Range(0, 1)) = 0.1425552
        _node_2023 ("node_2023", 2D) = "white" {}
        _Speed2 ("Speed2", Range(0, 0.1)) = 0.09878577
        _Taille ("Taille", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform float4 _node_6409;
            uniform sampler2D _node_8142; uniform float4 _node_8142_ST;
            uniform float _Speed;
            uniform sampler2D _node_2023; uniform float4 _node_2023_ST;
            uniform float _Speed2;
            uniform float _Taille;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_8121 = _Time + _TimeEditor;
                float2 node_5686 = (o.uv0+(node_8121.g*_Speed2)*float2(0.2,1));
                float4 _node_2023_var = tex2Dlod(_node_2023,float4(TRANSFORM_TEX(node_5686, _node_2023),0.0,0));
                float node_8773 = (1.0 - _node_2023_var.r);
                float node_3328 = 2.0;
                v.vertex.xyz += (v.normal*(_Taille*0.8+0.0)*(floor(node_8773 * node_3328) / (node_3328 - 1)*0.5));
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*0.1,1) );
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_8121 = _Time + _TimeEditor;
                    float2 node_5686 = (v.texcoord0+(node_8121.g*_Speed2)*float2(0.2,1));
                    float4 _node_2023_var = tex2Dlod(_node_2023,float4(TRANSFORM_TEX(node_5686, _node_2023),0.0,0));
                    float node_8773 = (1.0 - _node_2023_var.r);
                    float4 node_5002 = _Time + _TimeEditor;
                    float2 node_3410 = ((sin(((1.0 - v.texcoord0)*v.texcoord0))*2.0+-1.0)+(node_5002.g*_Speed)*float2(1,0));
                    float4 _node_8142_var = tex2Dlod(_node_8142,float4(TRANSFORM_TEX(node_3410, _node_8142),0.0,0));
                    float node_5879 = (1.0 - _node_8142_var.r);
                    v.vertex.xyz += ((node_8773*(_Taille*0.8+0.2)*node_5879*v.normal)+(node_5879*v.normal*0.01));
                }
                float Tessellation(TessVertex v){
                    return 20.0;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 node_8121 = _Time + _TimeEditor;
                float2 node_5686 = (i.uv0+(node_8121.g*_Speed2)*float2(0.2,1));
                float4 _node_2023_var = tex2D(_node_2023,TRANSFORM_TEX(node_5686, _node_2023));
                float node_8773 = (1.0 - _node_2023_var.r);
                float4 node_5002 = _Time + _TimeEditor;
                float2 node_3410 = ((sin(((1.0 - i.uv0)*i.uv0))*2.0+-1.0)+(node_5002.g*_Speed)*float2(1,0));
                float4 _node_8142_var = tex2D(_node_8142,TRANSFORM_TEX(node_3410, _node_8142));
                float node_5879 = (1.0 - _node_8142_var.r);
                float node_8593 = (node_8773+node_5879);
                clip(node_8593 - 0.5);
                float3 node_8901 = (_node_6409.rgb*(_node_6409.rgb+node_5879+(1.0 - _node_2023_var.rgb)));
                return fixed4(node_8901,0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform float4 _node_6409;
            uniform sampler2D _node_8142; uniform float4 _node_8142_ST;
            uniform float _Speed;
            uniform sampler2D _node_2023; uniform float4 _node_2023_ST;
            uniform float _Speed2;
            uniform float _Taille;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_8121 = _Time + _TimeEditor;
                float2 node_5686 = (o.uv0+(node_8121.g*_Speed2)*float2(0.2,1));
                float4 _node_2023_var = tex2Dlod(_node_2023,float4(TRANSFORM_TEX(node_5686, _node_2023),0.0,0));
                float node_8773 = (1.0 - _node_2023_var.r);
                float node_3328 = 2.0;
                v.vertex.xyz += (v.normal*(_Taille*0.8+0.0)*(floor(node_8773 * node_3328) / (node_3328 - 1)*0.5));
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_8121 = _Time + _TimeEditor;
                    float2 node_5686 = (v.texcoord0+(node_8121.g*_Speed2)*float2(0.2,1));
                    float4 _node_2023_var = tex2Dlod(_node_2023,float4(TRANSFORM_TEX(node_5686, _node_2023),0.0,0));
                    float node_8773 = (1.0 - _node_2023_var.r);
                    float4 node_5002 = _Time + _TimeEditor;
                    float2 node_3410 = ((sin(((1.0 - v.texcoord0)*v.texcoord0))*2.0+-1.0)+(node_5002.g*_Speed)*float2(1,0));
                    float4 _node_8142_var = tex2Dlod(_node_8142,float4(TRANSFORM_TEX(node_3410, _node_8142),0.0,0));
                    float node_5879 = (1.0 - _node_8142_var.r);
                    v.vertex.xyz += ((node_8773*(_Taille*0.8+0.2)*node_5879*v.normal)+(node_5879*v.normal*0.01));
                }
                float Tessellation(TessVertex v){
                    return 20.0;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 node_8121 = _Time + _TimeEditor;
                float2 node_5686 = (i.uv0+(node_8121.g*_Speed2)*float2(0.2,1));
                float4 _node_2023_var = tex2D(_node_2023,TRANSFORM_TEX(node_5686, _node_2023));
                float node_8773 = (1.0 - _node_2023_var.r);
                float4 node_5002 = _Time + _TimeEditor;
                float2 node_3410 = ((sin(((1.0 - i.uv0)*i.uv0))*2.0+-1.0)+(node_5002.g*_Speed)*float2(1,0));
                float4 _node_8142_var = tex2D(_node_8142,TRANSFORM_TEX(node_3410, _node_8142));
                float node_5879 = (1.0 - _node_8142_var.r);
                float node_8593 = (node_8773+node_5879);
                clip(node_8593 - 0.5);
////// Lighting:
////// Emissive:
                float3 node_8901 = (_node_6409.rgb*(_node_6409.rgb+node_5879+(1.0 - _node_2023_var.rgb)));
                float3 emissive = node_8901;
                float3 finalColor = emissive;
                return fixed4(finalColor,(node_8593*0.9));
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform sampler2D _node_8142; uniform float4 _node_8142_ST;
            uniform float _Speed;
            uniform sampler2D _node_2023; uniform float4 _node_2023_ST;
            uniform float _Speed2;
            uniform float _Taille;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_8121 = _Time + _TimeEditor;
                float2 node_5686 = (o.uv0+(node_8121.g*_Speed2)*float2(0.2,1));
                float4 _node_2023_var = tex2Dlod(_node_2023,float4(TRANSFORM_TEX(node_5686, _node_2023),0.0,0));
                float node_8773 = (1.0 - _node_2023_var.r);
                float node_3328 = 2.0;
                v.vertex.xyz += (v.normal*(_Taille*0.8+0.0)*(floor(node_8773 * node_3328) / (node_3328 - 1)*0.5));
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_8121 = _Time + _TimeEditor;
                    float2 node_5686 = (v.texcoord0+(node_8121.g*_Speed2)*float2(0.2,1));
                    float4 _node_2023_var = tex2Dlod(_node_2023,float4(TRANSFORM_TEX(node_5686, _node_2023),0.0,0));
                    float node_8773 = (1.0 - _node_2023_var.r);
                    float4 node_5002 = _Time + _TimeEditor;
                    float2 node_3410 = ((sin(((1.0 - v.texcoord0)*v.texcoord0))*2.0+-1.0)+(node_5002.g*_Speed)*float2(1,0));
                    float4 _node_8142_var = tex2Dlod(_node_8142,float4(TRANSFORM_TEX(node_3410, _node_8142),0.0,0));
                    float node_5879 = (1.0 - _node_8142_var.r);
                    v.vertex.xyz += ((node_8773*(_Taille*0.8+0.2)*node_5879*v.normal)+(node_5879*v.normal*0.01));
                }
                float Tessellation(TessVertex v){
                    return 20.0;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 node_8121 = _Time + _TimeEditor;
                float2 node_5686 = (i.uv0+(node_8121.g*_Speed2)*float2(0.2,1));
                float4 _node_2023_var = tex2D(_node_2023,TRANSFORM_TEX(node_5686, _node_2023));
                float node_8773 = (1.0 - _node_2023_var.r);
                float4 node_5002 = _Time + _TimeEditor;
                float2 node_3410 = ((sin(((1.0 - i.uv0)*i.uv0))*2.0+-1.0)+(node_5002.g*_Speed)*float2(1,0));
                float4 _node_8142_var = tex2D(_node_8142,TRANSFORM_TEX(node_3410, _node_8142));
                float node_5879 = (1.0 - _node_8142_var.r);
                float node_8593 = (node_8773+node_5879);
                clip(node_8593 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
