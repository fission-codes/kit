## How to use

Add the `*.woff2` files to the rest of your files under the `fonts` directory. This directory needs to be relative to your generated css file. Import the provided font css files into your main css file.



```shell
# Files
cp node_modules/fission-kit/fonts/**/*.woff2 build/fonts/

# CSS
@import "fission-kit/fonts/body/fontface.css";
@import "fission-kit/fonts/display/fontface.css";
@import "fission-kit/fonts/mono/fontface.css";

# Example
dist/stylesheet.css
dist/fonts/karla-roman-vf.woff2
dist/fonts/worksans-roman-vf.woff2
...
```
