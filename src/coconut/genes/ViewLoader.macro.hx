package coconut.genes;

using tink.MacroApi;

class ViewLoader {
	public static macro function processRenderer(e) {
		return if(haxe.macro.Context.defined('genes')) {
			macro () -> tink.core.Promise.ofJsPromise(genes.Genes.dynamicImport($e));
		} else {
			switch e.expr {
				case EFunction(_, {expr: expr}):
					macro () -> tink.core.Promise.resolve($expr);
				case _:
					e.pos.error('Expected EFunction');
			}
		}
	}
}
