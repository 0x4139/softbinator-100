#!/bin/sh
echo "Creating Servers"

echo "Creating Manager Nodes"
scw create --bootscript="docker" --name="manager-01" --commercial-type="VC1S" --ip-address=dynamic Centos
scw create --bootscript="docker" --name="manager-02" --commercial-type="VC1S" --ip-address=dynamic Centos

echo "Creating Internal Manager Nodes"
scw create --bootscript="docker" --name="internal-manager-01" --commercial-type="VC1S" --ip-address=dynamic Centos

echo "Creating Production Worker Nodes"
scw create --bootscript="docker" --name="worker-01" --commercial-type="VC1S" --ip-address=dynamic Centos
scw create --bootscript="docker" --name="worker-02" --commercial-type="VC1S" --ip-address=dynamic Centos

echo "Creating Internal Worker Nodes"
scw create --bootscript="docker" --name="internal-worker-01" --commercial-type="VC1S" --ip-address=dynamic Centos
scw create --bootscript="docker" --name="internal-worker-02" --commercial-type="VC1S" --ip-address=dynamic Centos

#echo "Creating Storage Nodes"
#scw create --bootscript="docker" --name="storage-01" --commercial-type="VC1L" --ip-address=dynamic Centos
#scw create --bootscript="docker" --name="storage-02" --commercial-type="VC1L" --ip-address=dynamic Centos
