.class public Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;
.super Ljava/lang/Object;
.source "ImageHeaderMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;
    }
.end annotation


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mHasAudio:Z

.field private mOrientationDegrees:I

.field private mProjectionType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "projectionType"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "degrees"    # I
    .param p4, "hasAudio"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->mProjectionType:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->mFormat:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->mOrientationDegrees:I

    .line 39
    iput-boolean p4, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->mHasAudio:Z

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLcom/oculus/localmedia/metadata/ImageHeaderMetadata$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$1;

    .prologue
    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static builder()Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->mOrientationDegrees:I

    return v0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->mHasAudio:Z

    return v0
.end method

.method public is180()Z
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->mProjectionType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->mProjectionType:Ljava/lang/String;

    const-string v1, "VR180"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpherical()Z
    .locals 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->mProjectionType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->mProjectionType:Ljava/lang/String;

    const-string v1, "EQUIRECTANGULAR"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->mProjectionType:Ljava/lang/String;

    const-string v1, "VR180"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageHeaderMetadata{mProjectionType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->mProjectionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFormat=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrientationDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->mOrientationDegrees:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->mHasAudio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
