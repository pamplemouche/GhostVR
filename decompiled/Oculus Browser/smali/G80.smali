.class public final synthetic LG80;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/download/DownloadManagerService;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG80;->w:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LG80;->w:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->M:Z

    .line 2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->c()V

    return-void
.end method
