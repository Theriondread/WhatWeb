##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Hybrid-Cluster" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-06-07
version "0.1"
description "Hybrid Web Cluster is a software product that sits on top of the infrastructure level to allow your application to run on the cloud without requiring any changes at the application level. It provides commodity web hosting in a distributed and fault-tolerant manner on a cluster of either real physical servers or virtual cloud computing infrastructure server instances. - Homepage: http://www.hybrid-cluster.com/cloud-computing/"

# More Info #
# http://en.wikipedia.org/wiki/Hybrid_Web_Cluster

# ShodanHQ results as at 2011-06-07 #
# 30 for Hybrid Cluster

# Examples #
examples %w|
91.209.244.154
91.209.244.163
91.209.244.144
91.209.244.133
91.209.244.168
91.209.244.137
91.209.244.191
91.209.244.180
91.209.244.152
91.209.244.170
|

# Passive #
def passive
	m=[]

	# Version Detection # HTTP Server Header
	m << { :version=>@meta["server"].scan(/^Hybrid Cluster\/([^\s]+)$/) } if @meta["server"] =~ /^Hybrid Cluster\/([^\s]+)$/

	# Return passive matches
	m
end

end

