# README #

### What is this repository for? ###

* This Saltstate will install the relative Elastic repositories required for Logstash / Filebeat and any other Beat we use.
* It should be referred to in any of your Elastic states by putting this at the top of your Elastic state:

```
include:
  - elastic-repo
```

### Who do I talk to? ###

* Craig Simpson
* +442920020386