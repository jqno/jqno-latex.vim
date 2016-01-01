map <silent> <LocalLeader>lm :let g:LaTeX_MainFile=fnamemodify(bufname('%'), ':r')<CR>:echo 'Main file set to ' . g:LaTeX_MainFile . '.tex'<CR>
map <LocalLeader>lM :echo g:LaTeX_MainFile . ".tex"<CR>
map <LocalLeader>ll :w<CR>:exec ':make -src-specials -interaction=nonstopmode ' . g:LaTeX_MainFile . '.tex'<CR>:cw<CR>:call MaximizeAndResizeQuickfix(8)<CR>:cc<CR><CR>
map <LocalLeader>ld :exec g:LaTeX_Dvi_Cmd . g:LaTeX_MainFile . ' &'<CR><CR>
map <LocalLeader>ls :exec g:LaTeX_Dvi_Cmd . '-bg white -hl white -sourceposition "' . line('.') . ':' . col('.') . ' %" ' . g:LaTeX_MainFile . ' &'<CR><CR>
map <LocalLeader>ll :w<CR>:exec '!pdflatex ' . g:LaTeX_MainFile . '.tex'<CR><CR>
map <LocalLeader>la :exec '!open -a Preview ' . g:LaTeX_MainFile . '.pdf'<CR><CR>
" map <LocalLeader>la :exec '!xpdf ' . g:LaTeX_MainFile . '.pdf &'<CR><CR>
" map <LocalLeader>la :exec '!evince ' . g:LaTeX_MainFile . '.pdf &'<CR><CR>
map <LocalLeader>lb :w<CR>:exec '!bibtex ' . g:LaTeX_MainFile<CR><CR>
setlocal makeprg=latex\ $*
setlocal errorformat=%E!\ LaTeX\ %trror:\ %m,
  \%E!\ %m,
  \%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,
  \%+W%.%#\ at\ lines\ %l--%*\\d,
  \%WLaTeX\ %.%#Warning:\ %m,
  \%Cl.%l\ %m,
  \%+C\ \ %m.,
  \%+C%.%#-%.%#,
  \%+C%.%#[]%.%#,
  \%+C[]%.%#,
  \%+C%.%#%[{}\\]%.%#,
  \%+C<%.%#>%.%#,
  \%C\ \ %m,
  \%-GSee\ the\ LaTeX%m,
  \%-GType\ \ H\ <return>%m,
  \%-G\ ...%.%#,
  \%-G%.%#\ (C)\ %.%#,
  \%-G(see\ the\ transcript%.%#),
  \%-G%*\\s,
  \%+O(%f)%r,
  \%+P(%f%r,
  \%+P\ %\\=(%f%r,
  \%+P%*[^()](%f%r,
  \%+P[%\\d%[^()]%#(%f%r,
  \%+Q)%r,
  \%+Q%*[^()])%r,
  \%+Q[%\\d%*[^()])%r

imap {} {}<++><ESC>4hi
inoremap {[ <ESC>yiwi\begin{<ESC>A}<CR><CR>\end{}<ESC>PkA
inoremap {iz \begin{itemize}<CR><TAB>\item <CR><BS>\end{itemize}<ESC>kA
inoremap {en \begin{enumerate}<CR><TAB>\item <CR><BS>\end{enumerate}<ESC>kA
inoremap {ta \begin{tabular}{}<CR><++><CR>\end{tabular}<ESC>2k$i
inoremap {ce \begin{center}<CR><CR>\end{center}<ESC>kA
imap <C-RETURN> <ESC>/<++><CR>:nohlsearch<CR>ix<ESC>d4la<BACKSPACE>
map <C-RETURN> i<C-RETURN><ESC>
imap {n \n{}
imap {f \f{}

inoremap {ch \chapter{}<++><ESC>4hi
vnoremap {ch <ESC>`>a}<ESC>`<i\chapter{<ESC>f}
inoremap {se \section{}<++><ESC>4hi
vnoremap {se <ESC>`>a}<ESC>`<i{\section{<ESC>f}
inoremap {ss \subsection{}<++><ESC>4hi
vnoremap {ss <ESC>`>a}<ESC>`<i{\subsection{<ESC>f}
inoremap {it {\it }<++><ESC>4hi
vnoremap {it <ESC>`>a}<ESC>`<i{\it<SPACE><ESC>f}
inoremap {bf {\bf }<++><ESC>4hi
vnoremap {bf <ESC>`>a}<ESC>`<i{\bf<SPACE><ESC>f}
inoremap {tt {\tt }<++><ESC>4hi
vnoremap {tt <ESC>`>a}<ESC>`<i{\tt<SPACE><ESC>f}
inoremap {sc {\sc }<++><ESC>4hi
vnoremap {sc <ESC>`>a}<ESC>`<i{\sc<SPACE><ESC>f}
inoremap {sf {\sf }<++><ESC>4hi
vnoremap {sf <ESC>`>a}<ESC>`<i{\sf<SPACE><ESC>f}

