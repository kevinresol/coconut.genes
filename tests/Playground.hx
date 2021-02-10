package;

import foo.MyView;

class Playground extends coconut.ui.View {
	static function main() {
		coconut.ui.Renderer.mount(js.Browser.document.getElementById('app'), '<Playground/>');
	}
	
	function render() '
		<coconut.genes.ViewLoader renderView=${MyView -> (<MyView/>)}/>
	';
	
}