.class Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$10;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "LiveStreamingSessionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->refetchUserProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/common/user/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$10;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 644
    invoke-static {}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to fetch user profile: %s."

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 645
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/common/user/User;)V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$10;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$2402(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;Lcom/oculus/horizon/api/common/user/User;)Lcom/oculus/horizon/api/common/user/User;

    .line 639
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$10;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$2500(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    .line 640
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 635
    check-cast p1, Lcom/oculus/horizon/api/common/user/User;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$10;->onResponse(Lcom/oculus/horizon/api/common/user/User;)V

    return-void
.end method
