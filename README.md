# Knief-zero tutorial

## Setup vagrant

```
$ vagrant up
$ vagrant ssh-config --host vagrant >> ~/.ssh/config
```

## Usage

### Provisioning

```
$ berks vendor cookbooks
$ knife zero bootstrap vagrant --node-name vagrant --no-converge
$ knife zero converge vagrant
```

or

```
$ berks vendor cookbooks
$ knife zero bootstrap vagrant --node-name vagrant
$ knife node environment set vagrant sample
$ knife node run_list add vagrant role[sample]
$ knife zero converge name:vagrant
```

**Note**

My secret key:

```
$ cat .chef/data_bag_key
NZ0Qku6InBDpOllJGNPiscbsDiukuOZEcPqH2Ub1ukfPkEEV9cYf8f/O/lMcH/OkyqfdLiW6i+Bs31pY82p/mHzbdTycUdLjAt6xQm2usFse8aPUVDSqG8PBQO4ALvapOaAV0gzh71ISUhg5BKw4QmPQ/AqMBajy5qm4qy3IVhdM5yWkbR7XiM9DqpbVxo5/GQkhGFTZCJuL16tS0KxJW/rZaz4JIyt9q6e8UYZMEzlIYKEnmz9kdrLdnUfNNWx3p+RoMaChQfqfUkFt57eKiz8hR32hWIk0Ns7iIvEhDabRW1xlWFJG1I2cGadBzSBd3JOqTFmGK0ZgLZWjFM5snwSt9ujlJGTe/OLwhs9yTNaYHmvx5lPJ92YOa6U7Qtv3aHwypr20QoJWIrBPGWBqkF8hvscZgtNQAllzLQOLMPQvlpUn9GQV1ClCOFNuQniDiG66CTwXHyTyZoq4wInng/wDApMWzFtEsPFg+zXhkWwrgkhYy+Cfb8YwhaiWmIYw3xup5Shs5SYu1XVd+9C79OgunHDmBOGI1jmPSNN0oI8s7UdDqBWyDlqozvHe7qKg31QiYv0Ea5vEHRt6Ke9oPrH2lNNX8qWELhlWuqXb9FbsPYqz005JLAC/3YXvWWfBQNCE3C98q6WpCC2rkYc5kgRKcfdw4ZM459nL1mA6hwI=
```

`.chef/data_bag_key` is generated by the following command:

```
$ openssl rand -base64 512 | tr -d '\r\n' > .chef/data_bag_key
```
