.class final Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader$1;
.super Lokhttp3/RequestBody;
.source "OkHttp3AnalyticsUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->bodyFromPayload(Lcom/facebook/analytics2/logger/BatchPayload;Ljava/lang/String;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$batchPayload:Lcom/facebook/analytics2/logger/BatchPayload;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/analytics2/logger/BatchPayload;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader$1;->val$accessToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader$1;->val$batchPayload:Lcom/facebook/analytics2/logger/BatchPayload;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 143
    invoke-static {}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->access$000()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;

    invoke-direct {v0, p1}, Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;-><init>(Lokio/BufferedSink;)V

    .line 151
    iget-object v1, p0, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader$1;->val$accessToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "access_token"

    .line 152
    invoke-virtual {v0, v2, v1}, Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;->write(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;

    :cond_0
    const-string v1, "format"

    const-string v2, "json"

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;->write(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;

    move-result-object v1

    const-string v2, "compressed"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;->write(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;

    .line 159
    iget-object v1, p0, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader$1;->val$batchPayload:Lcom/facebook/analytics2/logger/BatchPayload;

    invoke-interface {v1}, Lcom/facebook/analytics2/logger/BatchPayload;->isMultiBatch()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "multi_batch"

    const-string v2, "1"

    .line 160
    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;->write(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;

    :cond_1
    const/4 v1, 0x0

    const-string v2, "message"

    .line 164
    invoke-virtual {v0, v2, v1}, Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;->write(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/uploader/okhttp3/SinkFormEncoder;

    .line 166
    iget-object v0, p0, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader$1;->val$batchPayload:Lcom/facebook/analytics2/logger/BatchPayload;

    new-instance v1, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;

    new-instance v2, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;

    .line 167
    invoke-interface {p1}, Lokio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;-><init>(Ljava/io/Writer;)V

    .line 166
    invoke-interface {v0, v1}, Lcom/facebook/analytics2/logger/BatchPayload;->writeRawTo(Ljava/io/Writer;)V

    return-void
.end method
