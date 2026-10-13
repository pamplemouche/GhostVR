.class public final synthetic Laf0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laf0;->w:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Laf0;->w:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;

    .line 1
    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->H:LK0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, LK0;->start()V

    :goto_0
    return-void
.end method
