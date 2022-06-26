varying vec2 vUv;
uniform float uTime;
uniform sampler2D uTexture1;
uniform sampler2D uTexture2;

void main()
{
    // vec4 mvPosition=modelViewMatrix*vec4(position,1.);
    // gl_PointSize=100.*(1./-mvPosition.z);
    
    vec3 newpos=position;
    vUv=position.xz+vec2(.5,.5);
    
    vec2 vUv1=uv+uTime*.05;
    
    vec4 bump1=texture2D(uTexture1,vUv1);
    
    newpos.y+=bump1.x/5.;
    
    gl_Position=projectionMatrix*modelViewMatrix*vec4(newpos,1.);
    
}