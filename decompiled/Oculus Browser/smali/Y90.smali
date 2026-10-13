.class public final synthetic LY90;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/download/home/toolbar/DownloadHomeToolbar;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/home/toolbar/DownloadHomeToolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY90;->w:Lorg/chromium/chrome/browser/download/home/toolbar/DownloadHomeToolbar;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LY90;->w:Lorg/chromium/chrome/browser/download/home/toolbar/DownloadHomeToolbar;

    if-eqz v0, :cond_0

    .line 1
    new-instance v1, LRM0;

    invoke-direct {v1, v0}, LRM0;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lorg/chromium/chrome/browser/download/home/toolbar/DownloadHomeToolbar;->T0:LRM0;

    .line 2
    invoke-virtual {v0, v1}, LpR0;->a(LRM0;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
