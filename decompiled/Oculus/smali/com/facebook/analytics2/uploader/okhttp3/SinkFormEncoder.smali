.class Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;
.super Ljava/lang/Object;
.source "SinkFormEncoder.java"


# instance fields
.field private mHasFields:Z

.field private final mSink:Lokio/BufferedSink;


# direct methods
.method public constructor <init>(Lokio/BufferedSink;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;->mHasFields:Z

    .line 19
    iput-object p1, p0, Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;->mSink:Lokio/BufferedSink;

    .line 20
    return-void
.end method


# virtual methods
.method write(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;->mHasFields:Z

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;->mSink:Lokio/BufferedSink;

    const-string v1, "&"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;->mSink:Lokio/BufferedSink;

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const-string v1, "="

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 30
    if-eqz p2, :cond_1

    .line 31
    iget-object v0, p0, Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;->mSink:Lokio/BufferedSink;

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 33
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;->mHasFields:Z

    .line 34
    return-object p0
.end method
