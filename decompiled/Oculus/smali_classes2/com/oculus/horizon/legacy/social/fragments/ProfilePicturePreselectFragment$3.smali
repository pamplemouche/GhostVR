.class Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$3;
.super Ljava/lang/Object;
.source "ProfilePicturePreselectFragment.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->onProfilePictureSaved()V
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
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$3;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 237
    invoke-static {}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to upload profile picture: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$3;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->isViewDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$3;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$300(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V

    .line 241
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
    .line 225
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$3;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1    # Ljava/lang/Void;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 228
    invoke-static {}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Successfully uploaded profile picture"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$3;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$800(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->refresh()Lbolts/Task;

    .line 230
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$3;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->isViewDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$3;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$300(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V

    .line 233
    :cond_0
    return-void
.end method
