//Package names are usually single words, all lowercase.
//Avoid using multiple words if possible. 
//If a package name has to contain multiple words, do not join using underscores or camelCase.
package packagename
{
	//Class names are UpperCamelCase.
	public class CodeConvention
	{
		
		//static variables are UPPER_CASE by default, with words separated by underscores.
		//they are always access-modifier static var/const VARIABLE_NAME:DataType
		public static const TAG_NAME:String;
		
		//order of variables: public static > protected static > private static > public > protected > private
		//const variables are located above non-const variables.
		private static const INTERNAL_TAG:String;
		private static var CURRENT_TAG:String;
		
		//member variables are prefixed with a brief, 3 letter description of their type and an undercase after it
		//after the undercase, lowerCamelCase is used for the variable
		//the name should ideally convey how the variable is used
		/* A (limited) list of types are shown below: (sorted by primitives, then alphabetical)
		 * Array: arr_
		 * Boolean: b_
		 * int: i_
		 * Object: obj_
		 * Number: num_
		 * String: str_
		 * uint: u_ where it is required (e.g. for color information) 
		 * 	- or i_ if it is fundamentally the same as an int, but is used only for compatibility (e.g. to prevent unnecessary typecasting)
		 * Vector: vec_ - vector type information is usually omitted from the prefix.
		 * 
		 * BitmapData: bmd_
		 * Bitmap: bmp_
		 * ByteArray: bytes_
		 * DisplayObject: dsp_ (common), or do_ (less frequent)
		 * NativeWindow: nwnd_
		 * Stage: stg_ - or the wildcard.
		 * Loader: ld_
		 * LoaderContext: ldc_
		 * TextField: tf_
		 * TextFieldFormat: tff_
		 * Sprite: spr_
		 * Shape: shp_
		 * 
		 * Class/Wildcard prefix: cl_
		 * The wildcard prefix is used wherever a quick, short descriptive prefix cannot be thought of on the spot. 
		 * In other words, if you're struggling to think of a short sequence of letters which can describe the type of a variable, then use this.
		 * Remember: If in doubt, USE THE WILDCARD! The wildcard can be used for the above types as well (while it is frowned upon for primitive types, it's still OK)
		 * Such as Stage, Loader, or LoaderContext, for example.
		 */
		private var i_numFrames:int;
		private var i_counter:int;
		private var str_url:String;
		private var cl_wildCard:DataType;
		private var cl_otherWildCard:RidiculouslyLongDataType
		//Class parameter names follow the same rules as local variables
		public function CodeConvention(parameterName:DataType) {
			cl_wildCard = parameterName;
		}
		
		public function multilineBlock():void
		{
			//multi-line blocks need the brackets
			//to be on the line immediately following the function declaration
		}
		
		//single-line blocks need a bracket on the same line as the function
		public function countToTen():void {
			for (var i:int = 0; i < 10; ++i) { }	//empty blocks can either follow single-line-block rules, or have the opening and closing braces on the same line, separated by a space
		}
	}

}
