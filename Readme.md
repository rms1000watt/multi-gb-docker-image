# Multi GB Docker Image

## Introduction

This is a multi GB Docker image used for testing. There have been cases where `docker load|save` have failed for large docker images. This repo will hopefully expose the bugs.

## Contents

- [Usage](#usage)

## Usage

Create the random data from `/dev/urandom` (this takes a bit of time since it's creating one 4GB file and six thousand 64KB files)

```bash
./create-data.sh
```

Build a docker image then repeatedly `docker save` & `docker load`:

```bash
./workflow.sh
```
