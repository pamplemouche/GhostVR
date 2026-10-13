.class Lcom/oculus/auth/components/LoginComponents$14;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "LoginComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/components/LoginComponents;->fetchUserAsync(Ljava/lang/String;)Lbolts/Task;
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

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$start:J

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/LoginComponents;JLbolts/TaskCompletionSource;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/oculus/auth/components/LoginComponents$14;->this$0:Lcom/oculus/auth/components/LoginComponents;

    iput-wide p2, p0, Lcom/oculus/auth/components/LoginComponents$14;->val$start:J

    iput-object p4, p0, Lcom/oculus/auth/components/LoginComponents$14;->val$tcs:Lbolts/TaskCompletionSource;

    iput-object p5, p0, Lcom/oculus/auth/components/LoginComponents$14;->val$accessToken:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 7

    .prologue
    .line 430
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/auth/components/LoginComponents$14;->val$start:J

    sub-long/2addr v0, v2

    .line 432
    const-string v2, "LoginComponents"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Failed to fetch user [%dms]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 433
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$14;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 434
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/profile/MyUserProfileResponse;)V
    .locals 6

    .prologue
    .line 421
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/auth/components/LoginComponents$14;->val$start:J

    sub-long/2addr v0, v2

    .line 423
    iget-object v2, p1, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;->viewer:Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;

    iget-object v2, v2, Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;->user:Lcom/oculus/horizon/api/common/user/User;

    .line 424
    const-string v3, "LoginComponents"

    const-string v4, "Received user response with user id [%s] [%dms]"

    iget-object v5, v2, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4, v5, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$14;->val$tcs:Lbolts/TaskCompletionSource;

    new-instance v1, Lcom/oculus/auth/credentials/Credentials;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/auth/components/LoginComponents$14;->val$accessToken:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/oculus/auth/credentials/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 426
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 418
    check-cast p1, Lcom/oculus/horizon/api/profile/MyUserProfileResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/LoginComponents$14;->onResponse(Lcom/oculus/horizon/api/profile/MyUserProfileResponse;)V

    return-void
.end method
