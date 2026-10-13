.class public Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3GzipUtils;
.super Ljava/lang/Object;
.source "OkHttp3GzipUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHttpHeader(Lokhttp3/Headers$Builder;)V
    .locals 2

    .prologue
    .line 40
    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 41
    return-void
.end method

.method public static gzippedBody(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3GzipUtils$1;

    invoke-direct {v0, p0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3GzipUtils$1;-><init>(Lokhttp3/RequestBody;)V

    return-object v0
.end method
