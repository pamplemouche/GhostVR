.class public Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;
.super Ljava/lang/Object;
.source "MobileConfigJavaManager.java"

# interfaces
.implements Lcom/facebook/mobileconfig/MobileConfigManagerHolder;


# instance fields
.field private final mBufferPath:Ljava/lang/String;

.field private final mCachedExposures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/common/util/Triplet",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCachedMmapHandle:Lcom/facebook/mobileconfig/MobileConfigJavaMmapHandle;

.field private final mCachedSpecifierExposures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/mobileconfig/factory/ExposureType;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSessionId:Ljava/lang/String;

.field private final mShadowResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslationTable:[[J
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mobileconfig/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mBufferPath:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mSessionId:Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mShadowResults:Ljava/util/List;

    .line 85
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mCachedSpecifierExposures:Ljava/util/Set;

    .line 86
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mCachedExposures:Ljava/util/Set;

    .line 87
    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mCachedMmapHandle:Lcom/facebook/mobileconfig/MobileConfigJavaMmapHandle;

    .line 88
    check-cast v0, [[J

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mTranslationTable:[[J

    .line 89
    return-void
.end method

.method public static createJavaManager(Ljava/io/File;Ljava/lang/String;Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;Landroid/content/res/AssetManager;Z)Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;
    .locals 3
    .param p3    # Landroid/content/res/AssetManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 113
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;

    invoke-direct {v0, p0, p1}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->doesNativeSchemaHashMismatch(Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;)Z

    move-result v2

    .line 115
    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 121
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->getLatestHandle()Lcom/facebook/mobileconfig/MobileConfigMmapHandle;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->getConfigTableSchemaHash(Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;Lcom/facebook/mobileconfig/MobileConfigMmapHandle;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-direct {v0, p3, p0, p1, v2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->populateTranslationTable(Landroid/content/res/AssetManager;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 122
    if-eqz v2, :cond_0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 122
    goto :goto_0

    .line 124
    :cond_1
    if-eqz v2, :cond_2

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private static doesNativeSchemaMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/16 v3, 0x3a

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 396
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v0

    .line 400
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 401
    if-eq v1, v2, :cond_2

    .line 402
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 404
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 405
    if-eq v1, v2, :cond_3

    .line 406
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 408
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private findPathToLatestFlatbuffer()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 166
    invoke-direct {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->getDirectoryPathForSession()Ljava/lang/String;

    move-result-object v1

    .line 167
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    new-instance v1, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager$1;

    invoke-direct {v1, p0}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager$1;-><init>(Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;)V

    .line 169
    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 176
    if-nez v5, :cond_1

    .line 177
    const-string v0, ""

    .line 196
    :cond_0
    return-object v0

    .line 180
    :cond_1
    const-string v1, ""

    .line 181
    array-length v6, v5

    move v4, v0

    move v2, v3

    move-object v0, v1

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v7, v5, v4

    .line 182
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 186
    const/4 v8, 0x0

    .line 187
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const-string v10, ".mctable"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 191
    :goto_1
    if-le v1, v2, :cond_2

    .line 193
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 181
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    move v1, v3

    .line 189
    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public static getConfigTableSchemaHash(Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;Lcom/facebook/mobileconfig/MobileConfigMmapHandle;)Ljava/lang/String;
    .locals 3
    .param p0    # Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 420
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 421
    :goto_0
    if-nez v0, :cond_2

    .line 422
    if-eqz p0, :cond_0

    .line 423
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;->NO_CONFIG_TABLE_SCHEMA_HASH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;->setError(Lcom/facebook/mobileconfig/factory/MobileConfigError;)V

    .line 425
    :cond_0
    const-string v0, ""

    .line 439
    :goto_1
    return-object v0

    .line 420
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/mobileconfig/MobileConfigMmapHandle;->getJavaByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 430
    :cond_2
    :try_start_0
    invoke-static {v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->getRootAsFBMobileConfigTable(Ljava/nio/ByteBuffer;)Lcom/facebook/mobileconfig/FBMobileConfigTable;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->magic()I

    move-result v1

    const v2, 0x1e240

    if-eq v1, v2, :cond_4

    .line 432
    if-eqz p0, :cond_3

    .line 433
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;->CONFIG_TABLE_MAGIC_MISMATCH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;->setError(Lcom/facebook/mobileconfig/factory/MobileConfigError;)V

    .line 435
    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 437
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->schemaHashAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/mobileconfig/FBConfigUtils;->getSchemaHashInternal(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_1

    .line 438
    :catch_0
    move-exception v0

    .line 439
    :goto_2
    const-string v0, ""

    goto :goto_1

    .line 438
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private getDirectoryPathForSession()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mSessionId:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mBufferPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sessionless.data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mBufferPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getGeneratedSchemaHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/facebook/mobileconfig/MobileConfigConstants;->SCHEMA_HASH:Ljava/lang/String;

    return-object v0
.end method

.method public static getSchemaHashFromSpecToParamFile(Ljava/nio/channels/ReadableByteChannel;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 280
    const/4 v0, 0x6

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 281
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 283
    invoke-interface {p0, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 284
    if-eq v1, v2, :cond_0

    .line 285
    const-string v0, ""

    .line 308
    :goto_0
    return-object v0

    .line 287
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 288
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    .line 289
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    const/16 v2, 0x7fff

    if-eq v1, v2, :cond_1

    .line 290
    const-string v0, ""

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    .line 293
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 294
    const-string v0, ""

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 299
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 300
    invoke-interface {p0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 301
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    if-eq v2, v0, :cond_3

    .line 302
    const-string v0, ""

    goto :goto_0

    .line 304
    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 305
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    const-string v1, "MobileConfigJavaManager"

    const-string v2, "populateTranslationTableInternal: IOException"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 308
    const-string v0, ""

    goto :goto_0
.end method

.method private populateTranslationTable(Landroid/content/res/AssetManager;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 210
    const-string v2, "MobileConfigJavaManager"

    const-string v3, "Populating translation table for sessionId: %s"

    invoke-static {v2, v3, p3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    if-nez p4, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    const/4 v2, 0x0

    .line 218
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    .line 220
    invoke-static {p2, p3}, Lcom/facebook/mobileconfig/factory/MobileConfigFilesOnDiskUtils;->getSpecToHashFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 224
    :try_start_1
    invoke-static {v3}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->getSchemaHashFromSpecToParamFile(Ljava/nio/channels/ReadableByteChannel;)Ljava/lang/String;

    move-result-object v4

    .line 225
    const-string v5, "MobileConfigJavaManager"

    const-string v6, "Populating translation table: old spec_to_param hash: %s, config table hash %s"

    invoke-static {v5, v6, v4, p4}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    invoke-static {v4, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->doesNativeSchemaMatch(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_3

    .line 264
    if-eqz v3, :cond_2

    .line 265
    :try_start_2
    invoke-interface {v3}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 267
    :cond_2
    if-eqz v1, :cond_0

    .line 268
    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    const-string v2, "MobileConfigJavaManager"

    const-string v3, "Failed to populate translation table due to exception"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 234
    :cond_3
    :try_start_3
    const-string v2, "spec_to_param.txt"

    .line 236
    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 235
    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 237
    :try_start_4
    invoke-static {v2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->getSchemaHashFromSpecToParamFile(Ljava/nio/channels/ReadableByteChannel;)Ljava/lang/String;

    move-result-object v1

    .line 238
    const-string v4, "MobileConfigJavaManager"

    const-string v5, "Populating translation table: new spec_to_param hash: %s, new codegen hash: %s"

    sget-object v6, Lcom/facebook/mobileconfig/MobileConfigConstants;->SCHEMA_HASH:Ljava/lang/String;

    invoke-static {v4, v5, v1, v6}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    sget-object v4, Lcom/facebook/mobileconfig/MobileConfigConstants;->SCHEMA_HASH:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->doesNativeSchemaMatch(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v1

    if-nez v1, :cond_5

    .line 264
    if-eqz v3, :cond_4

    .line 265
    :try_start_5
    invoke-interface {v3}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 267
    :cond_4
    if-eqz v2, :cond_0

    .line 268
    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 248
    :cond_5
    const/4 v1, 0x4

    :try_start_6
    new-array v4, v1, [[J

    .line 249
    const/4 v1, 0x0

    sget v5, Lcom/facebook/mobileconfig/MobileConfigConstants;->BOOLEAN_COUNT:I

    new-array v5, v5, [J

    aput-object v5, v4, v1

    .line 250
    const/4 v1, 0x1

    sget v5, Lcom/facebook/mobileconfig/MobileConfigConstants;->LONG_COUNT:I

    new-array v5, v5, [J

    aput-object v5, v4, v1

    .line 251
    const/4 v1, 0x2

    sget v5, Lcom/facebook/mobileconfig/MobileConfigConstants;->STRING_COUNT:I

    new-array v5, v5, [J

    aput-object v5, v4, v1

    .line 252
    const/4 v1, 0x3

    sget v5, Lcom/facebook/mobileconfig/MobileConfigConstants;->DOUBLE_COUNT:I

    new-array v5, v5, [J

    aput-object v5, v4, v1

    .line 255
    invoke-static {v3, v2, v4}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->populateTranslationTableInternal(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/ReadableByteChannel;[[J)Z

    move-result v1

    .line 256
    if-eqz v1, :cond_6

    .line 257
    iput-object v4, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mTranslationTable:[[J

    .line 259
    :cond_6
    const-string v4, "MobileConfigJavaManager"

    const-string v5, "Tried to populate translation table, success:%s"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 264
    if-eqz v3, :cond_7

    .line 265
    :try_start_7
    invoke-interface {v3}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 267
    :cond_7
    if-eqz v2, :cond_8

    .line 268
    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->close()V

    :cond_8
    move v0, v1

    goto/16 :goto_0

    .line 261
    :catch_1
    move-exception v2

    move-object v2, v1

    .line 264
    :goto_1
    if-eqz v2, :cond_9

    .line 265
    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 267
    :cond_9
    if-eqz v1, :cond_0

    .line 268
    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V

    goto/16 :goto_0

    .line 264
    :catchall_0
    move-exception v2

    move-object v3, v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    :goto_2
    if-eqz v3, :cond_a

    .line 265
    invoke-interface {v3}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 267
    :cond_a
    if-eqz v2, :cond_b

    .line 268
    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->close()V

    :cond_b
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 264
    :catchall_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_2

    .line 261
    :catch_2
    move-exception v2

    move-object v2, v3

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method public static populateTranslationTableInternal(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/ReadableByteChannel;[[J)Z
    .locals 13

    .prologue
    .line 316
    if-nez p2, :cond_0

    .line 317
    const-string v0, "MobileConfigJavaManager"

    const-string v1, "populateTranslationTableInternal: translationTable passed was null"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    const/16 v0, 0x10

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 321
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 322
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 323
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 325
    invoke-interface {p0, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 326
    invoke-interface {p1, v3}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 328
    :goto_0
    const/16 v4, 0x10

    if-ne v0, v4, :cond_5

    const/16 v4, 0x10

    if-ne v1, v4, :cond_5

    .line 329
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 330
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 331
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 332
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 333
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    .line 334
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    .line 336
    cmp-long v12, v8, v4

    if-nez v12, :cond_3

    .line 337
    invoke-static {v6, v7}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getParamType(J)I

    move-result v0

    .line 338
    invoke-static {v10, v11}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getParamType(J)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 339
    const-string v0, "MobileConfigJavaManager"

    const-string v1, "populateTranslationTableInternal: invalid specifiers"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x0

    .line 373
    :goto_1
    return v0

    .line 342
    :cond_1
    invoke-static {v6, v7}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getParamType(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 343
    invoke-static {v6, v7}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getSlotId(J)I

    move-result v1

    .line 344
    if-ltz v0, :cond_2

    array-length v4, p2

    if-ge v0, v4, :cond_2

    if-ltz v1, :cond_2

    aget-object v4, p2, v0

    if-eqz v4, :cond_2

    aget-object v4, p2, v0

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 349
    aget-object v0, p2, v0

    aput-wide v10, v0, v1

    .line 358
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 359
    invoke-interface {p1, v3}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 360
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 361
    invoke-interface {p0, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    goto :goto_0

    .line 351
    :cond_2
    const-string v2, "MobileConfigJavaManager"

    const-string v3, "populateTranslationTableInternal: Type/slot ids out of bound type_id: %d slot_id: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 354
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    .line 355
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 351
    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    const/4 v0, 0x0

    goto :goto_1

    .line 362
    :cond_3
    cmp-long v4, v8, v4

    if-lez v4, :cond_4

    .line 363
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 364
    invoke-interface {p1, v3}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto/16 :goto_0

    .line 366
    :cond_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 367
    invoke-interface {p0, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto/16 :goto_0

    .line 370
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    const-string v1, "MobileConfigJavaManager"

    const-string v2, "populateTranslationTableInternal: IOException"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public deleteOldUserData(I)V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method public doesNativeSchemaHashMismatch(Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 379
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->getLatestHandle()Lcom/facebook/mobileconfig/MobileConfigMmapHandle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->getConfigTableSchemaHash(Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;Lcom/facebook/mobileconfig/MobileConfigMmapHandle;)Ljava/lang/String;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v1

    .line 392
    :cond_1
    :goto_0
    return v0

    .line 384
    :cond_2
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 385
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 386
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 388
    :cond_3
    invoke-direct {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->getGeneratedSchemaHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 389
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 390
    sget-object v1, Lcom/facebook/mobileconfig/factory/MobileConfigError;->CONFIG_TABLE_SCHEMA_MISMATCH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    invoke-virtual {p1, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;->setError(Lcom/facebook/mobileconfig/factory/MobileConfigError;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 388
    goto :goto_1
.end method

.method public getBufferedShadowResult()Lcom/facebook/common/internal/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/ImmutableList",
            "<",
            "Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mShadowResults:Ljava/util/List;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mShadowResults:Ljava/util/List;

    invoke-static {v0}, Lcom/facebook/common/internal/ImmutableList;->copyOf(Ljava/util/List;)Lcom/facebook/common/internal/ImmutableList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCachedExposures()Lcom/facebook/common/internal/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/ImmutableSet",
            "<",
            "Lcom/facebook/common/util/Triplet",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mCachedExposures:Ljava/util/Set;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mCachedExposures:Ljava/util/Set;

    invoke-static {v0}, Lcom/facebook/common/internal/ImmutableSet;->copyOf(Ljava/util/Set;)Lcom/facebook/common/internal/ImmutableSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCachedSpecifierExposures()Lcom/facebook/common/internal/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/ImmutableSet",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/mobileconfig/factory/ExposureType;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mCachedSpecifierExposures:Ljava/util/Set;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mCachedSpecifierExposures:Ljava/util/Set;

    invoke-static {v0}, Lcom/facebook/common/internal/ImmutableSet;->copyOf(Ljava/util/Set;)Lcom/facebook/common/internal/ImmutableSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLatestHandle()Lcom/facebook/mobileconfig/MobileConfigMmapHandle;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mCachedMmapHandle:Lcom/facebook/mobileconfig/MobileConfigJavaMmapHandle;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/facebook/mobileconfig/MobileConfigJavaMmapHandle;

    invoke-direct {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->findPathToLatestFlatbuffer()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/mobileconfig/MobileConfigJavaMmapHandle;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mCachedMmapHandle:Lcom/facebook/mobileconfig/MobileConfigJavaMmapHandle;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mCachedMmapHandle:Lcom/facebook/mobileconfig/MobileConfigJavaMmapHandle;

    return-object v0
.end method

.method public getNewOverridesTable()Lcom/facebook/mobileconfig/MobileConfigOverridesTable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNewOverridesTableIfExists()Lcom/facebook/mobileconfig/MobileConfigOverridesTable;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 494
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mBufferPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "overrides.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    :try_start_0
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;

    const-string v2, "UTF-8"

    .line 499
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/io/Files;->toString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-static {v1}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverrides;->readFromString(Ljava/lang/String;)Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverrides;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mTranslationTable:[[J

    invoke-direct {v0, v1, v2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;-><init>(Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverrides;[[J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    return-object v0

    .line 501
    :catch_0
    move-exception v0

    .line 505
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTranslationTable()[[J
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mTranslationTable:[[J

    return-object v0
.end method

.method public isFetchNeeded()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public isTigonServiceSet()Z
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public logExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mCachedExposures:Ljava/util/Set;

    new-instance v1, Lcom/facebook/common/util/Triplet;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/common/util/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    return-void
.end method

.method public logShadowResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 570
    iget-object v7, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mShadowResults:Ljava/util/List;

    monitor-enter v7

    .line 571
    :try_start_0
    iget-object v8, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mShadowResults:Ljava/util/List;

    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    monitor-exit v7

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEpHandler(Lcom/facebook/mobileconfig/MobileConfigEmergencyPushChangeListener;)Z
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public setTigonService(Lcom/facebook/tigon/iface/TigonServiceHolder;Z)V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method public syncFetchReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->mTranslationTable:[[J

    if-eqz v0, :cond_0

    .line 655
    const-string v0, "MobileConfigJavaManager: Using translation table."

    .line 657
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MobileConfigJavaManager: No sync fetch was needed"

    goto :goto_0
.end method

.method public tryUpdateConfigsSynchronously(I)Z
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public updateConfigs()Z
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method
