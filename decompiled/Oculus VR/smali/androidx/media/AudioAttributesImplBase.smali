.class public Landroidx/media/AudioAttributesImplBase;
.super Ljava/lang/Object;
.source "AudioAttributesImplBase.java"

# interfaces
.implements Landroidx/media/AudioAttributesImpl;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# instance fields
.field public mContentType:I
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field

.field public mFlags:I
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field

.field public mLegacyStream:I
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field

.field public mUsage:I
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 47
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 51
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 62
    return-void
.end method

.method constructor <init>(IIII)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 47
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 51
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 65
    iput p1, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 66
    iput p2, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 67
    iput p3, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 68
    iput p4, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 140
    instance-of v1, p1, Landroidx/media/AudioAttributesImplBase;

    if-nez v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    check-cast p1, Landroidx/media/AudioAttributesImplBase;

    .line 144
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    invoke-virtual {p1}, Landroidx/media/AudioAttributesImplBase;->getContentType()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 145
    invoke-virtual {p1}, Landroidx/media/AudioAttributesImplBase;->getFlags()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 146
    invoke-virtual {p1}, Landroidx/media/AudioAttributesImplBase;->getUsage()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    iget v2, p1, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    return v0
.end method

.method public getFlags()I
    .locals 3

    .prologue
    .line 108
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 109
    invoke-virtual {p0}, Landroidx/media/AudioAttributesImplBase;->getLegacyStreamType()I

    move-result v1

    .line 110
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 111
    or-int/lit8 v0, v0, 0x4

    .line 115
    :cond_0
    :goto_0
    and-int/lit16 v0, v0, 0x111

    return v0

    .line 112
    :cond_1
    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 113
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLegacyStreamType()I
    .locals 3

    .prologue
    .line 85
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 86
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    invoke-static {v0, v1, v2}, Landroidx/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    goto :goto_0
.end method

.method public getUsage()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 154
    const-string v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, " derived"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    const-string v1, " usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 158
    invoke-static {v2}, Landroidx/media/AudioAttributesCompat;->usageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content="

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
