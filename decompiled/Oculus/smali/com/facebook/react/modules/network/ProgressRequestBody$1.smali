.class Lcom/facebook/react/modules/network/ProgressRequestBody$1;
.super Lcom/facebook/react/modules/network/CountingOutputStream;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/network/ProgressRequestBody;->outputStreamSink(Lokio/BufferedSink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/network/ProgressRequestBody;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/network/ProgressRequestBody;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/facebook/react/modules/network/ProgressRequestBody$1;->this$0:Lcom/facebook/react/modules/network/ProgressRequestBody;

    invoke-direct {p0, p2}, Lcom/facebook/react/modules/network/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method private sendProgressUpdate()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/facebook/react/modules/network/ProgressRequestBody$1;->getCount()J

    move-result-wide v2

    .line 72
    iget-object v0, p0, Lcom/facebook/react/modules/network/ProgressRequestBody$1;->this$0:Lcom/facebook/react/modules/network/ProgressRequestBody;

    invoke-virtual {v0}, Lcom/facebook/react/modules/network/ProgressRequestBody;->contentLength()J

    move-result-wide v4

    .line 73
    iget-object v0, p0, Lcom/facebook/react/modules/network/ProgressRequestBody$1;->this$0:Lcom/facebook/react/modules/network/ProgressRequestBody;

    invoke-static {v0}, Lcom/facebook/react/modules/network/ProgressRequestBody;->access$000(Lcom/facebook/react/modules/network/ProgressRequestBody;)Lcom/facebook/react/modules/network/ProgressListener;

    move-result-object v1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-interface/range {v1 .. v6}, Lcom/facebook/react/modules/network/ProgressListener;->onProgress(JJZ)V

    .line 75
    return-void

    .line 73
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/facebook/react/modules/network/CountingOutputStream;->write(I)V

    .line 67
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ProgressRequestBody$1;->sendProgressUpdate()V

    .line 68
    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/modules/network/CountingOutputStream;->write([BII)V

    .line 61
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ProgressRequestBody$1;->sendProgressUpdate()V

    .line 62
    return-void
.end method
