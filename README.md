# inspec-aws-jenkins

This example shows the implementation of an InSpec profile using Jenkins to run and report.

## Using this repo

To use this code there are a few prequesites.

* A Jenkins instance
* Jenkins needs to be able to create/run docker containers. [See plugin docs](https://plugins.jenkins.io/docker-plugin)
* Add an AWS credintials set to Jenkins with an id of `aws-credentials` [See Cloudbees wiki](https://support.cloudbees.com/hc/en-us/articles/360027893492-How-To-Authenticate-to-AWS-with-the-Pipeline-AWS-Plugin)
* Other plugins used:
  * The run uses [Junit](https://plugins.jenkins.io/junit) to report
  * [AnsiColor](https://plugins.jenkins.io/ansicolor) to show colors
  * We clean the workspace between runs with [this](https://plugins.jenkins.io/ws-cleanup) plugin

To create the Jenkins job

1. Open up (and login to) Jenkins
1. Click `New Item`
1. Enter a job name
1. Choose Pipeline as the job type
1. Scroll to the bottom and in the Pipeline area change the `Definition` to `Pipeline script from SCM`
1. Set SCM to git
1. Set Repository URL to `https://github.com/mbaitelman/inspec-aws-jenkins.git`
1. Save the job
1. Click `Build Now` (future runs will say `Build with Parameters` so you can choose the region)

## Issues

This is a proof of concept repo to show how to use Inspec using Jenkins.
If there is missing information please create an issue (or even a pull request) and I will update it.
