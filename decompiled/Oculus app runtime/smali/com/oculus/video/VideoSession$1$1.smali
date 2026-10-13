.class Lcom/oculus/video/VideoSession$1$1;
.super Ljava/lang/Object;
.source "VideoSession.java"

# interfaces
.implements Lcom/oculus/video/VideoInfoExtractor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/VideoSession$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/video/VideoSession$1;


# direct methods
.method constructor <init>(Lcom/oculus/video/VideoSession$1;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/oculus/video/VideoSession$1$1;->this$1:Lcom/oculus/video/VideoSession$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Z)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/oculus/video/VideoSession$1$1;->this$1:Lcom/oculus/video/VideoSession$1;

    iget-object v0, v0, Lcom/oculus/video/VideoSession$1;->this$0:Lcom/oculus/video/VideoSession;

    iget-object v1, p0, Lcom/oculus/video/VideoSession$1$1;->this$1:Lcom/oculus/video/VideoSession$1;

    iget-object v1, v1, Lcom/oculus/video/VideoSession$1;->val$video:Lcom/oculus/video/Video;

    invoke-static {v0, v1, p1}, Lcom/oculus/video/VideoSession;->access$200(Lcom/oculus/video/VideoSession;Lcom/oculus/video/Video;Z)V

    .line 200
    iget-object p1, p0, Lcom/oculus/video/VideoSession$1$1;->this$1:Lcom/oculus/video/VideoSession$1;

    iget-object p1, p1, Lcom/oculus/video/VideoSession$1;->this$0:Lcom/oculus/video/VideoSession;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oculus/video/VideoSession;->access$002(Lcom/oculus/video/VideoSession;Lcom/oculus/video/VideoInfoExtractor;)Lcom/oculus/video/VideoInfoExtractor;

    return-void
.end method
