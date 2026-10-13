.class public Lcom/oculus/horizon/service/result/EntitlementCheckResultBuilder;
.super Lcom/oculus/horizon/service/result/ResultBuilder;
.source "EntitlementCheckResultBuilder.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation


# instance fields
.field private final mCredentials:Lcom/oculus/auth/credentials/Credentials;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/service/OVRService;)V
    .locals 1
    .param p2    # Lcom/oculus/horizon/service/OVRService;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p2}, Lcom/oculus/horizon/service/result/ResultBuilder;-><init>(Lcom/oculus/horizon/service/OVRService;)V

    .line 23
    invoke-static {p1}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->$ul_$xXXcom_oculus_horizon_service_ExternalPlatformLocal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service/ExternalPlatformLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/result/EntitlementCheckResultBuilder;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    invoke-static {p1}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXcom_oculus_auth_credentials_Credentials$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/auth/credentials/Credentials;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/result/EntitlementCheckResultBuilder;->mCredentials:Lcom/oculus/auth/credentials/Credentials;

    .line 25
    return-void
.end method


# virtual methods
.method public getResult(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service/result/EntitlementCheckResultBuilder;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->getEntitlementHash(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/service/result/EntitlementCheckResultBuilder;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->getAppID(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/service/result/EntitlementCheckResultBuilder;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    invoke-virtual {v0}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/service/result/EntitlementCheckResultBuilder;->mCredentials:Lcom/oculus/auth/credentials/Credentials;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/service/result/EntitlementCheckResultBuilder;->mCredentials:Lcom/oculus/auth/credentials/Credentials;

    invoke-virtual {v0}, Lcom/oculus/auth/credentials/Credentials;->getUserId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 42
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    const-string v5, "entitlement_hash"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "app_id"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "machine_id"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 54
    :goto_1
    return-object v0

    .line 40
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v1, "user does not have app in library"

    sget-object v2, Lcom/oculus/platform/util/OVRError;->PERMISSIONS_FAILURE:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/service/result/EntitlementCheckResultBuilder;->setError(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 51
    :catch_1
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->NETWORK_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/service/result/EntitlementCheckResultBuilder;->setError(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 53
    :catch_2
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/service/result/EntitlementCheckResultBuilder;->setError(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method
