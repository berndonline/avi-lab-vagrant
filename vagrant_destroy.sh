#!/bin/bash

virsh destroy avi-lab-vagrant_avi-controller-1
virsh destroy avi-lab-vagrant_avi-se-1
virsh destroy avi-lab-vagrant_avi-se-2

virsh undefine avi-lab-vagrant_avi-controller-1
virsh undefine avi-lab-vagrant_avi-se-1
virsh undefine avi-lab-vagrant_avi-se-2

virsh vol-delete avi-lab-vagrant_avi-controller-1.img default
virsh vol-delete avi-lab-vagrant_avi-se-1.img default
virsh vol-delete avi-lab-vagrant_avi-se-2.img default
