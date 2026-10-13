.class public Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;
.super Ljava/lang/Object;
.source "CloudStorage2Metadata.java"


# instance fields
.field public final files:[Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;


# direct methods
.method public constructor <init>([Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;->files:[Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;

    .line 16
    return-void
.end method

.method public static fromGraphQL(Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;
    .locals 4

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;->getUserCloudFiles()[Lcom/oculus/horizon/api/cloudstorage2/UserCloudFile;

    move-result-object v1

    .line 20
    array-length v0, v1

    new-array v2, v0, [Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;

    .line 22
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 23
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;->fromGraphQL(Lcom/oculus/horizon/api/cloudstorage2/UserCloudFile;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;

    move-result-object v3

    aput-object v3, v2, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    invoke-direct {v0, v2}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;-><init>([Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;)V

    return-object v0
.end method


# virtual methods
.method public toMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 33
    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;->files:[Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 34
    iget-object v5, v4, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;->relativePath:Ljava/lang/String;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-object v1
.end method
