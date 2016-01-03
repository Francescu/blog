augroup LOCAL_SETUP
    autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
    autocmd BufReadPre *.html let g:syntastic_html_tidy_ignore_errors=['proprietary attribute "ng-']
augroup end
