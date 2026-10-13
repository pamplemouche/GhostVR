.class Lcom/oculus/auth/components/LoginComponents$18;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "LoginComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/components/LoginComponents;->fetchUserProfileAsync(Ljava/lang/String;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/profile/MyUserProfileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/components/LoginComponents;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/LoginComponents;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/oculus/auth/components/LoginComponents$18;->this$0:Lcom/oculus/auth/components/LoginComponents;

    iput-object p2, p0, Lcom/oculus/auth/components/LoginComponents$18;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 526
    const-string v0, "LoginComponents"

    const-string v1, "Error fetching user profile"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 527
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$18;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 528
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/profile/MyUserProfileResponse;)V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$18;->val$tcs:Lbolts/TaskCompletionSource;

    iget-object v1, p1, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    iget-object v1, v1, Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;->user:Lcom/oculus/horizon/api/common/user/User;

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 522
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 518
    check-cast p1, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/LoginComponents$18;->onResponse(Lcom/oculus/horizon/api/profile/MyUserProfileResponse;)V

    return-void
.end method
