.class public abstract Lfi/iki/elonen/NanoHTTPD;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;,
        Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;,
        Lfi/iki/elonen/NanoHTTPD$TempFileManager;,
        Lfi/iki/elonen/NanoHTTPD$TempFile;,
        Lfi/iki/elonen/NanoHTTPD$ServerRunnable;,
        Lfi/iki/elonen/NanoHTTPD$ResponseException;,
        Lfi/iki/elonen/NanoHTTPD$Response;,
        Lfi/iki/elonen/NanoHTTPD$Method;,
        Lfi/iki/elonen/NanoHTTPD$IHTTPSession;,
        Lfi/iki/elonen/NanoHTTPD$HTTPSession;,
        Lfi/iki/elonen/NanoHTTPD$ContentType;,
        Lfi/iki/elonen/NanoHTTPD$DefaultServerSocketFactory;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;,
        Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;,
        Lfi/iki/elonen/NanoHTTPD$CookieHandler;,
        Lfi/iki/elonen/NanoHTTPD$Cookie;,
        Lfi/iki/elonen/NanoHTTPD$ClientHandler;,
        Lfi/iki/elonen/NanoHTTPD$AsyncRunner;
    }
.end annotation


# static fields
.field private static final CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

.field private final hostname:Ljava/lang/String;

.field private final myPort:I

.field private volatile myServerSocket:Ljava/net/ServerSocket;

.field private myThread:Ljava/lang/Thread;

.field private proxyEnabled:Z

.field private serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 523
    const-string v0, "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 527
    const-string v0, "([ |\t]*content-type[ |\t]*:)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    .line 531
    const-string v0, "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    .line 2057
    const-class v0, Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 2230
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    .line 2231
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 2244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD;->proxyEnabled:Z

    .line 2212
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultServerSocketFactory;

    invoke-direct {v0}, Lfi/iki/elonen/NanoHTTPD$DefaultServerSocketFactory;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    .line 2245
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    .line 2246
    iput p2, p0, Lfi/iki/elonen/NanoHTTPD;->myPort:I

    .line 2247
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;-><init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$1;)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->setTempFileManagerFactory(Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;)V

    .line 2248
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;

    invoke-direct {v0}, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;-><init>()V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->setAsyncRunner(Lfi/iki/elonen/NanoHTTPD$AsyncRunner;)V

    .line 2249
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 156
    invoke-static {p0}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    return-object v0
.end method

.method static synthetic access$1000(Lfi/iki/elonen/NanoHTTPD;)I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lfi/iki/elonen/NanoHTTPD;->myPort:I

    return v0
.end method

.method static synthetic access$1100(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$600(Lfi/iki/elonen/NanoHTTPD;)Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD;->proxyEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lfi/iki/elonen/NanoHTTPD;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method static synthetic access$900(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method protected static decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 2341
    const/4 v0, 0x0

    .line 2343
    :try_start_0
    const-string v1, "UTF8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2347
    :goto_0
    return-object v0

    .line 2344
    :catch_0
    move-exception v1

    .line 2345
    sget-object v2, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Encoding not supported, ignored"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 7

    .prologue
    .line 2411
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2418
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$ContentType;

    invoke-direct {v1, p1}, Lfi/iki/elonen/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    .line 2419
    if-nez p2, :cond_0

    .line 2420
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v1, v5, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    .line 2433
    :goto_0
    return-object v0

    .line 2424
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 2425
    invoke-virtual {v0, p2}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2426
    invoke-virtual {v1}, Lfi/iki/elonen/NanoHTTPD$ContentType;->tryUTF8()Lfi/iki/elonen/NanoHTTPD$ContentType;

    move-result-object v1

    .line 2428
    :cond_1
    invoke-virtual {v1}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2433
    :goto_1
    invoke-virtual {v1}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getContentTypeHeader()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v0, v0

    int-to-long v4, v0

    invoke-static {p0, v1, v2, v4, v5}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    goto :goto_0

    .line 2429
    :catch_0
    move-exception v0

    .line 2430
    sget-object v2, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "encoding problem, responding nothing"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2431
    new-array v0, v5, [B

    goto :goto_1
.end method

.method private static final safeClose(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2186
    if-eqz p0, :cond_0

    .line 2187
    :try_start_0
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_1

    .line 2188
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 2200
    :cond_0
    :goto_0
    return-void

    .line 2189
    :cond_1
    instance-of v0, p0, Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 2190
    check-cast p0, Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2197
    :catch_0
    move-exception v0

    .line 2198
    sget-object v1, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not close"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2191
    :cond_2
    :try_start_1
    instance-of v0, p0, Ljava/net/ServerSocket;

    if-eqz v0, :cond_3

    .line 2192
    check-cast p0, Ljava/net/ServerSocket;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    goto :goto_0

    .line 2194
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown object to close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method


# virtual methods
.method protected createClientHandler(Ljava/net/Socket;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$ClientHandler;
    .locals 1

    .prologue
    .line 2269
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    invoke-direct {v0, p0, p2, p1}, Lfi/iki/elonen/NanoHTTPD$ClientHandler;-><init>(Lfi/iki/elonen/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V

    return-object v0
.end method

.method protected createServerRunnable(I)Lfi/iki/elonen/NanoHTTPD$ServerRunnable;
    .locals 1

    .prologue
    .line 2281
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;

    invoke-direct {v0, p0, p1}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;-><init>(Lfi/iki/elonen/NanoHTTPD;I)V

    return-object v0
.end method

.method public getServerSocketFactory()Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;
    .locals 1

    .prologue
    .line 2369
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    return-object v0
.end method

.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 6

    .prologue
    .line 2455
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2456
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v2

    .line 2457
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v0, v2}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v0, v2}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2459
    :cond_0
    :try_start_0
    invoke-interface {p1, v5}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2467
    :cond_1
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object v4

    .line 2468
    const-string v0, "NanoHttpd.QUERY_STRING"

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getQueryParameterString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2469
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lfi/iki/elonen/NanoHTTPD;->serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2460
    :catch_0
    move-exception v0

    .line 2461
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v2, "text/plain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    goto :goto_0

    .line 2462
    :catch_1
    move-exception v0

    .line 2463
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    goto :goto_0
.end method

.method public serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2492
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    const-string v2, "Not Found"

    invoke-static {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method public setAsyncRunner(Lfi/iki/elonen/NanoHTTPD$AsyncRunner;)V
    .locals 0

    .prologue
    .line 2502
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    .line 2503
    return-void
.end method

.method public setTempFileManagerFactory(Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;)V
    .locals 0

    .prologue
    .line 2512
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    .line 2513
    return-void
.end method

.method public start(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2543
    invoke-virtual {p0}, Lfi/iki/elonen/NanoHTTPD;->getServerSocketFactory()Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    move-result-object v0

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;->create()Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    .line 2544
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 2546
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoHTTPD;->createServerRunnable(I)Lfi/iki/elonen/NanoHTTPD$ServerRunnable;

    move-result-object v0

    .line 2547
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    .line 2548
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 2549
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    const-string v2, "NanoHttpd Main Listener"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2550
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2551
    :goto_0
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->access$1300(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->access$1400(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2553
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2554
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2560
    :cond_0
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->access$1400(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2561
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->access$1400(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2563
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 2570
    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 2571
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->closeAll()V

    .line 2572
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2573
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2578
    :cond_0
    :goto_0
    return-void

    .line 2575
    :catch_0
    move-exception v0

    .line 2576
    sget-object v1, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not stop all connections"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected useGzipWhenAccepted(Lfi/iki/elonen/NanoHTTPD$Response;)Z
    .locals 2

    .prologue
    .line 2357
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$Response;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$Response;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
