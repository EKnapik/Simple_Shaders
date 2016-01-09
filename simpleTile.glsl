void mainImage( out vec4 fragColor, in vec2 fragCoord ) {
	vec2 uv = fragCoord.xy / iResolution.xy;
    
    float col = mod(floor(6.0*uv.x) + floor(6.0*uv.y), 2.0);
	fragColor = vec4(vec3(col), 1.0);
}
