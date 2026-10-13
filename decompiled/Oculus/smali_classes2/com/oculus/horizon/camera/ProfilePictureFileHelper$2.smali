.class Lcom/oculus/horizon/camera/ProfilePictureFileHelper$2;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "ProfilePictureFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->startUploadProfilePictureAndDeleteAfterwards(Lcom/google/common/util/concurrent/FutureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

.field final synthetic val$cb:Lcom/google/common/util/concurrent/FutureCallback;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/camera/ProfilePictureFileHelper;Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$2;->this$0:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    iput-object p2, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$2;->val$cb:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$2;->this$0:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->startDeleteProfilePicture()V

    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$2;->val$cb:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 103
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 88
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$2;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$2;->this$0:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->startDeleteProfilePicture()V

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$2;->val$cb:Lcom/google/common/util/concurrent/FutureCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/FutureCallback;->onSuccess(Ljava/lang/Object;)V

    .line 95
    return-void
.end method
