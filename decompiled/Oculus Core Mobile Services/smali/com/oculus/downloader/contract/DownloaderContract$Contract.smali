.class public Lcom/oculus/downloader/contract/DownloaderContract$Contract;
.super Ljava/lang/Object;
.source "DownloaderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/downloader/contract/DownloaderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contract"
.end annotation


# static fields
.field public static ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String;

.field public static EXTRA_DOWNLOAD_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "download_complete"

    sput-object v0, Lcom/oculus/downloader/contract/DownloaderContract$Contract;->ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String;

    .line 29
    const-string v0, "download_id"

    sput-object v0, Lcom/oculus/downloader/contract/DownloaderContract$Contract;->EXTRA_DOWNLOAD_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
