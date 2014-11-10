package com.furusystems.flywheel.display.gl.materials.properties.uniforms;
import flash.geom.Point;
import openfl.gl.GL;
import openfl.gl.GLUniformLocation;

/**
 * ...
 * @author Andreas Rønning
 */
class UniformI2 extends Uniform
{
	public function new(name:String, size:Int, index:GLUniformLocation, ?defaultValue:Point) 
	{
		super(name, size, index);
		if (defaultValue == null) defaultValue = new Point();
		value = defaultValue;
	}
	override public function update():Void 
	{
		GL.uniform2i(position, Std.int(value.x), Std.int(value.y));
	}
	
}