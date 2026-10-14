package com.msc.sa.aidl;

interface ISACallback {
    void onReceiveAccessToken(int requestID, boolean isSuccess,  in Bundle resultData);
    void onReceiveChecklistValidation(int requestID, boolean isSuccess, in Bundle resultData);
    void onReceiveDisclaimerAgreement(int requestID, boolean isSuccess, in Bundle resultData);
    void onReceiveAuthCode(int requestID, boolean isSuccess,  in Bundle resultData);
    void onReceiveSCloudAccessToken(int requestID, boolean isSuccess,  in Bundle resultData);
    void onReceivePasswordConfirmation(int requestID, boolean isSuccess,  in Bundle resultData);
}
