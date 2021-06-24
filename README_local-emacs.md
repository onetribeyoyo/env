<https://www.emacswiki.org/emacs/GccEmacs>

    $ git clone git://git.savannah.gnu.org/emacs.git
    $ cd emacs
    $ ./autogen.sh

    $ ./configure --with-native-compilation
    or
    $ ./configure
    
    $ make -j$(nproc)
    $ make -j8
    $ make install

or download latest from <https://emacsformacosx.com/builds>


Then

    $ mv nextstep/Emacs.app /Applications

------

Note: might need to...

    brew install texinfo
    brew install gnutls
    brew install libgccjit
