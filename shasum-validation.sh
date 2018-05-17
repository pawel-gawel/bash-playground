#!/bin/bash

# for SHA1 (i.e. Git checksums)
shasum -a 1 /some/path/to/file

# for SHA256 
shasum -a 256 /some/path/to/file



# having checksum of single file, you can find it i .git/objects/ directory
echo -e 'blob <FILE_LENGTH>\0<FILE_CONTENTS>' | shasum

# For example:
 echo -e 'blob 12\0Hello World' | shasum
