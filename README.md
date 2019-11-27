# _Jira_ Open Microservice

> This is a jira service

[![Open Microservice Specification Version](https://img.shields.io/badge/Open%20Microservice-1.0-477bf3.svg)](https://openmicroservices.org) [![Open Microservices Spectrum Chat](https://withspectrum.github.io/badge/badge.svg)](https://spectrum.chat/open-microservices) [![Open Microservices Code of Conduct](https://img.shields.io/badge/Contributor%20Covenant-v1.4%20adopted-ff69b4.svg)](https://github.com/oms-services/.github/blob/master/CODE_OF_CONDUCT.md) [![Open Microservices Commitzen](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/) [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com) 
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## Introduction

This project is an example implementation of the [Open Microservice Specification](https://openmicroservices.org), a standard originally created at [Storyscript](https://storyscript.io) for building highly-portable "microservices" that expose the events, actions, and APIs inside containerized software.

## Getting Started

The `oms` command-line interface allows you to interact with Open Microservices. If you're interested in creating an Open Microservice the CLI also helps validate, test, and debug your `oms.yml` implementation!

See the [oms-cli](https://github.com/microservices/oms) project to learn more!

### Installation

```
npm install -g @microservices/oms
```

## Usage

### Open Microservices CLI Usage

Once you have the [oms-cli](https://github.com/microservices/oms) installed, you can run any of the following commands from within this project's root directory:

#### Actions

##### getAccount

> Get account details.
##### Action Arguments

| Argument Name | Type | Required | Default | Description |
|:------------- |:---- |:-------- |:--------|:----------- |
| username | `string` | `true` | None | The account username. |
| EMAIL | `string` | `true` | None | The account email address. |
| API_TOKEN | `string` | `true` | None | The API token. |
| BASE_URL | `string` | `true` | None | The baseURL of jira account. |

``` shell
oms run getAccount \ 
    -a username='*****' \ 
    -e EMAIL=$EMAIL \ 
    -e API_TOKEN=$API_TOKEN \ 
    -e BASE_URL=$BASE_URL
```

##### createIssue

> Create issue.
##### Action Arguments

| Argument Name | Type | Required | Default | Description |
|:------------- |:---- |:-------- |:--------|:----------- |
| assigneeName | `string` | `true` | None | The assignee username. |
| assigneeEmail | `string` | `true` | None | The assignee email address. |
| description | `string` | `true` | None | The description of issue. |
| type | `string` | `true` | None | The type of issue like Bug, Epic, Story. |
| projectKey | `string` | `true` | None | The project key. |
| summary | `string` | `true` | None | The summary of issue. |
| EMAIL | `string` | `true` | None | The account email address. |
| API_TOKEN | `string` | `true` | None | The API token. |
| BASE_URL | `string` | `true` | None | The baseURL of jira account. |

``` shell
oms run createIssue \ 
    -a assigneeName='*****' \ 
    -a assigneeEmail='*****' \ 
    -a description='*****' \ 
    -a type='*****' \ 
    -a projectKey='*****' \ 
    -a summary='*****' \ 
    -e EMAIL=$EMAIL \ 
    -e API_TOKEN=$API_TOKEN \ 
    -e BASE_URL=$BASE_URL
```

##### listProject

> Get all project list.
##### Action Arguments

| Argument Name | Type | Required | Default | Description |
|:------------- |:---- |:-------- |:--------|:----------- |
| EMAIL | `string` | `true` | None | The account email address. |
| API_TOKEN | `string` | `true` | None | The API token. |
| BASE_URL | `string` | `true` | None | The baseURL of jira account. |

``` shell
oms run listProject \ 
    -e EMAIL=$EMAIL \ 
    -e API_TOKEN=$API_TOKEN \ 
    -e BASE_URL=$BASE_URL
```

##### getIssue

> Get issue by ID.
##### Action Arguments

| Argument Name | Type | Required | Default | Description |
|:------------- |:---- |:-------- |:--------|:----------- |
| issueId | `string` | `true` | None | The ID of issue to get details. |
| EMAIL | `string` | `true` | None | The account email address. |
| API_TOKEN | `string` | `true` | None | The API token. |
| BASE_URL | `string` | `true` | None | The baseURL of jira account. |

``` shell
oms run getIssue \ 
    -a issueId='*****' \ 
    -e EMAIL=$EMAIL \ 
    -e API_TOKEN=$API_TOKEN \ 
    -e BASE_URL=$BASE_URL
```

## Contributing

All suggestions in how to improve the specification and this guide are very welcome. Feel free share your thoughts in the Issue tracker, or even better, fork the repository to implement your own ideas and submit a pull request.

[![Edit jira on CodeSandbox](https://codesandbox.io/static/img/play-codesandbox.svg)](https://codesandbox.io/s/github/oms-services/jira)

This project is guided by [Contributor Covenant](https://github.com/oms-services/.github/blob/master/CODE_OF_CONDUCT.md). Please read out full [Contribution Guidelines](https://github.com/oms-services/.github/blob/master/CONTRIBUTING.md).

## Additional Resources

* [Install the CLI](https://github.com/microservices/oms) - The OMS CLI helps developers create, test, validate, and build microservices.
* [Example OMS Services](https://github.com/oms-services) - Examples of OMS-compliant services written in a variety of languages.
* [Example Language Implementations](https://github.com/microservices) - Find tooling & language implementations in Node, Python, Scala, Java, Clojure.
* [Storyscript Hub](https://hub.storyscript.io) - A public registry of OMS services.
* [Community Chat](https://spectrum.chat/open-microservices) - Have ideas? Questions? Join us on Spectrum.
