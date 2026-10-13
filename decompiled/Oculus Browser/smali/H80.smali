.class public final synthetic LH80;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/download/DownloadManagerService;

.field public final b:Lorg/chromium/chrome/browser/download/DownloadItem;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/chrome/browser/download/DownloadItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH80;->a:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iput-object p2, p0, LH80;->b:Lorg/chromium/chrome/browser/download/DownloadItem;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LH80;->a:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iget-object v1, p0, LH80;->b:Lorg/chromium/chrome/browser/download/DownloadItem;

    check-cast p1, Lz80;

    .line 1
    invoke-virtual {v0, v1, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadItem;Lz80;)V

    return-void
.end method
