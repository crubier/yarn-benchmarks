# Yarn runtime benchmarks

## Single packages

### Process

For 3 package managers (Yarn v1, Yarn Berry, Npm) we followed the following process in separate folders:

  - `create-react-app` to create a rect app
  - `sb init` to init storybook on top of it

Then the benchmark script runs the following scripts on each of the folders:

  - `install`
  - `build-storybook`
  - `build`
  - `test --watchAll=false`

And measure their duration.

### Results

Here are three runs of each of the three package managers concatenated

```
========================================================================================
berry

install ok

real    0m4.449s, 0m5.496s, 0m5.683s
user    0m4.930s, 0m6.246s, 0m6.344s
sys     0m1.592s, 0m1.842s, 0m1.892s

build-storybook ok

real    0m20.947s, 0m23.956s, 0m21.429s
user    0m29.932s, 0m34.335s, 0m31.369s
sys     0m2.378s, 0m2.826s, 0m2.425s

build ok

real    0m7.209s, 0m7.888s, 0m6.788s
user    0m9.713s, 0m10.542s, 0m9.384s
sys     0m0.934s, 0m0.998s, 0m0.872s

test ok

real    0m4.355s, 0m4.924s, 0m4.506s
user    0m4.719s, 0m5.452s, 0m4.899s
sys     0m0.484s, 0m0.584s, 0m0.531s

========================================================================================
yarn

install ok

real    0m0.889s, 0m1.151s, 0m0.949s
user    0m1.153s, 0m1.469s, 0m1.211s
sys     0m0.101s, 0m0.131s, 0m0.109s

build-storybook ok

real    0m16.965s, 0m18.643s, 0m17.925s
user    0m13.592s, 0m16.447s, 0m15.486s
sys     0m2.847s, 0m3.476s, 0m3.342s

build ok

real    0m4.494s, 0m5.399s, 0m4.705s
user    0m4.692s, 0m5.639s, 0m4.934s
sys     0m0.816s, 0m1.014s, 0m0.869s

test ok

real    0m5.189s, 0m3.848s, 0m3.505s
user    0m3.562s, 0m2.742s, 0m2.501s
sys     0m1.015s, 0m0.775s, 0m0.680s

========================================================================================
npm

install ok

real    0m9.819s, 0m12.795s, 0m10.194s
user    0m10.806s, 0m14.097s, 0m11.240s
sys     0m1.243s, 0m1.548s, 0m1.305s

build-storybook ok

real    0m12.597s, 0m15.164s, 0m13.082s
user    0m12.086s, 0m15.716s, 0m12.964s
sys     0m2.250s, 0m2.817s, 0m2.255s

build ok

real    0m8.042s, 0m5.182s, 0m4.527s
user    0m10.169s, 0m5.779s, 0m4.909s
sys     0m1.187s, 0m1.008s, 0m0.825s

test ok

real    0m3.615s, 0m3.883s, 0m3.120s
user    0m2.587s, 0m3.026s, 0m2.344s
sys     0m0.662s, 0m0.786s, 0m0.592s

========================================================================================
```

## Workspaces monorepo

Coming soon...