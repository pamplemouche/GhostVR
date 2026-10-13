.class Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2$1;
.super Ljava/lang/Object;
.source "ProfilePicturePreselectFragment.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2$1;->this$1:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 181
    invoke-static {}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to save profile picture: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2$1;->this$1:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;

    iget-object v0, v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->isViewDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2$1;->this$1:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;

    iget-object v0, v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$300(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V

    .line 185
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
    .line 172
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1    # Ljava/lang/Void;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 175
    invoke-static {}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Successfully saved profile picture"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2$1;->this$1:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;

    iget-object v0, v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$600(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V

    .line 177
    return-void
.end method
