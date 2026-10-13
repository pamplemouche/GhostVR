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
.field private mIs360:Z

.field private mIs3D:Z

.field private mIsTopBotton:Z

.field private mType:Lcom/oculus/localmedia/MediaType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/localmedia/metadata/CachedMetadata;
    .locals 5

    .prologue
    .line 107
    new-instance v0, Lcom/oculus/localmedia/metadata/CachedMetadata;

    iget-object v1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mType:Lcom/oculus/localmedia/MediaType;

    iget-boolean v2, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs360:Z

    iget-boolean v3, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs3D:Z

    iget-boolean v4, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIsTopBotton:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/localmedia/metadata/CachedMetadata;-><init>(Lcom/oculus/localmedia/MediaType;ZZZ)V

    return-object v0
.end method

.method public from(Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;)Lcom/oculus/localmedia/metadata/CachedMetadata;
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    iput-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mType:Lcom/oculus/localmedia/MediaType;

    .line 78
    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->isSpherical()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs360:Z

    .line 80
    const-string v0, "3DTB"

    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIsTopBotton:Z

    .line 81
    const-string v0, "3D"

    invoke-virtual {p1}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->getFormat()Ljava/lang/String;

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

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/CachedMetadata;

    move-result-object v0

    return-object v0

    .line 81
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIs360(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs360:Z

    .line 93
    return-object p0
.end method

.method public setIs3D(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIs3D:Z

    .line 98
    return-object p0
.end method

.method public setIsTopBotton(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mIsTopBotton:Z

    .line 103
    return-object p0
.end method

.method public setType(Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->mType:Lcom/oculus/localmedia/MediaType;

    .line 88
    return-object p0
.end method
