.class Lcom/oculus/horizon/pdp/ReviewFragment$4;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/ReviewFragment;->onSendFinished(Lcom/oculus/http/core/base/ApiError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/ReviewFragment;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/oculus/horizon/pdp/ReviewFragment$4;->this$0:Lcom/oculus/horizon/pdp/ReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment$4;->this$0:Lcom/oculus/horizon/pdp/ReviewFragment;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/ReviewFragment;->access$400(Lcom/oculus/horizon/pdp/ReviewFragment;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewFragment$4;->this$0:Lcom/oculus/horizon/pdp/ReviewFragment;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/ReviewFragment;->access$300(Lcom/oculus/horizon/pdp/ReviewFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getAppInternalById(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewFragment$4;->this$0:Lcom/oculus/horizon/pdp/ReviewFragment;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/ReviewFragment;->access$600(Lcom/oculus/horizon/pdp/ReviewFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ReviewFragment$4;->this$0:Lcom/oculus/horizon/pdp/ReviewFragment;

    .line 215
    invoke-static {v2}, Lcom/oculus/horizon/pdp/ReviewFragment;->access$300(Lcom/oculus/horizon/pdp/ReviewFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ReviewFragment$4;->this$0:Lcom/oculus/horizon/pdp/ReviewFragment;

    invoke-static {v3}, Lcom/oculus/horizon/pdp/ReviewFragment;->access$500(Lcom/oculus/horizon/pdp/ReviewFragment;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_0

    const-string v0, "unknown"

    .line 214
    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportUserReviewCreated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void

    .line 215
    :cond_0
    iget-object v0, v0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    invoke-virtual {v0}, Lcom/oculus/library/model/AppStatus;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
