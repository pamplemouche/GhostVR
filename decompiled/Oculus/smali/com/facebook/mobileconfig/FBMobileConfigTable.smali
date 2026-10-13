.class public Lcom/facebook/mobileconfig/FBMobileConfigTable;
.super Lcom/google/flatbuffers/Table;
.source "FBMobileConfigTable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static getRootAsFBMobileConfigTable(Ljava/nio/ByteBuffer;)Lcom/facebook/mobileconfig/FBMobileConfigTable;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/facebook/mobileconfig/FBMobileConfigTable;

    invoke-direct {v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;-><init>()V

    invoke-static {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->getRootAsFBMobileConfigTable(Ljava/nio/ByteBuffer;Lcom/facebook/mobileconfig/FBMobileConfigTable;)Lcom/facebook/mobileconfig/FBMobileConfigTable;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsFBMobileConfigTable(Ljava/nio/ByteBuffer;Lcom/facebook/mobileconfig/FBMobileConfigTable;)Lcom/facebook/mobileconfig/FBMobileConfigTable;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__init(ILjava/nio/ByteBuffer;)Lcom/facebook/mobileconfig/FBMobileConfigTable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public __init(ILjava/nio/ByteBuffer;)Lcom/facebook/mobileconfig/FBMobileConfigTable;
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTable;->bb_pos:I

    .line 24
    iput-object p2, p0, Lcom/facebook/mobileconfig/FBMobileConfigTable;->bb:Ljava/nio/ByteBuffer;

    .line 25
    return-object p0
.end method

.method public bools(I)B
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__offset(I)I

    move-result v0

    .line 39
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTable;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__vector(I)I

    move-result v0

    mul-int/lit8 v2, p1, 0x1

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public boolsMeta(I)I
    .locals 3

    .prologue
    .line 52
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__offset(I)I

    move-result v0

    .line 53
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTable;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__vector(I)I

    move-result v0

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doubles(I)D
    .locals 3

    .prologue
    .line 122
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__offset(I)I

    move-result v0

    .line 123
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTable;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__vector(I)I

    move-result v0

    mul-int/lit8 v2, p1, 0x8

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public doublesMeta(I)I
    .locals 3

    .prologue
    .line 136
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__offset(I)I

    move-result v0

    .line 137
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTable;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__vector(I)I

    move-result v0

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public emergencyPushInfo(I)Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;

    invoke-direct {v0}, Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->emergencyPushInfo(Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;I)Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;

    move-result-object v0

    return-object v0
.end method

.method public emergencyPushInfo(Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;I)Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 193
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__offset(I)I

    move-result v0

    .line 194
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__vector(I)I

    move-result v0

    mul-int/lit8 v1, p2, 0x4

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__indirect(I)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTable;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;->__init(ILjava/nio/ByteBuffer;)Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public emergencyPushInfoLength()I
    .locals 1

    .prologue
    .line 198
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__offset(I)I

    move-result v0

    .line 199
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__vector_len(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loggingIds(I)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 174
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__offset(I)I

    move-result v0

    .line 175
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__vector(I)I

    move-result v0

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__string(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loggingIdsLength()I
    .locals 1

    .prologue
    .line 179
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__offset(I)I

    move-result v0

    .line 180
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__vector_len(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longs(I)J
    .locals 3

    .prologue
    .line 66
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__offset(I)I

    move-result v0

    .line 67
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTable;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__vector(I)I

    move-result v0

    mul-int/lit8 v2, p1, 0x8

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public longsMeta(I)I
    .locals 3

    .prologue
    .line 80
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__offset(I)I

    move-result v0

    .line 81
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTable;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__vector(I)I

    move-result v0

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public magic()I
    .locals 3

    .prologue
    .line 184
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__offset(I)I

    move-result v0

    .line 185
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTable;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/facebook/mobileconfig/FBMobileConfigTable;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public schemaHashAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public strings(I)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 150
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__offset(I)I

    move-result v0

    .line 151
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__vector(I)I

    move-result v0

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__string(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stringsMeta(I)I
    .locals 3

    .prologue
    .line 160
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__offset(I)I

    move-result v0

    .line 161
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTable;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;->__vector(I)I

    move-result v0

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
