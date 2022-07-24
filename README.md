### List all the certificates
puppetserver ca list --all

### Sign the certificates
puppetserver ca sign --all
puppetserver ca sign --certname <cert-name>

### Master server hostname for agent node
puppet config set server <master-hostname> --section main

### Connecting master
puppet ssl bootstrap

### Test the communication between Puppet master and client nodes
puppet agent --test 

### Remove agent certificate
puppetserver ca clean --certname <cert-name>

### Puppet service
sudo systemctl start puppet
sudo systemctl enable puppet
sudo systemctl restart puppet
sudo systemctl status puppet
sudo systemctl status puppetserver

### Command is for starting the server:
puppet resource service puppetserver ensure=running

### Command is to enable the server:
puppet resource service puppetserver enable=true

### download the catalog
sudo /opt/puppetlabs/bin/puppet agent -t

### display a list of available inbuilt puppet resource types
puppet resource --types

### Parameters will list all the available attributes for that resource type.
puppet describe <resource-type-name>	

### validate puppet code
puppet parser validate main.pp

### Test code
puppet apply <puppet-code>

### Module
puppet module list
puppet module search <module-name>
puppet module install <module-name>
puppet module upgrade <module-name>
puppet module uninstall <module-name>

### Docker extra puppet agent
docker run --name agent-1 --net puppet_puppet --hostname agent-1 -it puppet-agent /bin/bash
