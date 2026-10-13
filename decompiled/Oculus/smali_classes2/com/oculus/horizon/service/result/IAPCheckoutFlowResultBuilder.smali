.class public Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilder;
.super Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;
.source "IAPCheckoutFlowResultBuilder.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/service/result/ResultBuilderNoBundle",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTENT_DATA:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mOfferID:Ljava/lang/String;

.field private final mPackageManager:Landroid/content/pm/PackageManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilder;

    sput-object v0, Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilder;->TAG:Ljava/lang/Class;

    .line 27
    const-string v0, "apk://com.oculus.vrshell.home"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilder;->INTENT_DATA:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/service/OVRService;Ljava/lang/String;)V
    .locals 1
    .param p2    # Lcom/oculus/horizon/service/OVRService;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p2}, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;-><init>(Lcom/oculus/horizon/service/OVRService;)V

    .line 34
    invoke-static {p1}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->$ul_$xXXcom_oculus_horizon_service_ExternalPlatformLocal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service/ExternalPlatformLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilder;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    invoke-static {p1}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_content_pm_PackageManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilder;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 36
    iput-object p3, p0, Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilder;->mOfferID:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getResult(Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadInlineConstants"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilder;->TAG:Ljava/lang/Class;

    const-string v1, "Building checkout flow intent"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilder;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.oculus.vrshell"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    const-string v1, "launch_checkout_flow"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    sget-object v1, Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilder;->INTENT_DATA:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    const/high16 v1, 0x18010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilder;->mOfferID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Offer ID for IAP is no longer supported, \'%s\' was given!"

    iget-object v2, p0, Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilder;->mOfferID:Ljava/lang/String;

    .line 56
    invoke-static {v1, v2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    const-string v1, "sku"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Missing required \'sku\' argument for IAP!"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilder;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    invoke-virtual {v2, p1, p2}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->getAppID(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    const-string v3, "app_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v3, "uri"

    const-string v4, "/iap/%s/%s/"

    invoke-static {v4, v2, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :catch_1
    move-exception v0

    .line 72
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic getResult(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadInlineConstants"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilder;->getResult(Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
