.class Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;
.super Ljava/lang/Object;
.source "MediaProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/MediaProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XMPExtendedMetadata"
.end annotation


# instance fields
.field private chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private totalLength:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;->chunks:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;->totalLength:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/localmedia/MediaProviderUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oculus/localmedia/MediaProviderUtils$1;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;-><init>()V

    return-void
.end method


# virtual methods
.method public addSegment([B)V
    .locals 2
    .param p1, "segment"    # [B

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;->chunks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget v0, p0, Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;->totalLength:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;->totalLength:I

    .line 58
    return-void
.end method

.method public decode()[B
    .locals 6

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, "position":I
    iget v3, p0, Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;->totalLength:I

    new-array v1, v3, [B

    .line 63
    .local v1, "full":[B
    iget-object v3, p0, Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 64
    .local v0, "chunk":[B
    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    array-length v4, v0

    add-int/2addr v2, v4

    .line 66
    goto :goto_0

    .line 67
    .end local v0    # "chunk":[B
    :cond_0
    invoke-static {v1}, Lcom/adobe/xmp/impl/Base64;->decode([B)[B

    move-result-object v3

    return-object v3
.end method
