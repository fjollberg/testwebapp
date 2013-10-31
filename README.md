testwebapp
==========

This is a really simple webapp to build a war with which you can test basic CAS functionality.

Build: mvn clean package
Then copy testwebapp.war to the servlet container of your choice (e.g. tomcat).

The webapp will upon successfull authentication print out the username returned by the
CAS server and any additional attributes (CAS protocol 3.0).
