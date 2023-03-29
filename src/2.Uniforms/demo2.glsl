#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution; // 画布尺寸（宽， 高）
uniform vec2 u_mouse; // 鼠标位置 （在屏幕哪个像素）
uniform float u_time; // 时间（加载后的秒数）

void main(){
    vec2 st = gl_FragCoord.xy/u_resolution;
    vec2 sm = u_mouse.xy/u_resolution;
    gl_FragColor = vec4(st.x, sm.y, sin(u_time*2.0), 1.0);
}
