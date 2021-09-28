
## full file system access ##

Emacs.app actually launches using a ruby script. As a result, MacOS uses the permissions set for ruby,
not the permissions for Emacs.app.

1. Open `System Preferences -> Security & Privacy -> Privacy`,
1. select `Full Disk Access` in the left pane,
1. then click + and add `/usr/bin/ruby`.

`/usr` is hidden by default on MacOS but you can toggle visibility in Finder by using
`Shift+Command+Period`.


## local build ##

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

Note: may need...

    brew install texinfo
    brew install gnutls
    brew install libgccjit
