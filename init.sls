# Imports the GPG signing key directly from the elastic.co site, doesn't run if already installed.
elastic-6.x-key:
  cmd.run:
    - name: 'sudo rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch'
    - unless:
      - 'rpm -qa | grep gpg-pubkey-d88e42b4-52371eca'

# Manages the repository for the elastic 6.x release branch. 
elastic-6.x-repo:
  pkgrepo.managed:
    - humanname: Elastic repository for 6.x packages
    - name: elastic-6.x
    - baseurl: 'https://artifacts.elastic.co/packages/6.x/yum'
    - gpgcheck: 1
    - priority: 1
