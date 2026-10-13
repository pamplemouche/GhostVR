.class public interface abstract Lcom/oculus/aidl/OVRServiceInterface;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract assetFileDelete(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract assetFileDownload(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract assetFileDownloadCancel(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getAppScopedAccessToken(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getBaseURLEndpoint(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getEntitlementCheckBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getIAPCheckoutFlowIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
.end method

.method public abstract getInstalledVRApplications(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getInvitableUsersFlowIntent(Landroid/os/Bundle;)Landroid/content/Intent;
.end method

.method public abstract getLatestAvailableAppInformation(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getSharedMicrophoneData(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getSystemVoipData(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract isAppEntitled()I
.end method

.method public abstract launchOtherApp(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract loadPublicProfileForUser(Ljava/lang/String;)Ljava/util/Map;
.end method

.method public abstract logToMarauder(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract savePublicProfileData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
.end method

.method public abstract setSystemVoipMicrophoneMuted(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract setSystemVoipPassthrough(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract setSystemVoipSuppressed(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract sharedMicrophoneStop(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract startPartyChat(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract stopPartyChat(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract updatePlatformContext(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method
