.class public Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;
.super Ljava/lang/Object;
.source "SphericalVideoMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;
    }
.end annotation


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mProjectionType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "projectionType"    # Ljava/lang/String;
    .param p2, "stereoMode"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mProjectionType:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mFormat:Ljava/lang/String;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$1;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static builder()Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public is180()Z
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mProjectionType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mProjectionType:Ljava/lang/String;

    const-string v1, "VR180"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mProjectionType:Ljava/lang/String;

    const-string v1, "DUALFISHEYE"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mProjectionType:Ljava/lang/String;

    const-string v1, "SINGLEFISHEYE"

    .line 26
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

.method public isSpherical()Z
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mProjectionType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mProjectionType:Ljava/lang/String;

    const-string v1, "EQUIRECTANGULAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mProjectionType:Ljava/lang/String;

    const-string v1, "CUBEMAP"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mProjectionType:Ljava/lang/String;

    const-string v1, "VR180"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mProjectionType:Ljava/lang/String;

    const-string v1, "DUALFISHEYE"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mProjectionType:Ljava/lang/String;

    const-string v1, "SINGLEFISHEYE"

    .line 19
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

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SphericalVideoMetadata{, mProjectionType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mProjectionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFormat=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
