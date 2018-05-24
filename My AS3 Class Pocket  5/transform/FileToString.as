package transform {
	
	import flash.filesystem.File;
	import flash.filesystem.FileStream;
	import flash.filesystem.FileMode;
	
	public class FileToString {

		public function FileToString() {
			// constructor code
		}
		
		public static function read(path:File):String {
			var reader:FileStream = new FileStream();
			reader.open(path, FileMode.READ);
			var result:String = reader.readUTFBytes(path.size);
			reader.close();
			return result;
		}

	}
	
}
