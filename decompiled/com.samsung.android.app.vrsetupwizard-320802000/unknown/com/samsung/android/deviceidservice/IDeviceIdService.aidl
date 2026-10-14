// IDeviceIdService.aidl
package com.samsung.android.deviceidservice;

// Declare any non-default types here with import statements

interface IDeviceIdService {
    String getOAID();
    String getVAID(String packagename);
    String getAAID(String packagename);
}
