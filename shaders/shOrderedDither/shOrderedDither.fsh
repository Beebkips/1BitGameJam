//
// Ordered Dithering - Index/Bayer matrix
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPixel;

const mat4 thresholdMap = mat4(	1.0,	9.0,	3.0,	11.0,
								13.0,	5.0,	15.0,	7.0,
								4.0,	12.0,	2.0,	10.0,
								16.0,	8.0,	14.0,	6.0);

void main()
{
	
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
   
    int xmod = int(mod(v_vPixel.x, 4.0));
    int ymod = int(mod(v_vPixel.y, 4.0));
   
    texColor = step(thresholdMap[ymod][xmod], 16.0*texColor);
   
   //From GameMaker manual - NTSC grayscale
    float gray = dot(texColor.rgb, vec3(0.299, 0.587, 0.114));  
    gl_FragColor = vec4(gray, gray, gray, texColor.a);
}