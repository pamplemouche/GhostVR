package com.msc.sa.aidl;
import com.msc.sa.aidl.ISACallback;

interface ISAService {
    String registerCallback(String clientID, String clientSecret, String packageName, ISACallback callback);
    boolean unregisterCallback(String registrationCode);
    boolean requestAccessToken(int requestID, String registrationCode, in Bundle data);
    boolean requestChecklistValidation(int requestID, String registrationCode, in Bundle data);
    boolean requestDisclaimerAgreement(int requestID, String registrationCode, in Bundle data);
    boolean requestAuthCode(int requestID, String registrationCode, in Bundle data);
    boolean requestSCloudAccessToken(int requestID, String registrationCode, in Bundle data);
    boolean requestPasswordConfirmation(int requestID, String registrationCode, in Bundle data);
}
