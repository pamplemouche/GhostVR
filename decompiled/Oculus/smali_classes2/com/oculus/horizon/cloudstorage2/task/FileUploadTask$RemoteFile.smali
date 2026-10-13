.class public Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$RemoteFile;
.super Ljava/lang/Object;
.source "FileUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteFile"
.end annotation


# instance fields
.field public final file:Ljava/io/File;

.field public final uploadedHandle:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$RemoteFile;->file:Ljava/io/File;

    .line 36
    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$RemoteFile;->uploadedHandle:Ljava/lang/String;

    .line 37
    return-void
.end method
