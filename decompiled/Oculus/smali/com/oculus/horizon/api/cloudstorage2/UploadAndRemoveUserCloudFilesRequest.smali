.class public Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "UploadAndRemoveUserCloudFilesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public appGroupingID:Ljava/lang/String;

.field public removeFiles:[Lcom/oculus/horizon/api/cloudstorage2/RemoveUserCloudFile;

.field public uploadHandles:[Lcom/oculus/horizon/api/cloudstorage2/UploadUserCloudFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/oculus/horizon/api/cloudstorage2/UploadUserCloudFile;[Lcom/oculus/horizon/api/cloudstorage2/RemoveUserCloudFile;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesRequest;->appGroupingID:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesRequest;->uploadHandles:[Lcom/oculus/horizon/api/cloudstorage2/UploadUserCloudFile;

    .line 21
    iput-object p3, p0, Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesRequest;->removeFiles:[Lcom/oculus/horizon/api/cloudstorage2/RemoveUserCloudFile;

    .line 22
    return-void
.end method


# virtual methods
.method public getParams()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "application_grouping_id"

    iget-object v2, p0, Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesRequest;->appGroupingID:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "upload_file_handles"

    iget-object v2, p0, Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesRequest;->uploadHandles:[Lcom/oculus/horizon/api/cloudstorage2/UploadUserCloudFile;

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "remove_files"

    iget-object v2, p0, Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesRequest;->removeFiles:[Lcom/oculus/horizon/api/cloudstorage2/RemoveUserCloudFile;

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
