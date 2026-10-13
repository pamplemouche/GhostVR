.class public Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;
.super Ljava/lang/Object;
.source "CachedMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/metadata/CachedMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mHasAudio:Z

.field private mIs180:Z

.field private mIs360:Z

.field private mIs3D:Z

.field private mIsTopBotton:Z

.field private mOrientation:I

.field private mType:Lcom/oculus/localmedia/MediaType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/localmedia/metadata/CachedMetadata;
    .locals 8

    .prologue
    .line 151
    new-instance v0, Lcom/oculus/localmedia/metadata/CachedMetadata;

    iget-object v1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mType:Lcom/oculus/localmedia/MediaType;

    iget-boolean v2, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs360:Z

    iget-boolean v3, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs180:Z

    iget-boolean v4, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs3D:Z

    iget-boolean v5, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIsTopBotton:Z

    iget v6, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mOrientation:I

    iget-boolean v7, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mHasAudio:Z

    invoke-direct/range {v0 .. v7}, Lcom/oculus/localmedia/metadata/CachedMetadata;-><init>(Lcom/oculus/localmedia/MediaType;ZZZZIZ)V

    return-object v0
.end method

.method public from(Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;)Lcom/oculus/localmedia/metadata/CachedMetadata;
    .locals 2
    .param p1, "metadata"    # Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    .prologue
    .line 103
    sget-object v0, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    iput-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mType:Lcom/oculus/localmedia/MediaType;

    .line 104
    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->isSpherical()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs360:Z

    .line 106
    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->is180()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs180:Z

    .line 107
    const-string v0, "3DTB"

    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIsTopBotton:Z

    .line 108
    const-string v0, "3D"

    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3DLR"

    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIsTopBotton:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs3D:Z

    .line 109
    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mOrientation:I

    .line 110
    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->hasAudio()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mHasAudio:Z

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/CachedMetadata;

    move-result-object v0

    return-object v0

    .line 108
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public from(Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;)Lcom/oculus/localmedia/metadata/CachedMetadata;
    .locals 3
    .param p1, "metadata"    # Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    .prologue
    const/4 v1, 0x0

    .line 90
    sget-object v0, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    iput-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mType:Lcom/oculus/localmedia/MediaType;

    .line 91
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->isSpherical()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs360:Z

    .line 93
    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->is180()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs180:Z

    .line 94
    const-string v0, "3DTB"

    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIsTopBotton:Z

    .line 95
    const-string v0, "3D"

    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3DLR"

    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIsTopBotton:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs3D:Z

    .line 96
    iput v1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mOrientation:I

    .line 97
    iput-boolean v1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mHasAudio:Z

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/CachedMetadata;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v1

    .line 95
    goto :goto_0
.end method

.method public setHasAudio(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;
    .locals 0
    .param p1, "hasAudio"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mHasAudio:Z

    .line 147
    return-object p0
.end method

.method public setIs180(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;
    .locals 0
    .param p1, "is180"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs180:Z

    .line 127
    return-object p0
.end method

.method public setIs360(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;
    .locals 0
    .param p1, "is360"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs360:Z

    .line 122
    return-object p0
.end method

.method public setIs3D(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;
    .locals 0
    .param p1, "is3D"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs3D:Z

    .line 132
    return-object p0
.end method

.method public setIsTopBotton(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;
    .locals 0
    .param p1, "mIsTopBotton"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIsTopBotton:Z

    .line 137
    return-object p0
.end method

.method public setOrientation(I)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;
    .locals 0
    .param p1, "degrees"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mOrientation:I

    .line 142
    return-object p0
.end method

.method public setType(Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;
    .locals 0
    .param p1, "type"    # Lcom/oculus/localmedia/MediaType;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mType:Lcom/oculus/localmedia/MediaType;

    .line 117
    return-object p0
.end method
