.class public Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;
.super Ljava/lang/Object;
.source "FileDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileRequest"
.end annotation


# instance fields
.field public final cloudFileUri:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final relativePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;->id:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;->cloudFileUri:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;->relativePath:Ljava/lang/String;

    .line 46
    return-void
.end method
