# fasp<span/>.io Gateway FTP Tunnelling

Proof of concept to show how FTP can be tunnelled over FASP using the fasp<span/>.io Gateway.

This first attempt is meant to make this work with no changes on the Gateway.

Especially, this requires the following constraints/limitations:

* Use FTP in Passive mode
* Manually create bridges for any required data port range (here, only one, 2000)
* Configure the FTP server in promiscuous mode (to allow for the data connection to come from a different IP)

In the future, we hope to significantly improve this by making the gateway FTP-aware.

## Preparation
* Generate test data (once, optional)
```console
    ./generate_data.sh
```
* Install FTP client (once, optional)

```console
    brew install lftp
    lftp --version
```
* Log onto the docker repository (readable for any IBMers. Use your IBMers creds)
```
    docker login hyc-faspio-team-docker-local.artifactory.swg-devops.com
```

## Instructions

1. Run both gateways and the FTP server

```console
    docker-compose up
```

2. Run client

```console
    lftp -u myuser:mypass localhost
    > ls
    > get 100MB
```

3. Verify that the file was downloaded
