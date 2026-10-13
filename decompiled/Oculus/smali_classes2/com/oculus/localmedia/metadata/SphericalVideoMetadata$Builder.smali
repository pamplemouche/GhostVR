.class public Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;
.super Ljava/lang/Object;
.source "SphericalVideoMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mProjectionType:Ljava/lang/String;

.field private mSpherical:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;
    .locals 5

    .prologue
    .line 78
    new-instance v0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    iget-boolean v1, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->mSpherical:Z

    iget-object v2, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->mProjectionType:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->mFormat:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$1;)V

    return-object v0
.end method

.method public from(Lcom/oculus/localmedia/metadata/CachedMetadata;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;
    .locals 1

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/CachedMetadata;->is360()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->mSpherical:Z

    .line 56
    iget-boolean v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->mSpherical:Z

    if-eqz v0, :cond_1

    const-string v0, "equirectangular"

    :goto_0
    iput-object v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->mProjectionType:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/CachedMetadata;->isTopBotton()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "3DTB"

    :goto_1
    iput-object v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->mFormat:Ljava/lang/String;

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    move-result-object v0

    return-object v0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/CachedMetadata;->is3D()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "3D"

    goto :goto_1

    :cond_3
    const-string v0, "2D"

    goto :goto_1
.end method

.method public setFormat(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->mFormat:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public setProjectionType(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->mProjectionType:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setSpherical(Z)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->mSpherical:Z

    .line 64
    return-object p0
.end method
