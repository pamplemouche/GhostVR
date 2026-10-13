.class public Lcom/oculus/horizon/service/result/DurableIAPResultBuilder;
.super Lcom/oculus/horizon/service/result/ResultBuilder;
.source "DurableIAPResultBuilder.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$PurchasesForJSON;,
        Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$PurchaseForJSON;,
        Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$ItemForJSON;
    }
.end annotation


# instance fields
.field private final mDurableIAPStorage:Lcom/oculus/durableiap/DurableIAPStorage;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mGson:Lcom/google/gson/Gson;

.field private final mLibrary:Lcom/oculus/libraryapi/OVRLibrary;
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
    .line 69
    invoke-direct {p0, p2}, Lcom/oculus/horizon/service/result/ResultBuilder;-><init>(Lcom/oculus/horizon/service/OVRService;)V

    .line 27
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder;->mGson:Lcom/google/gson/Gson;

    .line 68
    invoke-static {p1}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibrary$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder;->mLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    invoke-static {p1}, Lcom/oculus/durableiap/DurableIAPStorage;->$ul_$xXXcom_oculus_durableiap_DurableIAPStorage$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/durableiap/DurableIAPStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder;->mDurableIAPStorage:Lcom/oculus/durableiap/DurableIAPStorage;

    .line 70
    return-void
.end method


# virtual methods
.method public getResult(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 77
    iget-object v1, p0, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder;->mLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    invoke-virtual {v1, p2}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v1

    .line 78
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    if-nez v1, :cond_0

    .line 81
    new-instance v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException;

    invoke-direct {v0, p2}, Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException;-><init>(Ljava/lang/String;)V

    const-string v1, "Package not in library"

    sget-object v2, Lcom/oculus/platform/util/OVRError;->AUTHENTICATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder;->setError(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder;->mDurableIAPStorage:Lcom/oculus/durableiap/DurableIAPStorage;

    iget-object v1, v1, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/oculus/durableiap/DurableIAPStorage;->getPurchases(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 88
    new-instance v2, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$PurchasesForJSON;

    invoke-direct {v2, v1}, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$PurchasesForJSON;-><init>(Ljava/util/List;)V

    .line 90
    const-string v1, "purchases_json"

    iget-object v3, p0, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
