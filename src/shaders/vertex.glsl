varying vec2 vUv;
varying float vHeight;
uniform float uTime;
uniform sampler2D uTexture1;
uniform sampler2D uTexture2;

void main()
{
    // vec4 mvPosition=modelViewMatrix*vec4(position,1.);
    // gl_PointSize=100.*(1./-mvPosition.z);
    
    vec3 newpos=position;
    vUv=uv;
    vec2 uv1=position.xz+vec2(.5,.5);
    
    vec2 vUv1=uv1+uTime*.05;
    vec2 vUv2=uv1-uTime*.05;
    
    vUv1*=.2;
    vUv2*=.5;
    
    float top=step(0.,position.y);
    
    vec4 bump1=texture2D(uTexture1,vUv1);
    vec4 bump2=texture2D(uTexture2,vUv2);
    
    float height=(bump1.x+bump2.x)/2.;
    vHeight=height;
    newpos.y+=top*height/2.5;
    
    gl_Position=projectionMatrix*modelViewMatrix*vec4(newpos,1.);
    
}