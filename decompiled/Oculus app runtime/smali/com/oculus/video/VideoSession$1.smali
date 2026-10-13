.class Lcom/oculus/video/VideoSession$1;
.super Ljava/lang/Object;
.source "VideoSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/VideoSession;->prepareVideo(Landroid/content/Context;Lcom/oculus/video/Video;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/VideoSession;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$video:Lcom/oculus/video/Video;


# direct methods
.method constructor <init>(Lcom/oculus/video/VideoSession;Lcom/oculus/video/Video;Landroid/content/Context;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/oculus/video/VideoSession$1;->this$0:Lcom/oculus/video/VideoSession;

    iput-object p2, p0, Lcom/oculus/video/VideoSession$1;->val$video:Lcom/oculus/video/Video;

    iput-object p3, p0, Lcom/oculus/video/VideoSession$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/oculus/video/VideoSession$1;->this$0:Lcom/oculus/video/VideoSession;

    new-instance v1, Lcom/oculus/video/VideoInfoExtractor;

    iget-object v2, p0, Lcom/oculus/video/VideoSession$1;->val$video:Lcom/oculus/video/Video;

    invoke-direct {v1, v2}, Lcom/oculus/video/VideoInfoExtractor;-><init>(Lcom/oculus/video/Video;)V

    invoke-static {v0, v1}, Lcom/oculus/video/VideoSession;->access$002(Lcom/oculus/video/VideoSession;Lcom/oculus/video/VideoInfoExtractor;)Lcom/oculus/video/VideoInfoExtractor;

    .line 192
    iget-object v0, p0, Lcom/oculus/video/VideoSession$1;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0}, Lcom/oculus/video/VideoSession;->access$000(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoInfoExtractor;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/video/VideoSession$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/video/VideoSession$1;->this$0:Lcom/oculus/video/VideoSession;

    .line 194
    invoke-static {v2}, Lcom/oculus/video/VideoSession;->access$100(Lcom/oculus/video/VideoSession;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oculus/video/VideoSession$1$1;

    invoke-direct {v3, p0}, Lcom/oculus/video/VideoSession$1$1;-><init>(Lcom/oculus/video/VideoSession$1;)V

    .line 192
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/video/VideoInfoExtractor;->extract(Landroid/content/Context;Landroid/os/Handler;Lcom/oculus/video/VideoInfoExtractor$Listener;)V

    return-void
.end method
