.class public Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;
.super Ljava/lang/Object;
.source "CloudStorage2FileMetadata.java"


# instance fields
.field public modifiedTime:J

.field public relativePath:Ljava/lang/String;

.field public sha1:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromGraphQL(Lcom/oculus/horizon/api/cloudstorage2/UserCloudFile;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;
    .locals 4

    .prologue
    .line 14
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;

    invoke-direct {v0}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;-><init>()V

    .line 16
    iget v1, p0, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFile;->uploaded_time:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;->modifiedTime:J

    .line 17
    iget-object v1, p0, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFile;->relative_path:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;->relativePath:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFile;->sha1_hash:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;->sha1:Ljava/lang/String;

    .line 20
    return-object v0
.end method
