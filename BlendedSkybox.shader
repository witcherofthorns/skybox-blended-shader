Shader "Skybox/BlendedSkybox"
{
    Properties {
        _Color ("Color", Color) = (.5, .5, .5, .5)
        _Blend("Blend", Range(0.0,1.0)) = 0.5
        _Cube1("Skybox 1", Cube) = "defaulttexture" {}
        _Cube2("Skybox 2", Cube) = "defaulttexture" {}
    }

    SubShader {
        Material {
            Diffuse[_Color]
            Ambient[_Color]
        }

        Tags { "Queue" = "Background" }
        Cull Off
        Fog { Mode Off }
        Lighting Off
        Color[_Tint]

        Pass{
            SetTexture[_Cube1] {
                constantColor[_Color]
                combine texture* constant
            }
            SetTexture[_Cube2] {
                constantColor(0,0,0,[_Blend])
                combine texture lerp(constant) previous
            }
        }
    }
    FallBack "Diffuse"
}
