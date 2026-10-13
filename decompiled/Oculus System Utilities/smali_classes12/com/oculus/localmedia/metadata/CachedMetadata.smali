.class public Lcom/oculus/localmedia/metadata/CachedMetadata;
.super Ljava/lang/Object;
.source "CachedMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;
    }
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
.method public constructor <init>(Lcom/oculus/localmedia/MediaType;ZZZZIZ)V
    .locals 0
    .param p1, "type"    # Lcom/oculus/localmedia/MediaType;
    .param p2, "is360"    # Z
    .param p3, "is180"    # Z
    .param p4, "is3D"    # Z
    .param p5, "isTopBotton"    # Z
    .param p6, "orientation"    # I
    .param p7, "hasAudio"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mType:Lcom/oculus/localmedia/MediaType;

    .line 26
    iput-boolean p2, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIs360:Z

    .line 27
    iput-boolean p3, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIs180:Z

    .line 28
    iput-boolean p4, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIs3D:Z

    .line 29
    iput-boolean p5, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIsTopBotton:Z

    .line 30
    iput p6, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mOrientation:I

    .line 31
    iput-boolean p7, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mHasAudio:Z

    .line 32
    return-void
.end method

.method public static builder()Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mOrientation:I

    return v0
.end method

.method public getType()Lcom/oculus/localmedia/MediaType;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mType:Lcom/oculus/localmedia/MediaType;

    return-object v0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mHasAudio:Z

    return v0
.end method

.method public is180()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIs180:Z

    return v0
.end method

.method public is360()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIs360:Z

    return v0
.end method

.method public is3D()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIs3D:Z

    return v0
.end method

.method public isTopBotton()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIsTopBotton:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CachedMetadata{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mType:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIs360="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIs360:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIs180="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIs180:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIs3D="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIs3D:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsTopBotton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIsTopBotton:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mHasAudio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
