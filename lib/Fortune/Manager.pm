package Fortune::Manager;

=head1 NAME

Fortune::Manager - easily manage your own fortunes file(s)

=head1 VERSION

Version 0.01 - 19/06/2010
    
This application is born after I got bored at manually adding fortunes
to my own collection of fortunes.

So i decided to create my own application to add fortunes

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Fortune::Manager manages fortune files, easily, automagically.

Perhaps a little code snippet may make its usage more clear:

    manu@joker:~$ fortune-manager manu-it
    adding fortune to your fortunes file...
    manu@joker:~$ 

Simple, neh ?

But it can be more complex, since Fortune::Manager is designed to
handle more than one fortune file.

    manu@joker:~$ fortune-manager salug
    #add the fortune to the fortune-manu-it fortune file
    
The configuration file is a simple plaintext file in ~, and precisely:
~/.fortune-manager. Maybe in next version it will handle more than one
configuration file.

=head1 Configuration file syntax

As I alredy pointed, the configuration file is a simple plaintext file
in your home, and precisely ~/.fortune-manager

The syntax is pretty simple: each line contains the full path of the
fortune file at the beginning, and other words on the same line are
considered symbolic names (aliases) for the fortune file.

More than one aliases is allowed, but only one is recommended (also,
only the first alias is considered at the moment).

At least ONE alias is REQUIRED.

=head2 Configuration file example

This is my own configuration file. I have my own fortune file, in
which I store fortunes from about all over the Net, and the "salug"
fortune file, in which i store fortunes about the SaLUG! (SAlento
Linux User Group), since I'm the mantainer.

My ~/.fortune-manager is then actually this:

    ## My own fortunes
    /home/manu/projects/fortunes-manu-it/manu-it manu-it
    
    # SaLUG-Fortunes!
    /home/manu/projects/sfortunes/salug salug

Of course, as in Unix tradition (and I obey Unix traditions) you can
insert your personal comments by beginning lines with the '#'
character.
Fortune::Manager automagically skips blank lines, of course.


=head1 SUBROUTINES/METHODS

This module doesn't export any function/method at the time, but I'll
probably extend it for the module to be used in bach-mode.

=cut


=head1 AUTHOR

Emanuele Santoro <santoro at autistici dot org> - L<http://santoro.tk/>


=head1 BUGS

Send ideas, bug reports and any other thing related to
Fortune::Manager to <santoro at autistici dot org>



=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Fortune::Manager


You can also look for information at:


=head1 LICENSE AND COPYRIGHT

Copyright 2010 Emanuele Santoro.

This program is distributed under the (Revised) BSD License:
L<http://www.opensource.org/licenses/bsd-license.php>

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

* Redistributions of source code must retain the above copyright
notice, this list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.

* Neither the name of Emanuele Santoro's Organization
nor the names of its contributors may be used to endorse or promote
products derived from this software without specific prior written
permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


=cut

1; # End of Fortune::Manager
