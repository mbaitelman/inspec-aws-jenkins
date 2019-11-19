# inspec-aws-jenkins

This example shows the implementation of an InSpec profile using Jenkins to run and report.


### Using this repo

To use this code there are a few prequesites.

* A Jenkins instance
* Jenkins needs to be able to create/run docker containers. [See plugin docs](https://plugins.jenkins.io/docker-plugin)
* Add an AWS credintials set to Jenkins [See Cloudbees wiki](https://support.cloudbees.com/hc/en-us/articles/360027893492-How-To-Authenticate-to-AWS-with-the-Pipeline-AWS-Plugin)
* Other plugins used:
  - The run uses [Junit](https://plugins.jenkins.io/junit) to report 
  - [AnsiColor](https://plugins.jenkins.io/ansicolor) to show colors
  - We clean the workspace between runs with [this](https://plugins.jenkins.io/ws-cleanup) plugin


### Issues

This is a proof of concept repo to show how to use Inspec using Jenkins.
If there is missing information please create an issue (or even a pull request) and I will update it. 
