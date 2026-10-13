.class public Lcom/facebook/rti/common/thrift/TCompactProtocol;
.super Ljava/lang/Object;
.source "TCompactProtocol.java"


# static fields
.field private static final TTYPE_TO_COMPACT_TYPE:[B


# instance fields
.field private mBooleanFieldId:Ljava/lang/Short;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBooleanFieldType:Ljava/lang/Byte;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mBuffer:[B

.field private mLastField:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFieldId:S

.field private final mTrans:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 14
    const/16 v0, 0x14

    new-array v0, v0, [B

    sput-object v0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->TTYPE_TO_COMPACT_TYPE:[B

    .line 17
    sget-object v0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->TTYPE_TO_COMPACT_TYPE:[B

    aput-byte v1, v0, v1

    .line 18
    sget-object v0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->TTYPE_TO_COMPACT_TYPE:[B

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 19
    sget-object v0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->TTYPE_TO_COMPACT_TYPE:[B

    aput-byte v3, v0, v3

    .line 20
    sget-object v0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->TTYPE_TO_COMPACT_TYPE:[B

    aput-byte v4, v0, v5

    .line 21
    sget-object v0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->TTYPE_TO_COMPACT_TYPE:[B

    const/4 v1, 0x5

    aput-byte v1, v0, v6

    .line 22
    sget-object v0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->TTYPE_TO_COMPACT_TYPE:[B

    const/16 v1, 0xa

    aput-byte v5, v0, v1

    .line 23
    sget-object v0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->TTYPE_TO_COMPACT_TYPE:[B

    const/4 v1, 0x7

    aput-byte v1, v0, v4

    .line 24
    sget-object v0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->TTYPE_TO_COMPACT_TYPE:[B

    const/16 v1, 0xb

    aput-byte v6, v0, v1

    .line 25
    sget-object v0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->TTYPE_TO_COMPACT_TYPE:[B

    const/16 v1, 0xf

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    .line 26
    sget-object v0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->TTYPE_TO_COMPACT_TYPE:[B

    const/16 v1, 0xe

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 27
    sget-object v0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->TTYPE_TO_COMPACT_TYPE:[B

    const/16 v1, 0xd

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    .line 28
    sget-object v0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->TTYPE_TO_COMPACT_TYPE:[B

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    .line 29
    sget-object v0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->TTYPE_TO_COMPACT_TYPE:[B

    const/16 v1, 0x13

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mLastField:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mLastFieldId:S

    .line 67
    iput-object v2, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mBooleanFieldId:Ljava/lang/Short;

    .line 69
    iput-object v2, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mBooleanFieldType:Ljava/lang/Byte;

    .line 72
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mBuffer:[B

    .line 75
    iput-object p1, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mTrans:Ljava/io/OutputStream;

    .line 76
    return-void
.end method

.method private getCompactType(B)B
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->TTYPE_TO_COMPACT_TYPE:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method private static intToZigZag(I)I
    .locals 2

    .prologue
    .line 319
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method private static longToZigzag(J)J
    .locals 4

    .prologue
    .line 311
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private writeBinary([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0, p3}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeVarint32(I)V

    .line 241
    iget-object v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mTrans:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 242
    return-void
.end method

.method private writeByteDirect(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mTrans:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 348
    return-void
.end method

.method private writeByteDirect(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeByteDirect(B)V

    .line 353
    return-void
.end method

.method private writeFieldBeginInternal(BSB)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->getCompactType(B)B

    move-result p3

    .line 132
    :cond_0
    iget-short v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mLastFieldId:S

    if-le p2, v0, :cond_1

    iget-short v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mLastFieldId:S

    sub-int v0, p2, v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 134
    iget-short v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mLastFieldId:S

    sub-int v0, p2, v0

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeByteDirect(I)V

    .line 141
    :goto_0
    iput-short p2, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mLastFieldId:S

    .line 142
    return-void

    .line 137
    :cond_1
    invoke-direct {p0, p3}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeByteDirect(B)V

    .line 138
    invoke-virtual {p0, p2}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI16(S)V

    goto :goto_0
.end method

.method private writeVarint32(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 280
    :goto_0
    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mBuffer:[B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 288
    iget-object v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mTrans:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mBuffer:[B

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 289
    return-void

    .line 284
    :cond_0
    iget-object v3, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mBuffer:[B

    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v4, p1, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 285
    ushr-int/lit8 p1, p1, 0x7

    move v0, v2

    goto :goto_0
.end method

.method private writeVarint64(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 295
    :goto_0
    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mBuffer:[B

    add-int/lit8 v3, v0, 0x1

    long-to-int v4, p1

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 303
    iget-object v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mTrans:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mBuffer:[B

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 304
    return-void

    .line 299
    :cond_0
    iget-object v3, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mBuffer:[B

    add-int/lit8 v2, v0, 0x1

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 300
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public writeBinary([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeBinary([BII)V

    .line 237
    return-void
.end method

.method public writeBool(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 178
    iget-object v2, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mBooleanFieldId:Ljava/lang/Short;

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mBooleanFieldType:Ljava/lang/Byte;

    .line 181
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    iget-object v3, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mBooleanFieldId:Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    if-eqz p1, :cond_0

    .line 180
    :goto_0
    invoke-direct {p0, v2, v3, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldBeginInternal(BSB)V

    .line 182
    iput-object v4, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mBooleanFieldType:Ljava/lang/Byte;

    .line 183
    iput-object v4, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mBooleanFieldId:Ljava/lang/Short;

    .line 188
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 181
    goto :goto_0

    .line 186
    :cond_1
    if-eqz p1, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeByteDirect(B)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public writeByte(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeByteDirect(B)V

    .line 193
    return-void
.end method

.method protected writeCollectionBegin(BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    const/16 v0, 0xe

    if-gt p2, v0, :cond_0

    .line 269
    shl-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->getCompactType(B)B

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeByteDirect(I)V

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->getCompactType(B)B

    move-result v0

    or-int/lit16 v0, v0, 0xf0

    invoke-direct {p0, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeByteDirect(I)V

    .line 272
    invoke-direct {p0, p2}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeVarint32(I)V

    goto :goto_0
.end method

.method public writeFieldBegin(BS)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 116
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mBooleanFieldType:Ljava/lang/Byte;

    .line 117
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mBooleanFieldId:Ljava/lang/Short;

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldBeginInternal(BSB)V

    goto :goto_0
.end method

.method public writeFieldEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    return-void
.end method

.method public writeFieldStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeByteDirect(B)V

    .line 147
    return-void
.end method

.method public writeI16(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->intToZigZag(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeVarint32(I)V

    .line 198
    return-void
.end method

.method public writeI32(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->intToZigZag(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeVarint32(I)V

    .line 203
    return-void
.end method

.method public writeI64(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {p1, p2}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->longToZigzag(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeVarint64(J)V

    .line 208
    return-void
.end method

.method public writeListBegin(BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeCollectionBegin(BI)V

    .line 165
    return-void
.end method

.method public writeListEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    return-void
.end method

.method public writeMapBegin(BBI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    if-nez p3, :cond_0

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeByteDirect(I)V

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-direct {p0, p3}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeVarint32(I)V

    .line 158
    invoke-direct {p0, p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->getCompactType(B)B

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p2}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->getCompactType(B)B

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeByteDirect(I)V

    goto :goto_0
.end method

.method public writeMapEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 228
    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeBinary([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    new-instance v0, Ljava/io/IOException;

    const-string v1, "UTF-8 not supported!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeStructBegin()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mLastField:Ljava/util/List;

    iget-short v1, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mLastFieldId:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mLastFieldId:S

    .line 97
    return-void
.end method

.method public writeStructEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mLastField:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mLastField:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mLastFieldId:S

    .line 105
    iget-object v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mLastField:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mLastField:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lcom/facebook/rti/common/thrift/TCompactProtocol;->mLastFieldId:S

    .line 106
    return-void
.end method
