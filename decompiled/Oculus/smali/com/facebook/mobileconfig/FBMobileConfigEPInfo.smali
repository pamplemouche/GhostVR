.class public final Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;
.super Lcom/google/flatbuffers/Table;
.source "FBMobileConfigEPInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method


# virtual methods
.method public __init(ILjava/nio/ByteBuffer;)Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;->bb_pos:I

    .line 22
    iput-object p2, p0, Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;->bb:Ljava/nio/ByteBuffer;

    .line 23
    return-object p0
.end method

.method public configIndex()I
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;->__offset(I)I

    move-result v0

    .line 28
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public version()I
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;->__offset(I)I

    move-result v0

    .line 33
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/facebook/mobileconfig/FBMobileConfigEPInfo;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
