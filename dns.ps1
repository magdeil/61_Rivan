# Install DNS role and management tools
Install-WindowsFeature -name dns -IncludeManagementTools

# Add DNS Primary Zone
Add-DnsServerPrimaryZone -Name "ngcp61.ph" -ZoneFile "ngcp61.ph.dns"

# Add DNS records
add-DnsServerResourceRecord -zonename ngcp61.ph -A -name ns -ipv4address 10.61.1.10
add-DnsServerResourceRecord -zonename ngcp61.ph -Cname -name www -hostname ns.ngcp61.ph
add-DnsServerResourceRecord -zonename ngcp61.ph -Cname -name imap -hostname ns.ngcp61.ph
add-DnsServerResourceRecord -zonename ngcp61.ph -Cname -name pop -hostname ns.ngcp61.ph
add-DnsServerResourceRecord -zonename ngcp61.ph -Cname -name smtp -hostname ns.ngcp61.ph

# FOR CISCO DEVICES DNS RECORDS;
add-DnsServerResourceRecord -zonename ngcp61.ph -A -name cb -ipv4address 10.61.1.4
add-DnsServerResourceRecord -zonename ngcp61.ph -A -name ct -ipv4address 10.61.1.2
add-DnsServerResourceRecord -zonename ngcp61.ph -A -name cm -ipv4address 10.61.100.8
add-DnsServerResourceRecord -zonename ngcp61.ph -A -name ed -ipv4address 10.61.61.1
add-DnsServerResourceRecord -zonename ngcp61.ph -A -name p1 -ipv4address 10.61.100.101
add-DnsServerResourceRecord -zonename ngcp61.ph -A -name p2 -ipv4address 10.61.100.102
add-DnsServerResourceRecord -zonename ngcp61.ph -A -name c1 -ipv4address 10.61.50.6
add-DnsServerResourceRecord -zonename ngcp61.ph -A -name c2 -ipv4address 10.61.50.8
add-DnsServerResourceRecord -zonename ngcp61.ph -A -name ap -ipv4address 10.61.10.3
