.class public final synthetic Lu90;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LB90;

.field public final b:J

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(LB90;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu90;->a:LB90;

    iput-wide p2, p0, Lu90;->b:J

    iput-object p4, p0, Lu90;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 10

    iget-object v7, p0, Lu90;->a:LB90;

    iget-wide v8, p0, Lu90;->b:J

    iget-object v6, p0, Lu90;->c:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, LA80;

    .line 1
    iget-object p1, v7, LB90;->c:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/download/DownloadItem;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lorg/chromium/chrome/browser/download/DownloadItem;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lorg/chromium/chrome/browser/download/DownloadItem;-><init>(ZLorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 3
    iput-wide v8, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->d:J

    .line 4
    iget-object v1, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->a:LbU0;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LbU0;->b:Ljava/lang/String;

    :cond_0
    move-object v2, p1

    .line 5
    iget-object p1, v2, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ln80;

    invoke-direct {p1}, Ln80;-><init>()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Ln80;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)Ln80;

    move-result-object p1

    .line 8
    :goto_0
    iget-wide v4, v3, LA80;->f:J

    .line 9
    iput-wide v4, p1, Ln80;->j:J

    .line 10
    iget-wide v4, v3, LA80;->g:J

    .line 11
    iput-wide v4, p1, Ln80;->k:J

    .line 12
    iget-object v1, v3, LA80;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v3, LA80;->b:Ljava/lang/String;

    .line 13
    iput-object v1, p1, Ln80;->e:Ljava/lang/String;

    .line 14
    :cond_2
    iget-object v1, v3, LA80;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v3, LA80;->c:Ljava/lang/String;

    .line 15
    iput-object v1, p1, Ln80;->c:Ljava/lang/String;

    .line 16
    :cond_3
    iput-object v0, p1, Ln80;->g:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object p1

    .line 18
    iput-object p1, v2, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 19
    new-instance p1, Lv90;

    move-object v0, p1

    move-object v1, v7

    move-wide v4, v8

    invoke-direct/range {v0 .. v6}, Lv90;-><init>(LB90;Lorg/chromium/chrome/browser/download/DownloadItem;LA80;JLjava/lang/String;)V

    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 20
    invoke-virtual {p1, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    .line 21
    invoke-virtual {v7, v8, v9}, LB90;->a(J)V

    return-void
.end method
