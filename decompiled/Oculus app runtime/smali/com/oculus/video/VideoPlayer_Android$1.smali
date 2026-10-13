.class Lcom/oculus/video/VideoPlayer_Android$1;
.super Ljava/lang/Object;
.source "VideoPlayer_Android.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/VideoPlayer_Android;->configureVideoPlayerHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/VideoPlayer_Android;


# direct methods
.method constructor <init>(Lcom/oculus/video/VideoPlayer_Android;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/oculus/video/VideoPlayer_Android$1;->this$0:Lcom/oculus/video/VideoPlayer_Android;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 239
    invoke-static {}, Lcom/oculus/video/VideoPlayer_Android;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "videoPlayerThread.uncaughtException"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :try_start_0
    iget-object p1, p0, Lcom/oculus/video/VideoPlayer_Android$1;->this$0:Lcom/oculus/video/VideoPlayer_Android;

    invoke-static {p1}, Lcom/oculus/video/VideoPlayer_Android;->access$400(Lcom/oculus/video/VideoPlayer_Android;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :catch_0
    iget-object p1, p0, Lcom/oculus/video/VideoPlayer_Android$1;->this$0:Lcom/oculus/video/VideoPlayer_Android;

    invoke-static {p1}, Lcom/oculus/video/VideoPlayer_Android;->access$500(Lcom/oculus/video/VideoPlayer_Android;)V

    return-void
.end method
