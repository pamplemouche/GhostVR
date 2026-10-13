.class public Lcom/oculus/horizon/service/result/AppScopedAccessTokenResultBuilder;
.super Lcom/oculus/horizon/service/result/ResultBuilder;
.source "AppScopedAccessTokenResultBuilder.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation


# instance fields
.field private final mExternalPlatformNetwork:Lcom/oculus/horizon/service/ExternalPlatformNetwork;
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
    .line 22
    invoke-direct {p0, p2}, Lcom/oculus/horizon/service/result/ResultBuilder;-><init>(Lcom/oculus/horizon/service/OVRService;)V

    .line 21
    invoke-static {p1}, Lcom/oculus/horizon/service/ExternalPlatformNetwork;->$ul_$xXXcom_oculus_horizon_service_ExternalPlatformNetwork$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service/ExternalPlatformNetwork;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/result/AppScopedAccessTokenResultBuilder;->mExternalPlatformNetwork:Lcom/oculus/horizon/service/ExternalPlatformNetwork;

    .line 23
    return-void
.end method


# virtual methods
.method public getResult(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service/result/AppScopedAccessTokenResultBuilder;->mExternalPlatformNetwork:Lcom/oculus/horizon/service/ExternalPlatformNetwork;

    iget-object v1, p0, Lcom/oculus/horizon/service/result/AppScopedAccessTokenResultBuilder;->mService:Lcom/oculus/horizon/service/OVRService;

    .line 30
    invoke-virtual {v1}, Lcom/oculus/horizon/service/OVRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1, p1, p2}, Lcom/oculus/horizon/service/ExternalPlatformNetwork;->getAppScopedAccessToken(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 39
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v1, "user does not have app in library"

    sget-object v2, Lcom/oculus/platform/util/OVRError;->PERMISSIONS_FAILURE:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/service/result/AppScopedAccessTokenResultBuilder;->setError(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 36
    :catch_1
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->NETWORK_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/service/result/AppScopedAccessTokenResultBuilder;->setError(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 38
    :catch_2
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/service/result/AppScopedAccessTokenResultBuilder;->setError(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method
