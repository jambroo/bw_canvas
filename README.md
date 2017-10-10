# bw_canvas

## Intro

This is a simple test script to demonstrate a simple canvas fill operation. It takes the original ascii canvas as stdin and takes the x
and y coordinates of the fill operation as arguments.

Limitations include only being able to fill a cell that is previously unfilled.

## Examples

Fill outline
```
cat canvas0 | ruby draw.rb 9 3
```
Ignore as selected cell alread filled
```
cat canvas0 | ruby draw.rb 9 5
```
Fill outside of alread-filled object
```
cat canvas1 | ruby draw.rb 0 0
```
Fill inside unclosed object
```
cat canvas2 | ruby draw.rb 2 2
```
Fill inside object
```
cat canvas3 | ruby draw.rb 2 2
```
