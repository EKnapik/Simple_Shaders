void mainImage( out vec4 fragColor, in vec2 fragCoord ) 
	vec2 uv = fragCoord.xy / iResolution.xy;
    uv = uv * 5.0; // scale for replication
    
    vec3 col = vec3(0.8, 0.1, 0.1);
    if(mod(uv.y, 2.0) < 1.0){
    	uv.x = uv.x + 0.5;
    }
    uv = uv - floor(uv);
    if(uv.x > 0.95 || uv.y < 0.05) {
        col = vec3(0.9);
    }
	fragColor = vec4(col, 1.0);
}

// States:
// bottom cement
// side cement
// brick
