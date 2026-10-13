.class Lcom/oculus/vrshell/Screenshot$1;
.super Ljava/lang/Object;
.source "Screenshot.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/Screenshot;->setImageListener(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/Screenshot;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/Screenshot;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/oculus/vrshell/Screenshot$1;->this$0:Lcom/oculus/vrshell/Screenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 5

    .line 56
    invoke-static {}, Lcom/oculus/vrshell/Screenshot;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onImageAvailable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/oculus/vrshell/Screenshot$1;->this$0:Lcom/oculus/vrshell/Screenshot;

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oculus/vrshell/Screenshot;->access$102(Lcom/oculus/vrshell/Screenshot;Landroid/media/Image;)Landroid/media/Image;

    .line 58
    iget-object p1, p0, Lcom/oculus/vrshell/Screenshot$1;->this$0:Lcom/oculus/vrshell/Screenshot;

    invoke-static {p1}, Lcom/oculus/vrshell/Screenshot;->access$100(Lcom/oculus/vrshell/Screenshot;)Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/oculus/vrshell/Screenshot$1;->this$0:Lcom/oculus/vrshell/Screenshot;

    invoke-static {p1}, Lcom/oculus/vrshell/Screenshot;->access$100(Lcom/oculus/vrshell/Screenshot;)Landroid/media/Image;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrshell/Screenshot$1;->this$0:Lcom/oculus/vrshell/Screenshot;

    .line 62
    invoke-static {v0}, Lcom/oculus/vrshell/Screenshot;->access$100(Lcom/oculus/vrshell/Screenshot;)Landroid/media/Image;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oculus/vrshell/Screenshot$1;->this$0:Lcom/oculus/vrshell/Screenshot;

    .line 63
    invoke-static {v1}, Lcom/oculus/vrshell/Screenshot;->access$100(Lcom/oculus/vrshell/Screenshot;)Landroid/media/Image;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v1

    const/16 v2, 0x55

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/oculus/vrshell/Screenshot$1;->this$0:Lcom/oculus/vrshell/Screenshot;

    .line 65
    invoke-static {v4}, Lcom/oculus/vrshell/Screenshot;->access$200(Lcom/oculus/vrshell/Screenshot;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 61
    invoke-static {v0, v1, v2, v3, p1}, Lcom/oculus/vrshell/Screenshot;->access$300(IIILjava/io/OutputStream;[Landroid/media/Image$Plane;)V

    .line 67
    iget-object p1, p0, Lcom/oculus/vrshell/Screenshot$1;->this$0:Lcom/oculus/vrshell/Screenshot;

    invoke-static {p1}, Lcom/oculus/vrshell/Screenshot;->access$200(Lcom/oculus/vrshell/Screenshot;)Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/vrshell/Screenshot$1;->this$0:Lcom/oculus/vrshell/Screenshot;

    invoke-static {v0}, Lcom/oculus/vrshell/Screenshot;->access$400(Lcom/oculus/vrshell/Screenshot;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oculus/vrshell/Screenshot;->access$500(Ljava/io/File;Landroid/content/Context;)V

    .line 70
    iget-object p1, p0, Lcom/oculus/vrshell/Screenshot$1;->this$0:Lcom/oculus/vrshell/Screenshot;

    iget-object v0, p0, Lcom/oculus/vrshell/Screenshot$1;->this$0:Lcom/oculus/vrshell/Screenshot;

    .line 71
    invoke-static {v0}, Lcom/oculus/vrshell/Screenshot;->access$400(Lcom/oculus/vrshell/Screenshot;)Landroid/content/Context;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/common/notifications/R$string;->screenshot_notification_title:I

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/vrshell/Screenshot$1;->this$0:Lcom/oculus/vrshell/Screenshot;

    .line 75
    invoke-static {v1}, Lcom/oculus/vrshell/Screenshot;->access$400(Lcom/oculus/vrshell/Screenshot;)Landroid/content/Context;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/common/notifications/R$string;->screenshot_notification_success:I

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {p1, v0, v1}, Lcom/oculus/vrshell/Screenshot;->access$600(Lcom/oculus/vrshell/Screenshot;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    iget-object p1, p0, Lcom/oculus/vrshell/Screenshot$1;->this$0:Lcom/oculus/vrshell/Screenshot;

    .line 87
    invoke-static {p1}, Lcom/oculus/vrshell/Screenshot;->access$400(Lcom/oculus/vrshell/Screenshot;)Landroid/content/Context;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/common/notifications/R$string;->screenshot_notification_title:I

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/vrshell/Screenshot$1;->this$0:Lcom/oculus/vrshell/Screenshot;

    .line 91
    invoke-static {v1}, Lcom/oculus/vrshell/Screenshot;->access$400(Lcom/oculus/vrshell/Screenshot;)Landroid/content/Context;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/common/notifications/R$string;->screenshot_notification_failure:I

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {p1, v0, v1}, Lcom/oculus/vrshell/Screenshot;->access$600(Lcom/oculus/vrshell/Screenshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    iget-object p1, p0, Lcom/oculus/vrshell/Screenshot$1;->this$0:Lcom/oculus/vrshell/Screenshot;

    invoke-static {p1}, Lcom/oculus/vrshell/Screenshot;->access$700(Lcom/oculus/vrshell/Screenshot;)V

    :cond_0
    return-void
.end method
