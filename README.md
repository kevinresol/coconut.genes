# Coconut + Genes dynamic import

Dynamically load a coconut view and allow split bundles.

- Coconut: https://github.com/MVCoconut/coconut.ui
- Genes dynamic import: https://github.com/benmerckx/genes#dynamic-imports


## Example 

```haxe
function render() '
	<coconut.genes.ViewLoader renderView=${MyView -> (<MyView/>)}/>
';
```
