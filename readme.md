# ffmpod installer

this script ease the automation of ffmpod.

## requirements

in this document, we asume that

* zsh is installed on your machine
* `dtrt-fmmpeg` contains whatever copy of the
  [github project](https://github.com/unistra/dtrt-ffmpeg)
* you know enough about authorizing a restricted shell
  `man authorized_keys` and `man ssh_config`

## deploy an instance of pod

to install a new pod instance, you need to start
the `prepare` script with the configuration file of
your instance as the first parameter.

to create a configuration file, just copy and edit
the `environment.sample` following instructions in it.

the syntax of the `environment.sample` is a plain zsh
script so you can run anything you want during the
configuration process (as grep python files to get variables).

so basically, installing a pod instance `foo` is:

    install -D environment.sample env/foo
    # edit env/foo with our favorite editor

    bag=foo install='pod encoding' zsh ./prepare ./env/foo

the last command will

* create the key ssh service key if not exist
* create/overwrite installation bags
* run the bags on the ssh endpoints for 'install' variable
 (possible values are 'pod' and 'encoding')
