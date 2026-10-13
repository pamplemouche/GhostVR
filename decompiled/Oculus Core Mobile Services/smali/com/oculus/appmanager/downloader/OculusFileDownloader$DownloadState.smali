.class Lcom/oculus/appmanager/downloader/OculusFileDownloader$DownloadState;
.super Ljava/lang/Object;
.source "OculusFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/downloader/OculusFileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadState"
.end annotation


# instance fields
.field downloadedTimestamp:J

.field isNotificationSent:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/appmanager/downloader/OculusFileDownloader$1;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oculus/appmanager/downloader/OculusFileDownloader$DownloadState;-><init>()V

    return-void
.end method
