Bolt Documentation Converter
============================

The project converts [Bolt CMS Documentation](https://docs.bolt.cm/) into portable documents
in various formats that supported by [Pandoc](http://johnmacfarlane.net/pandoc).
That's why you need Pandoc and Linux based OS to convert docuentation.

Installation
------------

Get Composer and run

`composer create-project rixbeck/bolt-docs-convert bolt-doc-convert`

Converting
----------

Check [Pandoc documentation and demos](http://johnmacfarlane.net/pandoc/demos.html) which options
and output formats supported by pandoc.

Then run `bin/bdconv <outname.doctype>`.
