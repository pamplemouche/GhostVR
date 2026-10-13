.class public Lcom/facebook/fbuploader/Content;
.super Ljava/lang/Object;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fbuploader/Content$DigestInfo;,
        Lcom/facebook/fbuploader/Content$HashComputeListener;
    }
.end annotation


# instance fields
.field private mContentLength:J

.field private final mContentName:Ljava/lang/String;

.field private final mContentOffset:J

.field private final mDigests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/fbuploader/Content$DigestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/io/File;

.field private final mFileKey:Ljava/lang/String;

.field private mHashComputeListener:Lcom/facebook/fbuploader/Content$HashComputeListener;

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/fbuploader/Content;->mDigests:Ljava/util/Map;

    .line 100
    iput-object p1, p0, Lcom/facebook/fbuploader/Content;->mFile:Ljava/io/File;

    .line 101
    iget-object v0, p0, Lcom/facebook/fbuploader/Content;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/Content;->mContentName:Ljava/lang/String;

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/fbuploader/Content;->mContentOffset:J

    .line 103
    iget-object v0, p0, Lcom/facebook/fbuploader/Content;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/fbuploader/Content;->mContentLength:J

    .line 104
    iput-object p2, p0, Lcom/facebook/fbuploader/Content;->mMimeType:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/facebook/fbuploader/Content;->mFileKey:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public static getDigest(Ljava/io/InputStream;Ljava/lang/String;IJJLcom/facebook/fbuploader/Content$HashComputeListener;)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 192
    const/4 v4, 0x0

    .line 195
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 196
    move/from16 v0, p2

    new-array v9, v0, [B

    .line 199
    move-wide/from16 v0, p3

    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 202
    const/4 v2, 0x0

    move v5, v2

    move-wide v2, v6

    :cond_0
    :goto_0
    int-to-long v6, v5

    cmp-long v6, v6, p5

    if-gez v6, :cond_2

    .line 203
    const/4 v6, 0x0

    move/from16 v0, p2

    int-to-long v10, v0

    int-to-long v12, v5

    sub-long v12, p5, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v7, v10

    invoke-virtual {p0, v9, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 204
    if-gtz v6, :cond_1

    .line 205
    const/4 v2, 0x0

    .line 223
    :goto_1
    return-object v2

    .line 207
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v8, v9, v7, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 208
    add-int/2addr v5, v6

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 210
    if-eqz p7, :cond_0

    const-wide/16 v10, 0x12c

    cmp-long v6, v6, v10

    if-lez v6, :cond_0

    .line 211
    add-int/lit8 v2, v5, 0x1

    int-to-float v2, v2

    move-wide/from16 v0, p5

    long-to-float v3, v0

    div-float/2addr v2, v3

    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Lcom/facebook/fbuploader/Content$HashComputeListener;->onProgress(F)V

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    goto :goto_0

    .line 215
    :cond_2
    if-eqz p7, :cond_3

    .line 216
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Lcom/facebook/fbuploader/Content$HashComputeListener;->onProgress(F)V

    .line 218
    :cond_3
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 219
    :catch_0
    move-exception v2

    move-object v2, v4

    goto :goto_1
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/facebook/fbuploader/Content;->mContentLength:J

    return-wide v0
.end method

.method public getDigest(Ljava/lang/String;I)Lcom/facebook/fbuploader/Content$DigestInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 229
    iget-object v0, p0, Lcom/facebook/fbuploader/Content;->mDigests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/facebook/fbuploader/Content;->mDigests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbuploader/Content$DigestInfo;

    .line 263
    :cond_0
    :goto_0
    return-object v0

    .line 237
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/facebook/fbuploader/Content;->mFile:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 239
    iget-wide v4, p0, Lcom/facebook/fbuploader/Content;->mContentOffset:J

    iget-wide v6, p0, Lcom/facebook/fbuploader/Content;->mContentLength:J

    iget-object v8, p0, Lcom/facebook/fbuploader/Content;->mHashComputeListener:Lcom/facebook/fbuploader/Content$HashComputeListener;

    move-object v2, p1

    move v3, p2

    .line 240
    invoke-static/range {v1 .. v8}, Lcom/facebook/fbuploader/Content;->getDigest(Ljava/io/InputStream;Ljava/lang/String;IJJLcom/facebook/fbuploader/Content$HashComputeListener;)[B

    move-result-object v2

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    .line 244
    if-eqz v2, :cond_3

    .line 246
    new-instance v0, Lcom/facebook/fbuploader/Content$DigestInfo;

    invoke-direct {v0, v2, v4, v5}, Lcom/facebook/fbuploader/Content$DigestInfo;-><init>([BJ)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    :try_start_2
    iget-object v2, p0, Lcom/facebook/fbuploader/Content;->mDigests:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    :goto_1
    if-eqz v1, :cond_0

    .line 255
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v1

    goto :goto_0

    .line 249
    :catch_1
    move-exception v0

    move-object v0, v9

    move-object v1, v9

    .line 253
    :goto_2
    if-eqz v1, :cond_0

    .line 255
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 256
    :catch_2
    move-exception v1

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_3
    if-eqz v1, :cond_2

    .line 255
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 259
    :cond_2
    :goto_4
    throw v0

    .line 256
    :catch_3
    move-exception v1

    goto :goto_4

    .line 253
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 249
    :catch_4
    move-exception v0

    move-object v0, v9

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_2

    :cond_3
    move-object v0, v9

    goto :goto_1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/fbuploader/Content;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFileKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/fbuploader/Content;->mFileKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/fbuploader/Content;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public resetContentLength()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/fbuploader/Content;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/fbuploader/Content;->mContentLength:J

    .line 152
    return-void
.end method

.method public setHashComputeListener(Lcom/facebook/fbuploader/Content$HashComputeListener;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/facebook/fbuploader/Content;->mHashComputeListener:Lcom/facebook/fbuploader/Content$HashComputeListener;

    .line 164
    return-void
.end method
