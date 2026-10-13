.class Lcom/oculus/horizon/camera/ProfilePictureFileHelper$1;
.super Ljava/lang/Object;
.source "ProfilePictureFileHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->startSaveProfilePicture(Landroid/graphics/Bitmap;Lcom/google/common/util/concurrent/FutureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

.field final synthetic val$pictureBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/camera/ProfilePictureFileHelper;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$1;->this$0:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    iput-object p2, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$1;->val$pictureBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$1;->this$0:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    .line 67
    invoke-static {v0}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->access$100(Lcom/oculus/horizon/camera/ProfilePictureFileHelper;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "oculus_profile_picture.jpg"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$1;->val$pictureBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 73
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 74
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
