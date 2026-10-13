.class final Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$4;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "MainActivityInterstitialQuickPromotionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;->handleActionLocally(Lcom/oculus/horizon/promotion/query/QuickPromotionMethods;Lcom/oculus/horizon/promotion/Promotion$PromotionAction;Lcom/oculus/errorreporting/ErrorReporter;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 274
    invoke-static {}, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "graphPost() error: "

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 269
    invoke-static {}, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "graphPost() succeeded"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method
