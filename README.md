PhantomJS Batch Test
====================

Quickly batch screenshot/test multiple sites using PhantomJS
--------------------

This is a little utility I use when migrating many websites between servers. Often, I'll update my /etc/hosts file to point all sites to a new IP and then run this test. It's a great way to make sure your sites work on a new server before actually switching DNS. 

Requirements
--------------------

Requires [PhantomJS](http://phantomjs.org/)

How to use
--------------------

* Edit the sites.txt file with all the hostname/sites you want to test
* Edit your /etc/hosts file if necessary (i.e. you want to test a new server)
* Run ````phantomjs test.coffee````
* Go make a sandwich
* Screenshots will be saved in the screens/ folder