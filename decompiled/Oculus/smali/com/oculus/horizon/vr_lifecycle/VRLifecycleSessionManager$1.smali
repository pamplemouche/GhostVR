.class Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "VRLifecycleSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;->markSessionEndIfNotRecentAndInfoExists(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$MarkSessionEndCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;

.field final synthetic val$callback:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$MarkSessionEndCallback;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$MarkSessionEndCallback;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$1;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;

    iput-object p2, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$1;->val$callback:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$MarkSessionEndCallback;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$1;->val$callback:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$MarkSessionEndCallback;

    invoke-interface {v0, p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$MarkSessionEndCallback;->onError(Lcom/oculus/http/core/base/ApiError;)V

    .line 230
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleResponse;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$1;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;

    invoke-static {v0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;->access$000(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;->access$100(Landroid/content/Context;)V

    .line 224
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$1;->val$callback:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$MarkSessionEndCallback;

    invoke-interface {v0, p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$MarkSessionEndCallback;->onSuccess(Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleResponse;)V

    .line 225
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 220
    check-cast p1, Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$1;->onResponse(Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleResponse;)V

    return-void
.end method
