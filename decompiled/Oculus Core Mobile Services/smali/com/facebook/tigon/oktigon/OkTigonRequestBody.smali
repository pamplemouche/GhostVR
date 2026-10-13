.class Lcom/facebook/tigon/oktigon/OkTigonRequestBody;
.super Lokhttp3/RequestBody;
.source "OkTigonRequestBody.java"


# static fields
.field private static final DEFAULT_MEDIA_TYPE:Lokhttp3/MediaType;


# instance fields
.field private final mBody:[B

.field private final mMediaType:Lokhttp3/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/facebook/tigon/oktigon/OkTigonRequestBody;->DEFAULT_MEDIA_TYPE:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/tigon/oktigon/OkTigonRequestBody;->mBody:[B

    .line 19
    if-eqz p2, :cond_0

    .line 20
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/tigon/oktigon/OkTigonRequestBody;->mMediaType:Lokhttp3/MediaType;

    .line 21
    return-void

    .line 20
    :cond_0
    sget-object v0, Lcom/facebook/tigon/oktigon/OkTigonRequestBody;->DEFAULT_MEDIA_TYPE:Lokhttp3/MediaType;

    goto :goto_0
.end method


# virtual methods
.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/tigon/oktigon/OkTigonRequestBody;->mMediaType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/tigon/oktigon/OkTigonRequestBody;->mBody:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 31
    return-void
.end method
