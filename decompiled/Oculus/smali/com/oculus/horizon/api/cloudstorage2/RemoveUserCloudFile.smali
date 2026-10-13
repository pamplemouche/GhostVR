.class public Lcom/oculus/horizon/api/cloudstorage2/RemoveUserCloudFile;
.super Ljava/lang/Object;
.source "RemoveUserCloudFile.java"


# instance fields
.field public expected_sha1_hash:Ljava/lang/String;

.field public relative_path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/oculus/horizon/api/cloudstorage2/RemoveUserCloudFile;->relative_path:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/oculus/horizon/api/cloudstorage2/RemoveUserCloudFile;->expected_sha1_hash:Ljava/lang/String;

    .line 12
    return-void
.end method
