.class Lcom/facebook/fbuploader/UploadJobImpl$4;
.super Ljava/lang/Object;
.source "UploadJobImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fbuploader/UploadJobImpl;->registerNetworkMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/fbuploader/UploadJobImpl;


# direct methods
.method constructor <init>(Lcom/facebook/fbuploader/UploadJobImpl;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/facebook/fbuploader/UploadJobImpl$4;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$4;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    invoke-static {v0}, Lcom/facebook/fbuploader/UploadJobImpl;->access$800(Lcom/facebook/fbuploader/UploadJobImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$4;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    invoke-static {v0}, Lcom/facebook/fbuploader/UploadJobImpl;->access$800(Lcom/facebook/fbuploader/UploadJobImpl;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 571
    monitor-exit v1

    .line 572
    return-void

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
