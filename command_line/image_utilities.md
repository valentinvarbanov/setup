# Image Utilities

## macOS
The commands use `sips` utility

### Rotating image

```bash
sips -r DEGREE FILE
sips --rotate DEGREE FILE

sips -r 90 image.jpg
```

### Resize with preserving aspect ratio

```bash
# width
sips --resampleWidth WIDTH FILE

sips --resampleWidth 500 image.jpg

# height
sips --resampleHeight HEIGHT FILE

sips --resampleHeight 500 image.jpg
```

### Resize without preserving aspect ratio

```bash
sips -z HEIGHT WIDTH FILE
sips --resampleHeightWidth HEIGHT WIDTH FILE

sips -z 500 500 image.jpg
```
