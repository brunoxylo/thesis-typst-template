# Unofficial h_da thesis Typst-template

[Typst](https://typst.app/) is a new typesetting system with an even bigger feature set compared to Latex. In contrast to Latex is is much easier to learn and debug.
This template might be used to write a bachelor or master thesis at the Computer Science department at [h_da University of Applied Sciences](https://www.fbi.h-da.de/fbi.html "Hochschule Darmstadt, University of Applied Sciences"). It aims to replicate the original look an feel of the h_da [thesis LaTeX-template](https://github.com/mbredel/thesis-template) by Michael von Rüden.  

> `Note:` This project is not affiliated with h_da by any means. This is only a template. You have to adapt the template to your thesis and discuss the structure of your thesis with your referee!  

---

## Installing Typst

A single typst binary (Linux/Mac/Windows) can be downloaded [here](https://github.com/typst/typst/releases)

### Installing the Typst VSCode extension

To make it easier working with typst in VSCode, you can install the [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) extension. It provides an LSP for Syntax highlighting, autocompletion and error checking. Also, a live preview of the document is available with which you can see the changes in real time and easily navigate through the document.  


## Configuration

### Thesis metadata config

The Thesis main configuration can be found in `./thesis-config.typ`.  
In this file the author, title etc. can be set.  

### Add / Remove chapters and auto generated pages

If you add or remove chapters to your thesis you also need to apply the changes to the `./thesis.typ` file.  
You can comment out pages such as the blocking notice in this file to omit them.  
You can also set the headline for those pages here. This is especially needed when you want to change them to english.  
The chapters can be found in the `./chapters/` directory. New chapters may be added at the bottom of the `./thesis.typ` file.  

### Edit abstract and acronyms

In the directory `./frontbackmatter/` the abstract files as well as a file defining the acronyms can be found. There is an english als well as a german version of the abstract. By default both versions are printed. To omit one of them comment out their corresponding lines in `./thesis.typ`. In `./frontbackmatter/acronyms.typ` you can define your own acronyms.  

### Add/Remove bibliography entries

The file `./thesis.bib` can be used to add bibliography entries in the BibLaTeX format.  
Use the "@name_of_entry" notation ([see typst docs](https://typst.app/docs/reference/model/bibliography/)) to reference an entry in your text.  

### Embedding signature

`./figures/signature.png` is where the signature image file used in the declaration. Override this file with your own signature. If you wish to sign the document physically, you can remove the corresponding image from the declaration at `./frontbackmatter/declaration.typ`.  

### Editing layout and language

 `./thesis_typ/main_layout_config.typ` can be used
to change the document language, font or default text size. Just change the variables at the top of this file.  

## Additional libraries and functions used

This template uses the [Glossarium library](https://typst.app/universe/package/glossarium/) to display acronyms.  
To use acronyms you need to import the library at the top of each chapter file and call the `gls` function with the desired acronym:  

```typst
#import "@preview/glossarium:0.5.3": gls, glspl

// Usage:
#gls("DRY")
```

Additionally, this template includes two helper functions implementing a latex like `\\nameref` function and a `displaycode` function to display code sippets with line numbers.  
If needed, they both can be imported to a chapter file with the following:  

```typst
#import "../thesis_typ/helper-functions.typ": *

// Usage nameref
#nameref(<ch:literature:review>)

// Usage displaycode
#figure(
  displaycode(read("../figures/BubbleSort.java"), "java", textsize: 9pt),
  caption: [Bubble Sort in Java],
)
```

## Building

To compile the thesis, run:

```bash
typst compile thesis.typ  
```

To watch for changes to the thesis and compile them dynamically:  

```bash
typst watch thesis.typ
```

## Using Github Workflow or Gitlab CI/CD

You can use the Github workflow in this repo to automatically build the thesis, when a new version is pushed to Github.  
The `.gitlab-ci.yml` file can be used to create a Gitlab CI pipeline.
