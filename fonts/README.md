## How to use

Add the `*.woff2` files to the rest of your files under the `fonts` directory. This directory needs to be relative to your generated css file. Import the provided font css files into your main css file.

Alternatively, use the `fontFaces` function from `Kit.js` to generate font-face rules for usage in Tailwind. See the function docs for more info.



```shell
# Files
npx copy-fission-fonts dist/fonts/

# CSS
@import "@fission-suite/kit/fonts/body/fontface.css";
@import "@fission-suite/kit/fonts/display/fontface.css";
@import "@fission-suite/kit/fonts/mono/fontface.css";

# Example
dist/stylesheet.css
dist/fonts/karla-roman-vf.woff2
dist/fonts/worksans-roman-vf.woff2
...
```
