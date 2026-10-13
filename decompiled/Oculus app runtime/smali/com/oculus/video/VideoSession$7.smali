.class Lcom/oculus/video/VideoSession$7;
.super Ljava/lang/Object;
.source "VideoSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/VideoSession;->setSyncReferenceTimeMs(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/VideoSession;

.field final synthetic val$referenceTimeMs:J

.field final synthetic val$systemTimeMs:J


# direct methods
.method constructor <init>(Lcom/oculus/video/VideoSession;JJ)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/oculus/video/VideoSession$7;->this$0:Lcom/oculus/video/VideoSession;

    iput-wide p2, p0, Lcom/oculus/video/VideoSession$7;->val$referenceTimeMs:J

    iput-wide p4, p0, Lcom/oculus/video/VideoSession$7;->val$systemTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 386
    iget-object v0, p0, Lcom/oculus/video/VideoSession$7;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0}, Lcom/oculus/video/VideoSession;->access$700(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoPlayer;

    move-result-object v0

    instance-of v0, v0, Lcom/oculus/video/SyncMediaPlayer;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/oculus/video/VideoSession$7;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0}, Lcom/oculus/video/VideoSession;->access$700(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoPlayer;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/SyncMediaPlayer;

    iget-wide v1, p0, Lcom/oculus/video/VideoSession$7;->val$referenceTimeMs:J

    iget-wide v3, p0, Lcom/oculus/video/VideoSession$7;->val$systemTimeMs:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/video/SyncMediaPlayer;->setSyncReferenceTimeMs(JJ)V

    :cond_0
    return-void
.end method
