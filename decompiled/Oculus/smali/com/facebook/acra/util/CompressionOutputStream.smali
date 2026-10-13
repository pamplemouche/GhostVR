.class public Lcom/facebook/acra/util/CompressionOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CompressionOutputStream.java"


# static fields
.field private static triedLoadingZstd:Z

.field private static zstdImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/zstd/AbstractZstdOutputStream;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mUseZstd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/acra/util/CompressionOutputStream;->triedLoadingZstd:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p1, p2, p3}, Lcom/facebook/acra/util/CompressionOutputStream;->getUnderlyingStream(Ljava/io/OutputStream;IZ)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 59
    iput-boolean p3, p0, Lcom/facebook/acra/util/CompressionOutputStream;->mUseZstd:Z

    .line 60
    return-void
.end method

.method private static getUnderlyingStream(Ljava/io/OutputStream;IZ)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/facebook/acra/util/CompressionOutputStream;->getZstdImpl()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    invoke-static {}, Lcom/facebook/acra/util/CompressionOutputStream;->getZstdImpl()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/io/OutputStream;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 41
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 53
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 50
    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/acra/util/CompressionOutputStream;->zstdImpl:Ljava/lang/Class;

    .line 53
    :cond_0
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 44
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private static getZstdImpl()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/zstd/AbstractZstdOutputStream;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 20
    sget-boolean v0, Lcom/facebook/acra/util/CompressionOutputStream;->triedLoadingZstd:Z

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/facebook/acra/util/CompressionOutputStream;->zstdImpl:Ljava/lang/Class;

    .line 32
    :goto_0
    return-object v0

    .line 24
    :cond_0
    :try_start_0
    const-string v0, "com.facebook.zstd.ZstdOutputStream"

    .line 26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/facebook/acra/util/CompressionOutputStream;->zstdImpl:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/acra/util/CompressionOutputStream;->triedLoadingZstd:Z

    .line 32
    sget-object v0, Lcom/facebook/acra/util/CompressionOutputStream;->zstdImpl:Ljava/lang/Class;

    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 29
    :goto_2
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/acra/util/CompressionOutputStream;->zstdImpl:Ljava/lang/Class;

    goto :goto_1

    .line 27
    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/facebook/acra/util/CompressionOutputStream;->mUseZstd:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/acra/util/CompressionOutputStream;->getZstdImpl()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/facebook/acra/util/CompressionOutputStream;->out:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/zstd/AbstractZstdOutputStream;

    invoke-virtual {v0}, Lcom/facebook/zstd/AbstractZstdOutputStream;->finish()V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/util/CompressionOutputStream;->out:Ljava/io/OutputStream;

    check-cast v0, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/acra/util/CompressionOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 65
    return-void
.end method
