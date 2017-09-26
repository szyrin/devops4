# devops4  
vagrant box add ubuntu/trusty64  
vagrant box list  
vargant init
cat Vagrantfile  
vagrant up  
vagrant ssh  
sudo apt-get install apache2 graphite-web  
dpkg -l | grep graphite  
dpkg -l | grep apache  
exit  
vagrant status  
vagrant destroy  
vim Vagrantfile  // uncomment provisioning  
vagrant ssh  
dpkg -l | grep graphite  
dpkg -l | grep apache  
exit  
vagrant destroy -f  
  
cd more/vagrant  
vagrant up master && vagrant up minion // minion after master   
vagrant status  
vagrant ssh master  
ps aux | grep salt  
sudo salt '*' test.ping  
sudo salt 'minion' state.highstate  
ls /srv/salt  
vim devops4/salt/tuning.sls // change number to 99999 on host machine
sudo salt 'minion' state.highstate  
  
which ruby  
gem install serverspec  
serverspec-init  // unix, ssh, vagrant yes, auto yes, master 0  
cd spec/master/  
cat sample_spec.rb  
rm sample_spec.rb  
cp ../../graphite_spec.rb .  
cd ../../  
cat Rakefile  
rake spec  
vagrant ssh master  
sudo salt-call state.highstate  
exit  
rake spec  

