# FileManager
A Swift class for reading and writing to the Documents directory for an app

## How to use

### Initiate it
```
var File = FileManager()
```
This calls it under the variable name File
### Read the contents of the directory
```
File.dirContents()
```
This will return the contents as an Array
### Make a directory
```
File.makeDir("Files")
```
This will make a directory called `Files` (Returns a Bool)
### Delete a directory
```
File.delDir("Files")
```
This will delete the directory called `Files` (Returns a Bool)

More features to come
