.class public Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;
.super Lcom/facebook/mobileconfig/FBMobileConfigTable;
.source "FBMobileConfigTableOptimized.java"


# instance fields
.field private boolsMetaOffset:I

.field private boolsOffset:I

.field private doublesMetaOffset:I

.field private doublesOffset:I

.field private final epInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private intsMetaOffset:I

.field private intsOffset:I

.field private loggingIdsOffset:I

.field private longsMetaOffset:I

.field private longsOffset:I

.field private stringsMetaOffset:I

.field private stringsOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/facebook/mobileconfig/FBMobileConfigTable;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->epInfo:Ljava/util/Map;

    return-void
.end method

.method public static getRootAsFBMobileConfigTableOptimized(Ljava/nio/ByteBuffer;)Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    invoke-direct {v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;-><init>()V

    .line 30
    invoke-static {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->getRootAsFBMobileConfigTable(Ljava/nio/ByteBuffer;Lcom/facebook/mobileconfig/FBMobileConfigTable;)Lcom/facebook/mobileconfig/FBMobileConfigTable;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    .line 31
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->initilizeOffsets()V

    .line 32
    return-object v0
.end method


# virtual methods
.method public bools(I)B
    .locals 3

    .prologue
    .line 59
    iget v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->boolsOffset:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->boolsOffset:I

    invoke-virtual {p0, v1}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p1, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

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
    .line 63
    iget v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->boolsMetaOffset:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->boolsMetaOffset:I

    invoke-virtual {p0, v1}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

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
    .line 83
    iget v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->doublesOffset:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->doublesOffset:I

    invoke-virtual {p0, v1}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p1, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDouble(I)D

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
    .line 87
    iget v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->doublesMetaOffset:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->doublesMetaOffset:I

    invoke-virtual {p0, v1}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initilizeOffsets()V
    .locals 4

    .prologue
    .line 39
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__offset(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->boolsOffset:I

    .line 40
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__offset(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->boolsMetaOffset:I

    .line 41
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__offset(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->longsOffset:I

    .line 42
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__offset(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->longsMetaOffset:I

    .line 43
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__offset(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->intsOffset:I

    .line 44
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__offset(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->intsMetaOffset:I

    .line 45
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__offset(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->doublesOffset:I

    .line 46
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__offset(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->doublesMetaOffset:I

    .line 47
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__offset(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->stringsOffset:I

    .line 48
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__offset(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->stringsMetaOffset:I

    .line 49
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__offset(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->loggingIdsOffset:I

    .line 50
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->emergencyPushInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 51
    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->emergencyPushInfo(I)Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    iget-object v2, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->epInfo:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;->configIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;->version()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method public loggingIds(I)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 99
    iget v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->loggingIdsOffset:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->loggingIdsOffset:I

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__vector(I)I

    move-result v0

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__string(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longs(I)J
    .locals 3

    .prologue
    .line 67
    iget v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->longsOffset:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->longsOffset:I

    invoke-virtual {p0, v1}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p1, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

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
    .line 71
    iget v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->longsMetaOffset:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->longsMetaOffset:I

    invoke-virtual {p0, v1}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public strings(I)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 91
    iget v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->stringsOffset:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->stringsOffset:I

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__vector(I)I

    move-result v0

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__string(I)Ljava/lang/String;

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
    .line 95
    iget v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->stringsMetaOffset:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->stringsMetaOffset:I

    invoke-virtual {p0, v1}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
