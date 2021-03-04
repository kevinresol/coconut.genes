package coconut.genes;

import coconut.ui.*;

using tink.CoreApi;

class ViewLoader extends View {
	@:attr var renderView:RenderView;
	@:attr function renderLoading():RenderResult return 'Loading';
	@:attr function renderError(e:Error):RenderResult return e.toString();
	@:loaded var result:RenderResult = renderView();

	// @formatter:off
	function render() '
		<switch ${result}>
			<case ${Loading}>
				${renderLoading()}
			<case ${Failed(e)}>
				${renderError(e)}
			<case ${Done(v)}>
				${v}
		</switch>
	';
	
	// @formatter:on
	
	public static macro function processRenderer(e);
}

@:fromHxx(transform = coconut.genes.ViewLoader.processRenderer(_))
typedef RenderView = () -> Promise<RenderResult>;
