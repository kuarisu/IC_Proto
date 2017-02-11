// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:0,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9361,x:35089,y:32663,varname:node_9361,prsc:2|normal-2611-RGB,emission-45-OUT,custl-4749-OUT,alpha-3395-OUT;n:type:ShaderForge.SFN_LightVector,id:6869,x:32296,y:33391,varname:node_6869,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9684,x:32296,y:33519,prsc:2,pt:True;n:type:ShaderForge.SFN_HalfVector,id:9471,x:32296,y:33670,varname:node_9471,prsc:2;n:type:ShaderForge.SFN_Dot,id:7782,x:32815,y:33443,cmnt:Lambert,varname:node_7782,prsc:2,dt:1|A-6869-OUT,B-9684-OUT;n:type:ShaderForge.SFN_Dot,id:3269,x:32803,y:33636,cmnt:Blinn-Phong,varname:node_3269,prsc:2,dt:1|A-9684-OUT,B-9471-OUT;n:type:ShaderForge.SFN_Multiply,id:2746,x:33231,y:33819,cmnt:Specular Contribution,varname:node_2746,prsc:2|A-5267-OUT,B-4081-OUT;n:type:ShaderForge.SFN_Slider,id:5328,x:32369,y:33871,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_5328,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:6.32133,max:11;n:type:ShaderForge.SFN_Power,id:5267,x:33014,y:33751,varname:node_5267,prsc:2|VAL-3269-OUT,EXP-6056-OUT;n:type:ShaderForge.SFN_Slider,id:4081,x:32826,y:34008,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_4081,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4,max:4;n:type:ShaderForge.SFN_Exp,id:6056,x:32775,y:33837,varname:node_6056,prsc:2,et:0|IN-5328-OUT;n:type:ShaderForge.SFN_Add,id:9889,x:33884,y:33574,varname:node_9889,prsc:2|A-7782-OUT,B-7959-OUT,C-6969-OUT;n:type:ShaderForge.SFN_Multiply,id:4749,x:34449,y:33740,varname:node_4749,prsc:2|A-2247-OUT,B-2873-RGB,C-1969-RGB;n:type:ShaderForge.SFN_AmbientLight,id:2873,x:34055,y:33796,varname:node_2873,prsc:2;n:type:ShaderForge.SFN_LightColor,id:1969,x:34121,y:33974,varname:node_1969,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:6521,x:32013,y:32541,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_6521,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Posterize,id:2247,x:34263,y:33625,varname:node_2247,prsc:2|IN-7834-OUT,STPS-4178-OUT;n:type:ShaderForge.SFN_Vector1,id:4178,x:34076,y:33711,varname:node_4178,prsc:2,v1:3;n:type:ShaderForge.SFN_Add,id:7959,x:33649,y:33631,varname:node_7959,prsc:2|A-5267-OUT,B-2746-OUT;n:type:ShaderForge.SFN_Clamp01,id:7834,x:34076,y:33560,varname:node_7834,prsc:2|IN-9889-OUT;n:type:ShaderForge.SFN_Tex2d,id:2611,x:33426,y:32618,ptovrint:False,ptlb:Normalmap,ptin:_Normalmap,varname:node_2611,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2473a2d29782a8342ab4441dbf79cbc3,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Fresnel,id:6794,x:33687,y:33831,varname:node_6794,prsc:2|EXP-7926-OUT;n:type:ShaderForge.SFN_Vector1,id:7926,x:33478,y:33940,varname:node_7926,prsc:2,v1:5;n:type:ShaderForge.SFN_Posterize,id:6969,x:33870,y:33796,varname:node_6969,prsc:2|IN-6794-OUT,STPS-9057-OUT;n:type:ShaderForge.SFN_Vector1,id:9057,x:33664,y:34039,varname:node_9057,prsc:2,v1:3;n:type:ShaderForge.SFN_Lerp,id:4470,x:31821,y:32869,varname:node_4470,prsc:2|A-3784-RGB,B-5455-RGB,T-2891-OUT;n:type:ShaderForge.SFN_Dot,id:2891,x:31635,y:33193,varname:node_2891,prsc:2,dt:0|A-5317-OUT,B-5669-RGB;n:type:ShaderForge.SFN_NormalVector,id:5317,x:31398,y:33353,prsc:2,pt:False;n:type:ShaderForge.SFN_FragmentPosition,id:7708,x:31455,y:32696,varname:node_7708,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:601,x:31643,y:32741,varname:node_601,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-7708-Y;n:type:ShaderForge.SFN_Multiply,id:1904,x:31821,y:32741,varname:node_1904,prsc:2|A-601-OUT,B-6885-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6885,x:31455,y:32539,ptovrint:False,ptlb:tiling,ptin:_tiling,varname:node_8134,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Color,id:5669,x:31307,y:33212,ptovrint:False,ptlb:_Color3,ptin:__Color3,varname:node_3953,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.1310346,c4:1;n:type:ShaderForge.SFN_Color,id:3784,x:31462,y:33036,ptovrint:False,ptlb:color_bottom,ptin:_color_bottom,varname:node_3782,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:5455,x:31462,y:32863,ptovrint:False,ptlb:color_top,ptin:_color_top,varname:node_8589,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.2551723,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:7476,x:32013,y:32940,ptovrint:False,ptlb:opacity_color,ptin:_opacity_color,varname:node_4926,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_ChannelBlend,id:8068,x:32485,y:33038,varname:node_8068,prsc:2,chbt:0|M-1451-OUT,R-3236-RGB,G-1676-RGB,B-9746-RGB;n:type:ShaderForge.SFN_Color,id:3236,x:31398,y:33562,ptovrint:False,ptlb:color_Y,ptin:_color_Y,varname:node_3195,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2279412,c2:1,c3:0.5527382,c4:1;n:type:ShaderForge.SFN_Color,id:1676,x:31398,y:33730,ptovrint:False,ptlb:color_X,ptin:_color_X,varname:node_1606,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:9746,x:31398,y:33897,ptovrint:False,ptlb:color_Z,ptin:_color_Z,varname:node_8972,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3602941,c2:0.55,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:2199,x:32391,y:33214,ptovrint:False,ptlb:opacity_shadow,ptin:_opacity_shadow,varname:node_8494,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:1451,x:31635,y:33363,varname:node_1451,prsc:2|A-5317-OUT,B-5317-OUT;n:type:ShaderForge.SFN_Lerp,id:8157,x:32475,y:32743,varname:node_8157,prsc:2|A-6521-RGB,B-2195-OUT,T-7476-OUT;n:type:ShaderForge.SFN_Add,id:2195,x:32013,y:32741,varname:node_2195,prsc:2|A-1904-OUT,B-4470-OUT;n:type:ShaderForge.SFN_Lerp,id:3341,x:32788,y:33018,varname:node_3341,prsc:2|A-8157-OUT,B-8068-OUT,T-2199-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2187,x:31264,y:32099,varname:node_2187,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-1412-UVOUT;n:type:ShaderForge.SFN_Multiply,id:5984,x:31465,y:32099,varname:node_5984,prsc:2|A-2187-OUT,B-2471-OUT;n:type:ShaderForge.SFN_Sin,id:6229,x:31654,y:32099,varname:node_6229,prsc:2|IN-5984-OUT;n:type:ShaderForge.SFN_Panner,id:1412,x:32145,y:31677,varname:node_1412,prsc:2,spu:0,spv:-1|UVIN-5587-OUT,DIST-7330-OUT;n:type:ShaderForge.SFN_Time,id:4231,x:31764,y:31854,varname:node_4231,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7330,x:31976,y:31864,varname:node_7330,prsc:2|A-4231-TSL,B-5255-OUT;n:type:ShaderForge.SFN_Vector1,id:5255,x:31764,y:31993,varname:node_5255,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:5587,x:31976,y:31677,varname:node_5587,prsc:2|A-1290-UVOUT,B-9073-OUT;n:type:ShaderForge.SFN_Vector1,id:9073,x:31807,y:31739,varname:node_9073,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Rotator,id:1290,x:31687,y:31678,varname:node_1290,prsc:2|UVIN-3067-UVOUT,ANG-3285-OUT;n:type:ShaderForge.SFN_Divide,id:3285,x:31472,y:31920,varname:node_3285,prsc:2|A-3807-OUT,B-7801-OUT;n:type:ShaderForge.SFN_Vector1,id:7801,x:31254,y:32029,varname:node_7801,prsc:2,v1:180;n:type:ShaderForge.SFN_ValueProperty,id:6616,x:31069,y:31825,ptovrint:False,ptlb:trame_angle,ptin:_trame_angle,varname:node_168,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:25;n:type:ShaderForge.SFN_Multiply,id:3807,x:31273,y:31846,varname:node_3807,prsc:2|A-6616-OUT,B-5512-OUT;n:type:ShaderForge.SFN_Pi,id:5512,x:31115,y:31928,varname:node_5512,prsc:2;n:type:ShaderForge.SFN_ScreenPos,id:3067,x:31472,y:31668,varname:node_3067,prsc:2,sctp:0;n:type:ShaderForge.SFN_Clamp01,id:7188,x:31850,y:32098,varname:node_7188,prsc:2|IN-6229-OUT;n:type:ShaderForge.SFN_Vector1,id:7649,x:32048,y:32236,varname:node_7649,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Add,id:423,x:32278,y:32098,varname:node_423,prsc:2|A-5163-OUT,B-7649-OUT;n:type:ShaderForge.SFN_Multiply,id:5163,x:32048,y:32098,varname:node_5163,prsc:2|A-7188-OUT,B-9516-OUT;n:type:ShaderForge.SFN_Vector1,id:9516,x:31850,y:32223,varname:node_9516,prsc:2,v1:0.4;n:type:ShaderForge.SFN_ValueProperty,id:2471,x:31264,y:32275,ptovrint:False,ptlb:trame_intensifies,ptin:_trame_intensifies,varname:node_7567,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:200;n:type:ShaderForge.SFN_Clamp01,id:5443,x:32448,y:32098,varname:node_5443,prsc:2|IN-423-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3395,x:33269,y:33021,ptovrint:False,ptlb:switch_transparant,ptin:_switch_transparant,varname:_node_654_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-8315-OUT,B-5443-OUT;n:type:ShaderForge.SFN_Vector1,id:8315,x:33039,y:33228,varname:node_8315,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:905,x:33509,y:33152,ptovrint:False,ptlb:transition_fade,ptin:_transition_fade,varname:node_905,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:45,x:34403,y:33078,varname:node_45,prsc:2|A-6521-R,B-3341-OUT,T-7887-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:458,x:33355,y:33279,varname:node_458,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:9867,x:33593,y:33279,varname:node_9867,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-458-Y;n:type:ShaderForge.SFN_Slider,id:6054,x:33509,y:33472,ptovrint:False,ptlb:transition_degrade,ptin:_transition_degrade,varname:node_6054,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:4119,x:34019,y:33286,varname:node_4119,prsc:2|A-2166-OUT,B-7199-OUT;n:type:ShaderForge.SFN_RemapRange,id:7199,x:33861,y:33398,varname:node_7199,prsc:2,frmn:0,frmx:1,tomn:-2,tomx:2|IN-6054-OUT;n:type:ShaderForge.SFN_Add,id:7887,x:34225,y:33193,varname:node_7887,prsc:2|A-905-OUT,B-7130-OUT;n:type:ShaderForge.SFN_Clamp01,id:7130,x:34232,y:33355,varname:node_7130,prsc:2|IN-4119-OUT;n:type:ShaderForge.SFN_OneMinus,id:2166,x:33792,y:33279,varname:node_2166,prsc:2|IN-9867-OUT;proporder:5328-4081-6521-2611-6885-5669-3784-5455-7476-3236-1676-9746-2199-2471-6616-3395-905-6054;pass:END;sub:END;*/

Shader "Shader Forge/light" {
    Properties {
        _Gloss ("Gloss", Range(0, 11)) = 6.32133
        _Specular ("Specular", Range(0, 4)) = 4
        _Texture ("Texture", 2D) = "white" {}
        _Normalmap ("Normalmap", 2D) = "bump" {}
        _tiling ("tiling", Float ) = 0.5
        __Color3 ("_Color3", Color) = (0,1,0.1310346,1)
        _color_bottom ("color_bottom", Color) = (1,0,0,1)
        _color_top ("color_top", Color) = (0,0.2551723,1,1)
        _opacity_color ("opacity_color", Range(0, 1)) = 1
        _color_Y ("color_Y", Color) = (0.2279412,1,0.5527382,1)
        _color_X ("color_X", Color) = (1,0.5,0.5,1)
        _color_Z ("color_Z", Color) = (0.3602941,0.55,1,1)
        _opacity_shadow ("opacity_shadow", Range(0, 1)) = 1
        _trame_intensifies ("trame_intensifies", Float ) = 200
        _trame_angle ("trame_angle", Float ) = 25
        [MaterialToggle] _switch_transparant ("switch_transparant", Float ) = 1
        _transition_fade ("transition_fade", Range(0, 1)) = 0
        _transition_degrade ("transition_degrade", Range(0, 1)) = 0
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float _Gloss;
            uniform float _Specular;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Normalmap; uniform float4 _Normalmap_ST;
            uniform float _tiling;
            uniform float4 __Color3;
            uniform float4 _color_bottom;
            uniform float4 _color_top;
            uniform float _opacity_color;
            uniform float4 _color_Y;
            uniform float4 _color_X;
            uniform float4 _color_Z;
            uniform float _opacity_shadow;
            uniform float _trame_angle;
            uniform float _trame_intensifies;
            uniform fixed _switch_transparant;
            uniform float _transition_fade;
            uniform float _transition_degrade;
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
                float4 screenPos : TEXCOORD5;
                UNITY_FOG_COORDS(6)
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
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
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
                float3 node_1451 = (i.normalDir*i.normalDir);
                float3 node_3341 = lerp(lerp(_Texture_var.rgb,((i.posWorld.g.r*_tiling)+lerp(_color_bottom.rgb,_color_top.rgb,dot(i.normalDir,__Color3.rgb))),_opacity_color),(node_1451.r*_color_Y.rgb + node_1451.g*_color_X.rgb + node_1451.b*_color_Z.rgb),_opacity_shadow);
                float node_9867 = i.posWorld.g.r;
                float3 emissive = lerp(float3(_Texture_var.r,_Texture_var.r,_Texture_var.r),node_3341,(_transition_fade+saturate(((1.0 - node_9867)+(_transition_degrade*4.0+-2.0)))));
                float node_5267 = pow(max(0,dot(normalDirection,halfDirection)),exp(_Gloss));
                float node_9057 = 3.0;
                float node_4178 = 3.0;
                float3 finalColor = emissive + (floor(saturate((max(0,dot(lightDirection,normalDirection))+(node_5267+(node_5267*_Specular))+floor(pow(1.0-max(0,dot(normalDirection, viewDirection)),5.0) * node_9057) / (node_9057 - 1))) * node_4178) / (node_4178 - 1)*UNITY_LIGHTMODEL_AMBIENT.rgb*_LightColor0.rgb);
                float4 node_4231 = _Time + _TimeEditor;
                float node_1290_ang = ((_trame_angle*3.141592654)/180.0);
                float node_1290_spd = 1.0;
                float node_1290_cos = cos(node_1290_spd*node_1290_ang);
                float node_1290_sin = sin(node_1290_spd*node_1290_ang);
                float2 node_1290_piv = float2(0.5,0.5);
                float2 node_1290 = (mul(i.screenPos.rg-node_1290_piv,float2x2( node_1290_cos, -node_1290_sin, node_1290_sin, node_1290_cos))+node_1290_piv);
                fixed4 finalRGBA = fixed4(finalColor,lerp( 1.0, saturate(((saturate(sin((((node_1290*0.5)+(node_4231.r*0.5)*float2(0,-1)).g*_trame_intensifies)))*0.4)+0.1)), _switch_transparant ));
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
            uniform float4 _TimeEditor;
            uniform float _Gloss;
            uniform float _Specular;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Normalmap; uniform float4 _Normalmap_ST;
            uniform float _tiling;
            uniform float4 __Color3;
            uniform float4 _color_bottom;
            uniform float4 _color_top;
            uniform float _opacity_color;
            uniform float4 _color_Y;
            uniform float4 _color_X;
            uniform float4 _color_Z;
            uniform float _opacity_shadow;
            uniform float _trame_angle;
            uniform float _trame_intensifies;
            uniform fixed _switch_transparant;
            uniform float _transition_fade;
            uniform float _transition_degrade;
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
                float4 screenPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
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
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
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
                float4 node_4231 = _Time + _TimeEditor;
                float node_1290_ang = ((_trame_angle*3.141592654)/180.0);
                float node_1290_spd = 1.0;
                float node_1290_cos = cos(node_1290_spd*node_1290_ang);
                float node_1290_sin = sin(node_1290_spd*node_1290_ang);
                float2 node_1290_piv = float2(0.5,0.5);
                float2 node_1290 = (mul(i.screenPos.rg-node_1290_piv,float2x2( node_1290_cos, -node_1290_sin, node_1290_sin, node_1290_cos))+node_1290_piv);
                fixed4 finalRGBA = fixed4(finalColor * lerp( 1.0, saturate(((saturate(sin((((node_1290*0.5)+(node_4231.r*0.5)*float2(0,-1)).g*_trame_intensifies)))*0.4)+0.1)), _switch_transparant ),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
