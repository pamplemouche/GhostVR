.class public final synthetic Lw80;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Ljava/lang/String;

.field public final x:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw80;->w:Ljava/lang/String;

    iput-boolean p2, p0, Lw80;->x:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lw80;->w:Ljava/lang/String;

    iget-boolean v1, p0, Lw80;->x:Z

    .line 1
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->b(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 2
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "download"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    :cond_0
    return-void
.end method
