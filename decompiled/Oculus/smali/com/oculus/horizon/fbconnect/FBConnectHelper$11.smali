.class Lcom/oculus/horizon/fbconnect/FBConnectHelper$11;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "FBConnectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnect/FBConnectHelper;->unsyncFBFriends()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$11;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 645
    const/4 v0, 0x2

    sget v1, Lcom/oculus/errorreporting/ErrorReportingModule$UL_id;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$11;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v2}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$400(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/errorreporting/ErrorReporter;

    invoke-static {}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$11;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$000(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$11;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$000(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;->onFBUnsyncFriendsError(Lcom/oculus/http/core/base/ApiError;)V

    .line 650
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;)V
    .locals 2

    .prologue
    .line 636
    invoke-static {}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FB friends unsynced successfully"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$11;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$000(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$11;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$000(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;->onFBUnsyncFriendsSuccess()V

    .line 641
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 633
    check-cast p1, Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper$11;->onResponse(Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;)V

    return-void
.end method
