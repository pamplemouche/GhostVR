.class public LyS;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final b:Ljava/lang/Class;

.field public static c:LyS;


# instance fields
.field public final a:LzS;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LyS;

    sput-object v0, LyS;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LAS;

    invoke-direct {v0}, LAS;-><init>()V

    iput-object v0, p0, LyS;->a:LzS;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "UTF-8"

    if-eqz p0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 6
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 8
    invoke-virtual {v1, p0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 9
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 10
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x2

    .line 11
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized a()LyS;
    .locals 2

    const-class v0, LyS;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, LyS;->c:LyS;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, LyS;

    invoke-direct {v1}, LyS;-><init>()V

    sput-object v1, LyS;->c:LyS;

    .line 3
    :cond_0
    sget-object v1, LyS;->c:LyS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
