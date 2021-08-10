# Unity Skybox Blended Shader ![](https://img.shields.io/badge/license-GPL-blue)
That is easy shader that allows you to smoothly transition from one sky texture to another sky texture<br>
This is my first shader that I wrote myself, these shaders may contain stupid mistakes - sorry, I'm a beginner <br>

<img src="https://github.com/witcherofthorns/skybox-blended-shader/blob/main/skyboxshader-gif.gif" width=60%> <br>

<br>If you don't have a Cubemap texture, then you can use <a href="https://github.com/witcherofthorns/skybox-blended-shader/blob/main/BlendedSky.shader"><b>BlendedSky.shader</b></a>, this is an analogue of the original shader intended for individual walls of Cubemap


## How to use
 1. Create a material in Unity folder<br>
 2. Select a shader for this material from "Skybox" shader collection<br>
 
To control the values of the shader-material, use the call to:
```csharp
.SetFloat("_Blend", value);
```
