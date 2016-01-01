These are my personal LaTeX settings for VIM.

Normal mode mappings
---

Binding | Description
------- | -----------
&lt;LocalLeader&gt;lm | Designate the file in the current buffer 'main file'. Every subsequent LaTeX compile will use this file, instead of the file in the then-current buffer.
&lt;LocalLeader&gt;lM | Echo the current main file.
&lt;LocalLeader&gt;ll | Compile the main file, or the current file if no main file is set. Subsequently opens a quickfix window with compile errors, if any.
&lt;LocalLeader&gt;ld | Open the document in xdvi.
&lt;LocalLeader&gt;ls | Same as ,ld, but 'forward searches' to the paragraph that the cursor is on in vim.
&lt;LocalLeader&gt;lp | Compile the main (or current) file to pdf.
&lt;LocalLeader&gt;la | Open the pdfed document in xpdf.
&lt;LocalLeader&gt;lb | Runs bibtex on the main (or current) document.

Handy-dandy abbreviations and insert-mode mappings:
---

Binding | Description
------- | -----------
{}      | Expands into {|}<++> (where | is the cursor position)
{[      | Takes the previous word and turns it into an envrionment.
        | (Note: don't put a space between the word and [[.)
{iz     | Creates an itemize environment.
{en     | Creates an enumerate environment.
{ta     | Creates a tabular environment.
{ce     | Creates a center environment.

Ctrl+Enter Moves to the next <++> and removes it.

Bindings for both insert mode and visual mode
---

(In visual mode, no <++>'s are placed.)

Binding | Description
------- | -----------
{ch     | Expands into \chapter{|}<++>
{se     | Expands into \section{|}<++>
{ss     | Expands into \subsection{|}<++>
{it     | Expands into {\it |}<++>
{bf     | Expands into {\bf |}<++>
{tt     | Expands into {\tt |}<++>
{sc     | Expands into {\sc |}<++>
{sf     | Expands into {\sf |}<++>
 
