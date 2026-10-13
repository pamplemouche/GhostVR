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
.field private mIs360:Z

.field private mIs3D:Z

.field private mIsTopBotton:Z

.field private mType:Lcom/oculus/localmedia/MediaType;


# direct methods
.method public constructor <init>(Lcom/oculus/localmedia/MediaType;ZZZ)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mType:Lcom/oculus/localmedia/MediaType;

    .line 22
    iput-boolean p2, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIs360:Z

    .line 23
    iput-boolean p3, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIs3D:Z

    .line 24
    iput-boolean p4, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIsTopBotton:Z

    .line 25
    return-void
.end method

.method public static builder()Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/oculus/localmedia/MediaType;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mType:Lcom/oculus/localmedia/MediaType;

    return-object v0
.end method

.method public is360()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIs360:Z

    return v0
.end method

.method public is3D()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIs3D:Z

    return v0
.end method

.method public isTopBotton()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadata;->mIsTopBotton:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
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

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
