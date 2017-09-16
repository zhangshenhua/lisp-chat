# Lisp Chat

<a href="https://app.codesponsor.io/link/jza5upfrcVSndCUAeCgb4ScS/ryukinix/lisp-chat" rel="nofollow"><img src="https://app.codesponsor.io/embed/jza5upfrcVSndCUAeCgb4ScS/ryukinix/lisp-chat.svg" style="width: 888px; height: 68px;" alt="Sponsor" /></a>

An experimental chat irc-like written in Lisp.

![lisp-chat-screenshot](lisp-chat.png)


# Installation

You need in your system:

* [SBCL](http://www.sbcl.org/)
* [Quicklisp](https://github.com/quicklisp/quicklisp-client)

And make sure that `~/.sbclrc` has a entry calling to the quicklisp setup.

```common-lisp
(load "~/quicklisp/setup.lisp")
```

## Tip for Quicklisp

Clone the attached repository of Quicklisp and execute the `setup.lisp` with
`sbcl --script setup.lisp`

# Usage

Load the server
```bash
$ sbcl --load server.lisp --eval "(lisp-chat-server:main)"
```

Get a client
```bash
$ sbcl --load client.lisp --eval "(lisp-chat-client:main)"
```


# For Non-lispers

If you wish test this and don't have the Lisp environment with SBCL and Quicklisp,
you can try the client version written in Python using only the stdlib.

```bash
$ python client.py
```

You can even just use `netcat`! A user called `Chris` in past days just logged in the server with the following message:

```
|16:30:37| [Chris]: Used netcad
|16:30:41| [Chris]: netcat*
|16:30:50| [Chris]: bye
```

So you can just type `netcat ryukinix.tk 5558` and go on! I tested and works fine! The main reason is because the communication between server and client just use raw data. For better synchronization with text data from server while you typing, I suggest you to use [`rlwrap`](https://github.com/hanslub42/rlwrap) as `rlwrap netcat ryukinix.tk 5558`.
