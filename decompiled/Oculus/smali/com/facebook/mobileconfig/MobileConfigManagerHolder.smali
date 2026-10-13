.class public interface abstract Lcom/facebook/mobileconfig/MobileConfigManagerHolder;
.super Ljava/lang/Object;
.source "MobileConfigManagerHolder.java"


# virtual methods
.method public abstract clearCurrentUserData()V
.end method

.method public abstract deleteOldUserData(I)V
.end method

.method public abstract getLatestHandle()Lcom/facebook/mobileconfig/MobileConfigMmapHandle;
.end method

.method public abstract getNewOverridesTable()Lcom/facebook/mobileconfig/MobileConfigOverridesTable;
.end method

.method public abstract getNewOverridesTableIfExists()Lcom/facebook/mobileconfig/MobileConfigOverridesTable;
.end method

.method public abstract getSchemaString()Ljava/lang/String;
.end method

.method public abstract isFetchNeeded()Z
.end method

.method public abstract isTigonServiceSet()Z
.end method

.method public abstract isValid()Z
.end method

.method public abstract logExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logShadowResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setEpHandler(Lcom/facebook/mobileconfig/MobileConfigEmergencyPushChangeListener;)Z
.end method

.method public abstract setTigonService(Lcom/facebook/tigon/iface/TigonServiceHolder;Z)V
.end method

.method public abstract syncFetchReason()Ljava/lang/String;
.end method

.method public abstract tryUpdateConfigsSynchronously(I)Z
.end method

.method public abstract updateConfigs()Z
.end method
