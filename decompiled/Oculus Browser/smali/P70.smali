.class public final synthetic LP70;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/content/Intent;

.field public final d:J

.field public final e:LbU0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;Landroid/content/Context;Landroid/content/Intent;JLbU0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP70;->a:Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;

    iput-object p2, p0, LP70;->b:Landroid/content/Context;

    iput-object p3, p0, LP70;->c:Landroid/content/Intent;

    iput-wide p4, p0, LP70;->d:J

    iput-object p6, p0, LP70;->e:LbU0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, LP70;->a:Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;

    iget-object v1, p0, LP70;->b:Landroid/content/Context;

    iget-object v2, p0, LP70;->c:Landroid/content/Intent;

    iget-wide v3, p0, LP70;->d:J

    iget-object v5, p0, LP70;->e:LbU0;

    check-cast p1, LA80;

    if-eqz v0, :cond_1

    .line 1
    iget-object p1, p1, LA80;->d:Landroid/net/Uri;

    if-nez p1, :cond_0

    const/4 p1, 0x3

    .line 2
    invoke-static {v1, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->a(Landroid/content/Context;Landroid/content/Intent;JLbU0;)V

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
