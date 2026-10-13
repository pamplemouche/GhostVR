.class public Lcom/facebook/tigon/oktigon/OkTigonRequestToken;
.super Lcom/facebook/tigon/javaservice/AbstractRequestToken;
.source "OkTigonRequestToken.java"

# interfaces
.implements Lokhttp3/Callback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveCall:Lokhttp3/Call;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "oktigon"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 25
    const-class v0, Lcom/facebook/tigon/oktigon/OkTigonRequestToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/tigon/oktigon/OkTigonRequestToken;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/tigon/javaservice/AbstractRequestToken;-><init>(Lcom/facebook/jni/HybridData;)V

    .line 32
    return-void
.end method

.method private native failure(ILjava/lang/String;ILjava/lang/String;)V
.end method

.method private static flattenHeaders(Lokhttp3/Headers;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    move v1, v0

    .line 90
    :goto_0
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 91
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 92
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-object v2
.end method

.method private static mapOkTigonException(Ljava/io/IOException;)I
    .locals 2

    .prologue
    .line 79
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x2

    .line 85
    :goto_0
    return v0

    .line 82
    :cond_0
    const-string v0, "Canceled"

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private native success(I[Ljava/lang/String;J[B)V
.end method


# virtual methods
.method public attachActiveCall(Lokhttp3/Call;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/tigon/oktigon/OkTigonRequestToken;->mActiveCall:Lokhttp3/Call;

    .line 36
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/tigon/oktigon/OkTigonRequestToken;->mActiveCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 65
    return-void
.end method

.method public changePriority(I)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4

    .prologue
    .line 43
    invoke-static {p2}, Lcom/facebook/tigon/oktigon/OkTigonRequestToken;->mapOkTigonException(Ljava/io/IOException;)I

    move-result v0

    .line 44
    const-string v1, "OkTigonErrorDomain"

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/tigon/oktigon/OkTigonRequestToken;->failure(ILjava/lang/String;ILjava/lang/String;)V

    .line 45
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v6

    .line 53
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/tigon/oktigon/OkTigonRequestToken;->flattenHeaders(Lokhttp3/Headers;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v6

    int-to-long v4, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/tigon/oktigon/OkTigonRequestToken;->success(I[Ljava/lang/String;J[B)V

    .line 54
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 55
    return-void
.end method
