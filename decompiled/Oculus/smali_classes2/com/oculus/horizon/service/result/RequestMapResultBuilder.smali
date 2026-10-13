.class public Lcom/oculus/horizon/service/result/RequestMapResultBuilder;
.super Lcom/oculus/horizon/service/result/ResultBuilder;
.source "RequestMapResultBuilder.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Lcom/facebook/inject/ForAppContext;
    .end annotation

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
    .line 29
    invoke-direct {p0, p2}, Lcom/oculus/horizon/service/result/ResultBuilder;-><init>(Lcom/oculus/horizon/service/OVRService;)V

    .line 28
    invoke-static {p1}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/result/RequestMapResultBuilder;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public getResult(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 38
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/oculus/horizon/service/result/RequestMapResultBuilder;->mContext:Landroid/content/Context;

    const-class v4, Lcom/oculus/horizon/spatialai/SpatialAIService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 40
    const-string v2, "action_localize_on_map"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v2, "uuid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuid parameter is required!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    :goto_0
    const-string v1, "Failed to start map sharing service."

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/service/result/RequestMapResultBuilder;->setError(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    return-object v0

    .line 46
    :cond_0
    :try_start_1
    const-string v3, "uuid"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v2, "receiver_tag"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Result receiver was not provided!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :catch_1
    move-exception v0

    goto :goto_0

    .line 52
    :cond_1
    const-string v3, "receiver_tag"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    iget-object v2, p0, Lcom/oculus/horizon/service/result/RequestMapResultBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/facebook/secure/context/SecureContext;->launchInternalService(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1
.end method
