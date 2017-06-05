# sourcerer
Quickly source folder-based groups of shell code.

This tiny shell script was written to speed up the initial shell loading time by loading certain shell extensions manually and only on demand.

**Note: Currently only supports zsh. Pull requests are welcome.**

## Folder structure
First organize your source-able shell code into folders and subconfigs like this:
```
/home/<user>/.srcr
├── grp1
│   ├── src1.zsh
│   └── src.zsh
└── grp2
    ├── src1.zsh
    └── src2.zsh
```

## Usage
To then source all the file located in the ```grp1``` subfolder run: 
```
srcr grp1
```
