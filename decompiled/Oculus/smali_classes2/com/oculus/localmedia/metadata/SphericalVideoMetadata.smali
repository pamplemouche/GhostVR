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

.field private mSpherical:Z


# direct methods
.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mSpherical:Z

    .line 30
    iput-object p2, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mProjectionType:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mFormat:Ljava/lang/String;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static builder()Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public isSpherical()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mSpherical:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SphericalVideoMetadata{mSpherical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->mSpherical:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProjectionType=\'"

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
