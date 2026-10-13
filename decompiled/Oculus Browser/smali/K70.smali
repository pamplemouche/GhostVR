.class public final synthetic LK70;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKc1;


# instance fields
.field public final a:LM70;

.field public final b:Lorg/chromium/chrome/browser/download/DownloadInfo;


# direct methods
.method public constructor <init>(LM70;Lorg/chromium/chrome/browser/download/DownloadInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK70;->a:LM70;

    iput-object p2, p0, LK70;->b:Lorg/chromium/chrome/browser/download/DownloadInfo;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;[I)V
    .locals 3

    iget-object p1, p0, LK70;->a:LM70;

    iget-object v0, p0, LK70;->b:Lorg/chromium/chrome/browser/download/DownloadInfo;

    if-eqz p1, :cond_1

    .line 1
    array-length v1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget p2, p2, v1

    if-nez p2, :cond_0

    .line 2
    iget-object p2, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->e:Ljava/lang/String;

    .line 3
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    .line 4
    iget-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->a:Ljava/lang/String;

    .line 5
    invoke-static {v1, v2, p2}, LM70;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, LL70;

    invoke-direct {v2, p1, v0, v1, p2}, LL70;-><init>(LM70;Lorg/chromium/chrome/browser/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    invoke-virtual {v2, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1
.end method
