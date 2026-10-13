.class Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$1;
.super Ljava/lang/Object;
.source "Nux360FBLoginIntroFragment.java"

# interfaces
.implements Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFBAccountLinkError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    return-void
.end method

.method public onFBAccountLinkSuccess()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onFBAccountUnlinkError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 112
    return-void
.end method

.method public onFBAccountUnlinkSuccess()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onFBAuthCancelled()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->hideLoading()V

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$600(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "auth_cancelled"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginEvent(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onFBAuthError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$500(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Lcom/oculus/http/core/base/ApiError;)V

    .line 86
    return-void
.end method

.method public onFBAuthSuccess(Lcom/facebook/AccessToken;)V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$400(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onFBDataFetchComplete(Lcom/oculus/horizon/fbconnect/FacebookData;)V
    .locals 3

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)V

    .line 76
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;

    invoke-direct {v0}, Lcom/oculus/horizon/nux360/FBLoginData$Builder;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/oculus/horizon/fbconnect/FacebookData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->setRealName(Ljava/lang/String;)Lcom/oculus/horizon/nux360/FBLoginData$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oculus/horizon/fbconnect/FacebookData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->setFacebookId(Ljava/lang/String;)Lcom/oculus/horizon/nux360/FBLoginData$Builder;

    .line 72
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->build()Lcom/oculus/horizon/nux360/FBLoginData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;->setData(Lcom/oculus/horizon/nux360/FBLoginData;)V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$300(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Lcom/oculus/horizon/fbconnect/FacebookData;)V

    goto :goto_0
.end method

.method public onFBSyncFriendsError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 122
    return-void
.end method

.method public onFBSyncFriendsSuccess()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onFBUnsyncFriendsError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 132
    return-void
.end method

.method public onFBUnsyncFriendsSuccess()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method
