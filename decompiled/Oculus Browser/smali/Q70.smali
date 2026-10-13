.class public LQ70;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQ70;->w:Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LQ70;->w:Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
