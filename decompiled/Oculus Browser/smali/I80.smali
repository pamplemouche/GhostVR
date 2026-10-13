.class public final synthetic LI80;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/download/DownloadManagerService;

.field public final x:Ljava/lang/String;

.field public final y:Z


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI80;->w:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iput-object p2, p0, LI80;->x:Ljava/lang/String;

    iput-boolean p3, p0, LI80;->y:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LI80;->w:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iget-object v1, p0, LI80;->x:Ljava/lang/String;

    iget-boolean v2, p0, LI80;->y:Z

    .line 1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b()J

    move-result-wide v3

    .line 2
    invoke-static {v3, v4, v0, v1, v2}, LJ/N;->M8Q_hBf$(JLjava/lang/Object;Ljava/lang/String;Z)V

    .line 3
    iget-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->x:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->c(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->Q:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
