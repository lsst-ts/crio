# crio
Setup a National Instruments cRIO for Python 3.6.7 and ts_sal

# Directions
- Open Measurement & Automation Explorer (MAX)
- Expand Remote Systems
- If the cRIO you are working on is not listed right click on Remote Systems and click Create New... follow the on screen prompts
- Right click the cRIO and click Format Disk (keeping network adapter settings if desired)
- Expand the cRIO
- Right click on the cRIO's Software item and click Add/Remove Software
- Select NI CompactRIO 16.0 - August 2016 under the LabVIEW Real-Time 16.0.0 item
- Click Next >>
- Under Protocols and Buses check off NI-TimeSync Time Reference for IEEE 1588-2008 16.0.0 (if available)
- Click Next >>
- Click Next >>
- Click Finish
- Click on the cRIO
- Click on the System Settings
- Check Enable Secure Shell Server (sshd)
- Click thet Save button
- SCP crio.sh to admin@cRIO:/home/admin
- SSH into the cRIO and execute the following commands
- sh crio.sh

# Setup ts_SAL
- nano setup.env
-    Uncomment and change LSST_SDK_INSTALL to /home/admin/ts_sal
-    Uncomment and change OSPL_HOME to /home/admin/ts_opensplice/OpenSpliceDDS/V6.4.1/HDE/x86_64.linux
-    Uncomment PYTHON_BUILD_VERSION
-    Uncomment and change PYTHON_BUILD_LOCATION to /usr
-    Uncomment LSST_DDS_DOMAIN
-    Comment out the JAVA_HOME line
-    Change LD_LIBRARY_PATH to ${SAL_HOME}/lib:${SAL_WORK_DIR}/lib:${LD_LIBRARY_PATH}
-    Comment out the LD_PRELOAD line
-    Change PATH to ${SAL_HOME}/bin:${SAL_WORK_DIR}/lib:${PATH}
-    Delete the second LD_LIBRARY_PATH line
- source setup.env

# Validate nifpga
- python3
    import nifpga
