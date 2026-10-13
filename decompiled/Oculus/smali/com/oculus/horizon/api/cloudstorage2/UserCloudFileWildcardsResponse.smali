.class public Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse;
.super Ljava/lang/Object;
.source "UserCloudFileWildcardsResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse$UserCloudFileWildcard;,
        Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse$UserCloudFileWildcards;
    }
.end annotation


# instance fields
.field public cloud_file_wildcards:Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse$UserCloudFileWildcards;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
