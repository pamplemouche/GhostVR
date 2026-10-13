.class public Lcom/oculus/horizon/spatialai/MapUploadRequest;
.super Ljava/lang/Object;
.source "MapUploadRequest.java"


# instance fields
.field private mCloudFile:Lretrofit/mime/TypedFile;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mGuardianInfo:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mUuid:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/oculus/horizon/spatialai/MapUploadRequest;->mUuid:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/oculus/horizon/spatialai/MapUploadRequest;->mGuardianInfo:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/oculus/horizon/spatialai/MapUploadRequest;->mCloudFile:Lretrofit/mime/TypedFile;

    .line 24
    return-void
.end method

.method private static varargs isNonNull([Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 73
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 74
    if-nez v3, :cond_0

    .line 79
    :goto_1
    return v0

    .line 73
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private isPopulated()Z
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oculus/horizon/spatialai/MapUploadRequest;->mUuid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oculus/horizon/spatialai/MapUploadRequest;->mGuardianInfo:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/oculus/horizon/spatialai/MapUploadRequest;->mCloudFile:Lretrofit/mime/TypedFile;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/oculus/horizon/spatialai/MapUploadRequest;->isNonNull([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getCloudFile()Lretrofit/mime/TypedFile;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/spatialai/MapUploadRequest;->mCloudFile:Lretrofit/mime/TypedFile;

    return-object v0
.end method

.method public getUploadParams()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oculus/horizon/spatialai/MapUploadRequest;->isPopulated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params were not populated correctly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 34
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/oculus/horizon/spatialai/MapUploadRequest;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 35
    const-string v1, "guardian_info"

    iget-object v2, p0, Lcom/oculus/horizon/spatialai/MapUploadRequest;->mGuardianInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 38
    const-string v1, "cloud_file"

    const-string v2, "cloud_file"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 39
    const-string v1, "mutation_params"

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/spatialai/MapUploadRequest;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public setCloudFile(Lretrofit/mime/TypedFile;)Lcom/oculus/horizon/spatialai/MapUploadRequest;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oculus/horizon/spatialai/MapUploadRequest;->mCloudFile:Lretrofit/mime/TypedFile;

    .line 65
    return-object p0
.end method

.method public setGuardianInfo(Ljava/lang/String;)Lcom/oculus/horizon/spatialai/MapUploadRequest;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oculus/horizon/spatialai/MapUploadRequest;->mGuardianInfo:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/oculus/horizon/spatialai/MapUploadRequest;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oculus/horizon/spatialai/MapUploadRequest;->mUuid:Ljava/lang/String;

    .line 49
    return-object p0
.end method
