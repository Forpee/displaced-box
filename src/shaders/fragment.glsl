uniform float uTime;
uniform sampler2D uTexture1;
uniform sampler2D uTexture2;
varying float vHeight;

varying vec2 vUv;

void main()
{
    
    vec4 white=vec4(1.,1.,1.,1.);
    vec4 red=vec4(1.,.16,.32,1.);
    vec4 blue=vec4(.16,0.,0.,1.);
    
    vec4 finalColor=mix(blue,red,smoothstep(0.,.7,vHeight));
    
    finalColor=mix(finalColor,white,smoothstep(.7,.9,vHeight));
    
    vec4 color1=texture2D(uTexture1,vUv);
    gl_FragColor=vec4(vHeight,0.,0.,1.);
    gl_FragColor=finalColor;
}