Continuous Integration for TYPO3 projects
=========================================

This repository contains an example project for a continuous integration setup for TYPO3 projects.

This projects demonstrates how you can use virtualization technologies to implement multi-configuration
builds for TYPO3 (or any other kind of web projects). In this example, you can build a TYPO3 project with
arbitrary combinations of TYPO3 and PHP versions, allowing you to find version-specific bugs in your
project quickly and without pain.

Requirements
------------

In order to use this example, you need the following software:

- [Vagrant](http://www.vagrantup.com/) for managing virtual machines to build your project in
- [VirtualBox](https://www.virtualbox.org/) as virtualization backend
- [Ansible](http://www.ansible.com/home) for configuration of build VMs
- [Composer](https://getcomposer.org/) for PHP dependency management

Run manually
------------

Start the build process manually:

    composer install
    TYPO3_VERSION=master PHP_VERSION=5.5 vagrant up --provision
    vagrant ssh -c 'cd /vagrant && bin/phing'
    vagrant suspend

Run with Jenkins
----------------

Create a new Jenkins multi-configuration build and create two build axes labeled `TYPO3_VERSION` and `PHP_VERSION`.
For the `TYPO3_VERSION` variable, you can use any valid reference from the
[TYPO3 git repository](https://git.typo3.org/Packages/TYPO3.CMS.git) (i.e. branch and tag names, like `master`,
`TYPO3_6-2` or `TYPO3_6-1-5`).

Then create an *execute shell script* build step with the following shell commands:

    composer install
    vagrant up --provision
    vagrant ssh -c 'cd /vagrant && bin/phing'
    vagrant suspend

To collect code metrics, generated for example by
[Typoscript Lint](https://github.com/martin-helmich/typo3-typoscript-lint),
you can use the [Violations plugin](https://wiki.jenkins-ci.org/display/JENKINS/Violations) for Jenkins.
