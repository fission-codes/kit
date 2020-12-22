import json from '@rollup/plugin-json';

const pkg = require('./package.json')
const input = 'src/Kit.js';

const plugins = [
  json()  
];

const configUMD = {
    input,
    output: {
        name: 'fission-kit',
        file: pkg.browser,
        format: 'umd',
        
    },
    plugins
}

const configCjsAndEs = {
    input,
    output: [
        {
            file: pkg.main,
            format: 'cjs'
            
        },
        {
            file: pkg.module,
            format: 'es'
        }
    ],
    plugins
}

export default [configUMD, configCjsAndEs]
