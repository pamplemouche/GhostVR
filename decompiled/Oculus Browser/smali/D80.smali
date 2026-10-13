.class public final synthetic LD80;
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

    iput-object p1, p0, LD80;->w:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LD80;->w:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    .line 1
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->y:LY80;

    check-cast v0, LG90;

    if-eqz v0, :cond_3

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    sget-object v2, Lf90;->a:Lh90;

    .line 4
    iget-object v2, v2, Lh90;->a:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld90;

    .line 6
    invoke-static {v1, v3}, LW80;->a(Landroid/content/Context;Ld90;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, LG90;->a()LW80;

    move-result-object v0

    invoke-virtual {v0}, LW80;->b()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 8
    throw v0
.end method
