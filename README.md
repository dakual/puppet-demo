### List all the certificates
```sh
puppetserver ca list --all
```

### Sign the certificates
```sh
puppetserver ca sign --all
puppetserver ca sign --certname <cert-name>
```

### Master server hostname for agent node
```sh
puppet config set server <master-hostname> --section main
```

### Connecting master
```sh
puppet ssl bootstrap
```

### Test the communication between Puppet master and client nodes
```sh
puppet agent --test 
```

### Remove agent certificate
```sh
puppetserver ca clean --certname <cert-name>
```

### Puppet service
```sh
sudo systemctl start puppet
sudo systemctl enable puppet
sudo systemctl restart puppet
sudo systemctl status puppet
sudo systemctl status puppetserver
```

### Command is for starting the server:
```sh
puppet resource service puppetserver ensure=running
```

### Command is to enable the server:
```sh
puppet resource service puppetserver enable=true
```

### download the catalog
```sh
sudo /opt/puppetlabs/bin/puppet agent -t
```

### display a list of available inbuilt puppet resource types
```sh
puppet resource --types
```

### Parameters will list all the available attributes for that resource type.
```sh
puppet describe <resource-type-name>	
```

### validate puppet code
```sh
puppet parser validate main.pp
```

### Test code
```sh
puppet apply <puppet-code>
```

### Module
```sh
puppet module list
puppet module search <module-name>
puppet module install <module-name>
puppet module upgrade <module-name>
puppet module uninstall <module-name>
```

### Docker extra puppet agent
```sh
docker run --name agent-1 --net puppet_puppet --hostname agent-1 -it puppet-agent /bin/bash
```