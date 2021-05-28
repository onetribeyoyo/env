<https://gallinar.blogspot.com/2020/11/macos-brew-emacs-271-keeps-crashing-on.html>

Monday, November 23, 2020

# macOS: Brew emacs 27.1 keeps crashing on Big Sur 11.0.1 #

Version: macOS v11.0.1

Constant crashes of Emacs v27.1 installed from Brew for no reason.

As a workaround, let's compile the latest version locally (bleeding edge).

source: Transitioning to GUI'd Emacs on macOS

    $ git clone https://git.savannah.gnu.org/git/emacs.git
    $ cd emacs

Check out the native compilation branch.

    $ git checkout feature/native-comp

Let's make it.

    $ export LIBXML2_CFLAGS="-I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/libxml2"
    $ ./autogen.sh
    $ ./configure --without-makeinfo
    $ make
    $ make install

Then, replace the brew version.

    $ brew cask remove emacs
    $ mv nextstep/Emacs.app/ /Applications/
