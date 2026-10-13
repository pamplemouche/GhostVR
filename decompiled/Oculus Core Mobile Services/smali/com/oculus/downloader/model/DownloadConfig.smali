.class public Lcom/oculus/downloader/model/DownloadConfig;
.super Ljava/lang/Object;
.source "DownloadConfig.java"


# instance fields
.field public final description:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final fileMimeType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final fileUri:Ljava/lang/String;

.field public final networks:I

.field public final title:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final uri:Ljava/lang/String;

.field public final visibility:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcom/oculus/downloader/model/DownloadConfig;->uri:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/oculus/downloader/model/DownloadConfig;->fileUri:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/oculus/downloader/model/DownloadConfig;->fileMimeType:Ljava/lang/String;

    .line 46
    iput p4, p0, Lcom/oculus/downloader/model/DownloadConfig;->networks:I

    .line 47
    iput p5, p0, Lcom/oculus/downloader/model/DownloadConfig;->visibility:I

    .line 48
    iput-object p6, p0, Lcom/oculus/downloader/model/DownloadConfig;->title:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/oculus/downloader/model/DownloadConfig;->description:Ljava/lang/String;

    .line 50
    return-void
.end method
