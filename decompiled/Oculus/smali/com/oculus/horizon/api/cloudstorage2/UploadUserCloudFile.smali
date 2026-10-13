.class public Lcom/oculus/horizon/api/cloudstorage2/UploadUserCloudFile;
.super Ljava/lang/Object;
.source "UploadUserCloudFile.java"


# instance fields
.field public final expected_sha1_hash:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final file_handle:Ljava/lang/String;

.field public final relative_path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/oculus/horizon/api/cloudstorage2/UploadUserCloudFile;->relative_path:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/oculus/horizon/api/cloudstorage2/UploadUserCloudFile;->file_handle:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/oculus/horizon/api/cloudstorage2/UploadUserCloudFile;->expected_sha1_hash:Ljava/lang/String;

    .line 17
    return-void
.end method
