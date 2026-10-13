#extension GL_OES_EGL_image_external : require

// TODO T47920998 remove once enhance filter experiment is launched.

precision mediump float;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;

uniform float uSaturation;
uniform float uContrast;
uniform float uBrightness;

float luminance(vec3 color) {
	return dot(vec3(0.299, 0.587, 0.114), color);
}

vec4 filter(vec4 color) {
  if (vTextureCoord.y > 0.5) {
      return color;
  }

	// enhance saturation
	float lum = luminance(color.xyz);
	color.xyz = clamp(color.xyz + uSaturation * (color.xyz - lum), 0.0, 1.0);

	// enhance brightness
	color.xyz = clamp(color.xyz * (1.0 + uBrightness), 0.0, 1.0);

	// enhance contrast by blending towards the s-curve
	vec3 scurve = smoothstep(0.0, 1.0, color.xyz);
	color.xyz = mix(color.xyz, scurve, uContrast);

	return color;
}

void main() {
  vec4 color = texture2D(sTexture, vTextureCoord);
	gl_FragColor = filter(color);
}
