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
    .param p1, "raw"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I
    .param p3, "useZstd"    # Z
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
    .locals 6
    .param p0, "raw"    # Ljava/io/OutputStream;
    .param p1, "blockSize"    # I
    .param p2, "useZstd"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/facebook/acra/util/CompressionOutputStream;->getZstdImpl()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 40
    :try_start_0
    invoke-static {}, Lcom/facebook/acra/util/CompressionOutputStream;->getZstdImpl()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/io/OutputStream;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 41
    .local v1, "zstdConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/facebook/zstd/AbstractZstdOutputStream;>;"
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 53
    .end local v1    # "zstdConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/facebook/zstd/AbstractZstdOutputStream;>;"
    :goto_0
    return-object v2

    .line 44
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const/4 v2, 0x0

    sput-object v2, Lcom/facebook/acra/util/CompressionOutputStream;->zstdImpl:Ljava/lang/Class;

    .line 53
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, p0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

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
    .locals 2
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
    sget-boolean v1, Lcom/facebook/acra/util/CompressionOutputStream;->triedLoadingZstd:Z

    if-eqz v1, :cond_0

    .line 21
    sget-object v1, Lcom/facebook/acra/util/CompressionOutputStream;->zstdImpl:Ljava/lang/Class;

    .line 32
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 24
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :try_start_0
    const-string v1, "com.facebook.zstd.ZstdOutputStream"

    .line 26
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/facebook/acra/util/CompressionOutputStream;->zstdImpl:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/facebook/acra/util/CompressionOutputStream;->triedLoadingZstd:Z

    .line 32
    sget-object v1, Lcom/facebook/acra/util/CompressionOutputStream;->zstdImpl:Ljava/lang/Class;

    goto :goto_0

    .line 27
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 29
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    const/4 v1, 0x0

    sput-object v1, Lcom/facebook/acra/util/CompressionOutputStream;->zstdImpl:Ljava/lang/Class;

    goto :goto_1

    .line 27
    .end local v0    # "e":Ljava/lang/Throwable;
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
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
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
