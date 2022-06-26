uniform float uTime;
uniform sampler2D uTexture1;
uniform sampler2D uTexture2;
varying float vHeight;

varying vec2 vUv;

void main()
{
    vec4 color1=texture2D(uTexture1,vUv);
    gl_FragColor=vec4(vHeight,0.,0.,1.);
}