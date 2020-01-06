# EcmaScript Features

sources:
- https://medium.com/engineered-publicis-sapient/javascript-es6-es7-es10-where-are-we-8ac044dfd964
- http://thecodebarbarian.com/whats-new-in-es2019-flat-flatmap-catch.html
- http://thecodebarbarian.com/async-generator-functions-in-javascript.html
- https://danlevy.net/javascript-promises-quiz/
- http://thecodebarbarian.com/object-assign-vs-object-spread.html


## ES2015 (ES6)

### Binary and octal literals
```js
const binary = 0b11111111
// const octal = ?
```

### Number.isNaN()
(vs window.isNaN()

---

## ES2016

## Exponent (power) operator
```js
2**3===8
```

### Array.prototype.includes()

```js
[1,2].includes(3) === false
```

---

## ES2017

### Shared Array Buffers & Atomics
(web workers, shared memory between processes and locsk to avoid race cond)

---

## ES2018

### Regex bonanza

---

## ES2019

### Array.prototype.flat() & flatMap()

### Unbound catches

### try {} catch {}

### String trim methods
```js
'   x'.trimStart() === 'x'
'y   '.trimEnd() === 'y'
```
