.class public Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;
.super Ljava/lang/Object;
.source "ImageHeaderMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mHasAudio:Z

.field private mOrientationDegrees:I

.field private mProjectionType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;
    .locals 6

    .prologue
    .line 94
    new-instance v0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    iget-object v1, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->mProjectionType:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->mFormat:Ljava/lang/String;

    iget v3, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->mOrientationDegrees:I

    iget-boolean v4, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->mHasAudio:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;IZLcom/oculus/localmedia/metadata/ImageHeaderMetadata$1;)V

    return-object v0
.end method

.method public from(Lcom/oculus/localmedia/metadata/CachedMetadata;)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;
    .locals 1
    .param p1, "metadata"    # Lcom/oculus/localmedia/metadata/CachedMetadata;

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/CachedMetadata;->is180()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VR180"

    :goto_0
    iput-object v0, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->mProjectionType:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/CachedMetadata;->isTopBotton()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "3DTB"

    :goto_1
    iput-object v0, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->mFormat:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/CachedMetadata;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->mOrientationDegrees:I

    .line 68
    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/CachedMetadata;->hasAudio()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->mHasAudio:Z

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    move-result-object v0

    return-object v0

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/CachedMetadata;->is360()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "EQUIRECTANGULAR"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/CachedMetadata;->is3D()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "3D"

    goto :goto_1

    :cond_4
    const-string v0, "2D"

    goto :goto_1
.end method

.method public setFormat(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->mFormat:Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public setHasAudio(Z)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;
    .locals 0
    .param p1, "hasAudio"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->mHasAudio:Z

    .line 90
    return-object p0
.end method

.method public setOrientation(I)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;
    .locals 0
    .param p1, "degrees"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->mOrientationDegrees:I

    .line 85
    return-object p0
.end method

.method public setProjectionType(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;
    .locals 0
    .param p1, "projectionType"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->mProjectionType:Ljava/lang/String;

    .line 75
    return-object p0
.end method
