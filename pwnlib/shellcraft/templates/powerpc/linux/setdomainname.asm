
<%
    from pwnlib.shellcraft.powerpc.linux import syscall
%>
<%page args="name, len"/>
<%docstring>
Invokes the syscall setdomainname.  See 'man 2 setdomainname' for more information.

Arguments:
    name(char): name
    len(size_t): len
</%docstring>

    ${syscall('SYS_setdomainname', name, len)}
