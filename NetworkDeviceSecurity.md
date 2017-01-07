#Network Drive Security

##Switches
* Briding done in hardware 
   * Application-specific integrated circuit (ASIC)
* An OIS layer 2 device
   * Forwords traffic based on data link address
* High bandwidth

##Routers
* OIS Layer 3 device
* Router traffic between IP subnets
* Router inside switches sometimes called "layer 3 switch"
* Often connects device network types
   * LAN, WAN, Copper, Fiber

##Firewalls
* Filters traffic by port number 
* OIS layer 4 (TCP/UDP)
* Can encrypt traffic into/out of the network
* Can proxy traffic
* Most firewalls can be layer 3 devices (routers)

##Load Balancers
* Distributes the load over many physical servers
   * A Cluster
* Very common in large environment
* Many options for balancing 
   * Load distribution 
   * Distribution based on content 

##Proxies
* Sits between the users and external network 
* Recieves the user requests and sends the request on their behalf (the proxy)
* Useful for caching information
* Some proxies are invisible (transparent)

##All in one Security
* UTM = Unified threat management / Web-security gateway
   * URL filter
   * Malware inspection
   * IDS/IPS = intrusion detection/prevention systems 
   * Spam filter
   * Router / Switch
   * Bandwidth shaper
   * CSU / DSU

##VPN Concentrator
* Create a secure connection to your home network

##Intrusion Detection System / Intrusion Prevention System (NIDS/NIPS)
* Identify Intrusions
   * Exploits agionst opertating systems, applications, etc
* Detection vs. Prevention
   * Detection - alert
   * Prevention - stop it before it gets into network
* Use signiture based maps
* Use anomaly-based maps
   * Build a baseline of what's normal and compare agienst it
* Behaviour based
   * Observe and report
* Heuristics
   * Artificial intelligence to identify

##Protecol Analyzer
* Sniffer is a registered trademark of NetScout Systems, Inc.
    * A common reference
* Captures and displays network traffic
    * Packet by packet
* Wireshark is a popular one

##Spam filters / Mail gateways
* Stop unsolicited email at the gateway before it reaches the user
* On-site or cloud based
* Different identification methods
    * Whitelist
        * Only recieve email from trusted senders
    * SMTP standards checking
        * Block anything that doesnt follow RFC standards
    * rDNS - Reverse DNS
        * Block email where the sender's domain doesnt match the IP address
    * Tarpitting
        * Intentionally slow down the server conversation
    * Recipient filtering
        * Block all emainoaddressed to a vaild recipent email address

##Web Application Firewall (WAF)
* Not like a "normal" firewall
    * Applies rulesssss to HTTP conversation
* Allow or deny based on expected input
    * Unexpected input is a common method if exploting application
* SQL injection
    * Add your own commmands to an application's SQL query
* A major focus of Payment Card Industry Data Security Standard (PCI DSS)

##Application-aware security devices
* The OSI Application layer
    * All data in every packet
* Can be called different names
    * Application layer gateway
    * Stateful multilayer inspection
    * Deep packet inspection
* Requires some advanced decodes
    * Every packet must be analyzed, categorized, and a security decision is determined
* Network-based firewalls
    * Control traffic flows based othe application
* Intrusion prevention systems
    * Identify the application
    * Apply application-specific vulnerability signatures to the traffic
