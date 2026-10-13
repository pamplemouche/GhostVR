.class public Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;
.super Ljava/lang/Object;
.source "UserCloudFilesResponse.java"

# interfaces
.implements Lcom/oculus/http/core/base/ValidatableApiResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse$UserCloudFiles;,
        Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse$User;,
        Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse$Viewer;
    }
.end annotation


# instance fields
.field public viewer:Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse$Viewer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserCloudFiles()[Lcom/oculus/horizon/api/cloudstorage2/UserCloudFile;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;->viewer:Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse$Viewer;->user:Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse$User;

    iget-object v0, v0, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse$User;->cloud_files:Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse$UserCloudFiles;

    iget-object v0, v0, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse$UserCloudFiles;->nodes:[Lcom/oculus/horizon/api/cloudstorage2/UserCloudFile;

    return-object v0
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;->viewer:Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse$Viewer;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received an invalid UserCloudFilesResponse. Response didn\'t have a viewer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;->viewer:Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse$Viewer;->user:Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse$User;

    if-nez v0, :cond_1

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received an invalid UserCloudFilesResponse. Viewer didn\'t have a user"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    return-void
.end method
