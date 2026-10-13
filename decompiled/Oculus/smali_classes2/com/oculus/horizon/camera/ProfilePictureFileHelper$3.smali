.class Lcom/oculus/horizon/camera/ProfilePictureFileHelper$3;
.super Ljava/lang/Object;
.source "ProfilePictureFileHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->startDeleteProfilePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/camera/ProfilePictureFileHelper;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$3;->this$0:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$3;->this$0:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    invoke-static {v0}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->access$100(Lcom/oculus/horizon/camera/ProfilePictureFileHelper;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "oculus_profile_picture.jpg"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 115
    invoke-static {}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->access$200()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    const-string v0, "Deleted profile picture"

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 115
    :cond_0
    const-string v0, "No profile picture to delete"

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
