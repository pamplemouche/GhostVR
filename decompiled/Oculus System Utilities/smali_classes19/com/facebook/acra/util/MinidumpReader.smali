.class public Lcom/facebook/acra/util/MinidumpReader;
.super Ljava/lang/Object;
.source "MinidumpReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/util/MinidumpReader$MinidumpMarkers;,
        Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;
    }
.end annotation


# static fields
.field private static final ALT_STACK:Ljava/lang/String; = "WriteThreadUnwindStream failed"

.field private static final CUSTOM_STREAM_GLOBAL:Ljava/lang/String; = "global"

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final MD_FB_APP_CUSTOM_DATA:I = -0x5313506

.field public static final MD_FB_APP_STATE_LOG:I = -0x5313334

.field public static final MD_FB_APP_VERSION_CODE:I = -0x5313505

.field public static final MD_FB_APP_VERSION_NAME:I = -0x5313504

.field public static final MD_FB_DUMP_ERROR_LOG:I = -0x5313500

.field public static final MD_FB_JAVA_STACK:I = -0x5313503

.field public static final MD_FB_STREAM_MARKERS:I = -0x5320000

.field private static final MD_FB_UNWIND_SYMBOLS_OFFSET:J = 0x100000000000L

.field private static final MD_HEADER_SIGNATURE:I = 0x504d444d

.field public static final MD_LINUX_CMD_LINE:I = 0x47670006

.field private static final MD_MODULE_LIST_STREAM_OFFSET:I = 0x10

.field private static final MD_THREAD_LIST_STREAM_OFFSET:I = 0x8

.field private static final MODULE_LIST:Ljava/lang/String; = "WriteMappings failed"

.field private static final THREAD_LIST:Ljava/lang/String; = "WriteThreadListStream failed"


# instance fields
.field private mHandle:Ljava/io/RandomAccessFile;

.field private mStreamCount:I

.field private mStreamsPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/facebook/acra/util/MinidumpReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/acra/util/MinidumpReader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 4
    .param p1, "minidump"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/facebook/acra/util/MinidumpReader;->mHandle:Ljava/io/RandomAccessFile;

    .line 70
    iget-object v1, p0, Lcom/facebook/acra/util/MinidumpReader;->mHandle:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 71
    invoke-direct {p0}, Lcom/facebook/acra/util/MinidumpReader;->readIntLE()I

    move-result v0

    .line 72
    .local v0, "signature":I
    const v1, 0x504d444d

    if-eq v0, v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid minidump signature"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/facebook/acra/util/MinidumpReader;->mHandle:Ljava/io/RandomAccessFile;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 77
    invoke-direct {p0}, Lcom/facebook/acra/util/MinidumpReader;->readIntLE()I

    move-result v1

    iput v1, p0, Lcom/facebook/acra/util/MinidumpReader;->mStreamCount:I

    .line 78
    invoke-direct {p0}, Lcom/facebook/acra/util/MinidumpReader;->readIntLE()I

    move-result v1

    iput v1, p0, Lcom/facebook/acra/util/MinidumpReader;->mStreamsPos:I

    .line 79
    return-void
.end method

.method public static checkMinidumpErrLogStream(Ljava/lang/String;)Z
    .locals 1
    .param p0, "errLog"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 175
    if-eqz p0, :cond_1

    const-string v0, "WriteMappings failed"

    .line 176
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WriteThreadListStream failed"

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WriteThreadUnwindStream failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkMinidumpMarkerStream(J)Z
    .locals 10
    .param p0, "marker"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    const-wide/16 v6, 0x10

    and-long/2addr v6, p0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    move v1, v4

    .line 160
    .local v1, "modulesNotExist":Z
    :goto_0
    const-wide/16 v6, 0x8

    and-long/2addr v6, p0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    move v2, v4

    .line 161
    .local v2, "threadsNotExist":Z
    :goto_1
    const-wide v6, 0x100000000000L

    and-long/2addr v6, p0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    move v0, v4

    .line 163
    .local v0, "altStackNotExist":Z
    :goto_2
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    :cond_0
    move v3, v4

    .line 167
    :cond_1
    return v3

    .end local v0    # "altStackNotExist":Z
    .end local v1    # "modulesNotExist":Z
    .end local v2    # "threadsNotExist":Z
    :cond_2
    move v1, v3

    .line 159
    goto :goto_0

    .restart local v1    # "modulesNotExist":Z
    :cond_3
    move v2, v3

    .line 160
    goto :goto_1

    .restart local v2    # "threadsNotExist":Z
    :cond_4
    move v0, v3

    .line 161
    goto :goto_2
.end method

.method private findStream(I)Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;
    .locals 8
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    iget-object v4, p0, Lcom/facebook/acra/util/MinidumpReader;->mHandle:Ljava/io/RandomAccessFile;

    iget v5, p0, Lcom/facebook/acra/util/MinidumpReader;->mStreamsPos:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/facebook/acra/util/MinidumpReader;->mStreamCount:I

    if-ge v0, v4, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/facebook/acra/util/MinidumpReader;->readIntLE()I

    move-result v3

    .line 91
    .local v3, "type":I
    invoke-direct {p0}, Lcom/facebook/acra/util/MinidumpReader;->readIntLE()I

    move-result v2

    .line 92
    .local v2, "size":I
    invoke-direct {p0}, Lcom/facebook/acra/util/MinidumpReader;->readIntLE()I

    move-result v1

    .line 93
    .local v1, "pos":I
    if-ne v3, p1, :cond_0

    .line 94
    new-instance v4, Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;

    invoke-direct {v4, v1, v2}, Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;-><init>(II)V

    .line 97
    .end local v1    # "pos":I
    .end local v2    # "size":I
    .end local v3    # "type":I
    :goto_1
    return-object v4

    .line 89
    .restart local v1    # "pos":I
    .restart local v2    # "size":I
    .restart local v3    # "type":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "pos":I
    .end local v2    # "size":I
    .end local v3    # "type":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getInt(Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;)Ljava/lang/Integer;
    .locals 4
    .param p1, "stream"    # Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 267
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;->size:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 268
    :cond_0
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/facebook/acra/util/MinidumpReader;->mHandle:Ljava/io/RandomAccessFile;

    iget v1, p1, Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;->pos:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 272
    invoke-direct {p0}, Lcom/facebook/acra/util/MinidumpReader;->readIntLE()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private getString(Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;)Ljava/lang/String;
    .locals 4
    .param p1, "stream"    # Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/facebook/acra/util/MinidumpReader;->mHandle:Ljava/io/RandomAccessFile;

    iget v2, p1, Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;->pos:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 123
    iget v1, p1, Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;->size:I

    new-array v0, v1, [B

    .line 124
    .local v0, "buf":[B
    iget-object v1, p0, Lcom/facebook/acra/util/MinidumpReader;->mHandle:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 126
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private readIntLE()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v1, p0, Lcom/facebook/acra/util/MinidumpReader;->mHandle:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    .line 278
    .local v0, "number":I
    and-int/lit16 v1, v0, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xff00

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method private readLongIntLE()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x18

    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v7, 0x0

    const-wide/16 v8, 0xff

    .line 286
    iget-object v2, p0, Lcom/facebook/acra/util/MinidumpReader;->mHandle:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    .line 287
    .local v0, "number":J
    shr-long v2, v0, v7

    and-long/2addr v2, v8

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    shr-long v4, v0, v10

    and-long/2addr v4, v8

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    shr-long v4, v0, v11

    and-long/2addr v4, v8

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    shr-long v4, v0, v12

    and-long/2addr v4, v8

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const/16 v4, 0x20

    shr-long v4, v0, v4

    and-long/2addr v4, v8

    shl-long/2addr v4, v12

    or-long/2addr v2, v4

    const/16 v4, 0x28

    shr-long v4, v0, v4

    and-long/2addr v4, v8

    shl-long/2addr v4, v11

    or-long/2addr v2, v4

    const/16 v4, 0x30

    shr-long v4, v0, v4

    and-long/2addr v4, v8

    shl-long/2addr v4, v10

    or-long/2addr v2, v4

    const/16 v4, 0x38

    shr-long v4, v0, v4

    and-long/2addr v4, v8

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private static retrieveJsonNode(Landroid/util/JsonReader;Ljava/lang/String;)Landroid/util/JsonReader;
    .locals 4
    .param p0, "jsonReader"    # Landroid/util/JsonReader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 234
    if-nez p0, :cond_1

    move-object p0, v1

    .line 247
    .end local p0    # "jsonReader":Landroid/util/JsonReader;
    :cond_0
    :goto_0
    return-object p0

    .line 236
    .restart local p0    # "jsonReader":Landroid/util/JsonReader;
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 237
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 238
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_2

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 246
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    move-object p0, v1

    .line 247
    goto :goto_0
.end method


# virtual methods
.method public checkIfMinidumpCorrupted()Z
    .locals 8

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/facebook/acra/util/MinidumpReader;->getMinidumpMarkers()Lcom/facebook/acra/util/MinidumpReader$MinidumpMarkers;

    move-result-object v2

    .line 186
    .local v2, "markers":Lcom/facebook/acra/util/MinidumpReader$MinidumpMarkers;
    const/4 v1, 0x0

    .line 187
    .local v1, "markerCheckFail":Z
    if-eqz v2, :cond_0

    .line 188
    iget-wide v4, v2, Lcom/facebook/acra/util/MinidumpReader$MinidumpMarkers;->startMarker:J

    iget-wide v6, v2, Lcom/facebook/acra/util/MinidumpReader$MinidumpMarkers;->endMarker:J

    xor-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/facebook/acra/util/MinidumpReader;->checkMinidumpMarkerStream(J)Z

    move-result v1

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/acra/util/MinidumpReader;->getErrorLogData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/acra/util/MinidumpReader;->checkMinidumpErrLogStream(Ljava/lang/String;)Z

    move-result v0

    .line 192
    .local v0, "errLogFail":Z
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 193
    :cond_1
    const/4 v3, 0x1

    .line 195
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 208
    const-string v1, ""

    .line 210
    .local v1, "values":Ljava/lang/String;
    const v3, -0x5313506

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/facebook/acra/util/MinidumpReader;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    if-nez v1, :cond_0

    .line 218
    :goto_0
    return-object v2

    .line 214
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/facebook/acra/util/MinidumpReader;->getCustomDataFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/acra/util/MinidumpReader;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getCustomData error: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v0, v4, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getCustomDataFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "customStream"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 223
    new-instance v0, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 224
    .local v0, "jsonReader":Landroid/util/JsonReader;
    :try_start_0
    const-string v2, "global"

    .line 225
    invoke-static {v0, v2}, Lcom/facebook/acra/util/MinidumpReader;->retrieveJsonNode(Landroid/util/JsonReader;Ljava/lang/String;)Landroid/util/JsonReader;

    move-result-object v2

    .line 224
    invoke-static {v2, p2}, Lcom/facebook/acra/util/MinidumpReader;->retrieveJsonNode(Landroid/util/JsonReader;Ljava/lang/String;)Landroid/util/JsonReader;

    move-result-object v1

    .line 228
    .local v1, "result":Landroid/util/JsonReader;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 229
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    move-object v2, v3

    .line 228
    goto :goto_0

    .line 229
    :catch_0
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    goto :goto_1

    .line 223
    .end local v1    # "result":Landroid/util/JsonReader;
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    throw v2

    :catch_2
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_2
.end method

.method public getErrorLogData()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    const-string v1, ""

    .line 132
    .local v1, "values":Ljava/lang/String;
    const v2, -0x5313500

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/facebook/acra/util/MinidumpReader;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 136
    :goto_0
    return-object v2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/facebook/acra/util/MinidumpReader;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getErrorLogData error: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getInt(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/facebook/acra/util/MinidumpReader;->findStream(I)Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/acra/util/MinidumpReader;->getInt(Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getJavaStack()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 200
    const v1, -0x5313503

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/facebook/acra/util/MinidumpReader;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 204
    :goto_0
    return-object v1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/facebook/acra/util/MinidumpReader;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getJavaStack error"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 204
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMinidumpMarkers()Lcom/facebook/acra/util/MinidumpReader$MinidumpMarkers;
    .locals 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 141
    const/high16 v3, -0x5320000

    :try_start_0
    invoke-direct {p0, v3}, Lcom/facebook/acra/util/MinidumpReader;->findStream(I)Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;

    move-result-object v1

    .line 142
    .local v1, "stream":Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;
    if-nez v1, :cond_0

    .line 151
    .end local v1    # "stream":Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;
    :goto_0
    return-object v2

    .line 145
    .restart local v1    # "stream":Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;
    :cond_0
    iget-object v3, p0, Lcom/facebook/acra/util/MinidumpReader;->mHandle:Ljava/io/RandomAccessFile;

    iget v4, v1, Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;->pos:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 146
    new-instance v3, Lcom/facebook/acra/util/MinidumpReader$MinidumpMarkers;

    invoke-direct {p0}, Lcom/facebook/acra/util/MinidumpReader;->readLongIntLE()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/facebook/acra/util/MinidumpReader;->readLongIntLE()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/facebook/acra/util/MinidumpReader$MinidumpMarkers;-><init>(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 148
    .end local v1    # "stream":Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/facebook/acra/util/MinidumpReader;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getMinidumpMarkers failed to read"

    invoke-static {v3, v0, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/facebook/acra/util/MinidumpReader;->findStream(I)Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/acra/util/MinidumpReader;->getString(Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "values":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "values":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
