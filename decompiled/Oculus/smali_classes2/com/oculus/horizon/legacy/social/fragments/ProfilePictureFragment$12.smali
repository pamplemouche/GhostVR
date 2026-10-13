.class Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$12;
.super Ljava/lang/Object;
.source "ProfilePictureFragment.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->onProfilePictureSaved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$12;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 504
    invoke-static {}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to upload profile picture: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$12;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->isViewDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$12;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->access$1200(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V

    .line 508
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 492
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$12;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1    # Ljava/lang/Void;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 495
    invoke-static {}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Successfully uploaded profile picture"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$12;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->access$1300(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->refresh()Lbolts/Task;

    .line 497
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$12;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->isViewDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$12;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->access$1200(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V

    .line 500
    :cond_0
    return-void
.end method
