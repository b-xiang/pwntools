
<%
    from pwnlib.shellcraft.i386.linux import syscall
%>
<%page args="start, len, vec"/>
<%docstring>
Invokes the syscall mincore.  See 'man 2 mincore' for more information.

Arguments:
    start(void): start
    len(size_t): len
    vec(unsigned): vec
</%docstring>

    ${syscall('SYS_mincore', start, len, vec)}
