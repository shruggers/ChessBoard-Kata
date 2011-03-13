# Chessboard Kata: Ruby edition

Forked from [Johnno Nolan's ChessBoard-Kata][jnck]

Kata rules are in the _readme_ file

This project is configured so it can be run with RVM and Bundler. The following commands should get you set up:

    rvm get head
    rvm install 1.9.2
    rvm use 1.9.2
    rvm gemset create ChessBoard-Kata

    cd ChessBoard-Kata
    # Should now be using ruby-1.9.2@ChessBoard-Kata
    gem update
    gem install bundler # If, for some reason, it's not there
    bundle
    # Accept the .rvmrc file
    rehash # On zsh

The following commands should then behave as expected:

    cucumber
    rspec spec
    autotest

The project is set up to use the [autotest-fsevent][atfs] gem on Darwin (i.e. Mac OS X) and [autotest-inotify][atin] on Linux. Due to limitations in Bundler 1.0, it will install both on all platforms, but use the correct one at runtime.

[atfs]: https://github.com/svoop/autotest-fsevent
[atin]: https://github.com/ewollesen/autotest-inotify
[jnck]: https://github.com/shruggers/ChessBoard-Kata
