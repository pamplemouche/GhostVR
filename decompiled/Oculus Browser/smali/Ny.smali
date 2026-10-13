.class public final synthetic LNy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJx;


# instance fields
.field public final a:LSy;

.field public final b:LRy;

.field public final c:Lsw;

.field public final d:LJx;


# direct methods
.method public constructor <init>(LSy;LRy;Lsw;LJx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNy;->a:LSy;

    iput-object p2, p0, LNy;->b:LRy;

    iput-object p3, p0, LNy;->c:Lsw;

    iput-object p4, p0, LNy;->d:LJx;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, LNy;->a:LSy;

    iget-object v1, p0, LNy;->b:LRy;

    iget-object v2, p0, LNy;->c:Lsw;

    iget-object v3, p0, LNy;->d:LJx;

    check-cast p1, Lcom/google/android/libraries/feed/api/host/network/HttpResponse;

    .line 1
    iget-object v4, v0, LSy;->k:Lrw;

    .line 2
    iget v1, v1, LRy;->g:I

    .line 3
    check-cast v4, Lmb0;

    .line 4
    iget-wide v5, v4, Lmb0;->a:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v5, v6, v4, v1}, LJ/N;->MBwuNbN9(JLjava/lang/Object;I)V

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    iget-object v2, v2, Lsw;->a:Landroid/net/Uri;

    .line 7
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 8
    iget v2, p1, Lcom/google/android/libraries/feed/api/host/network/HttpResponse;->a:I

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const-string v2, "FeedRequestManagerImpl"

    const-string v6, "Request: %s completed with response code: %s"

    .line 10
    invoke-static {v2, v6, v1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget v1, p1, Lcom/google/android/libraries/feed/api/host/network/HttpResponse;->a:I

    const/16 v6, 0xc8

    if-eq v1, v6, :cond_1

    const/4 v1, 0x0

    .line 12
    :try_start_0
    new-instance v6, Ljava/lang/String;

    .line 13
    iget-object v7, p1, Lcom/google/android/libraries/feed/api/host/network/HttpResponse;->b:[B

    const-string v8, "UTF-8"

    .line 14
    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    goto :goto_1

    :catch_0
    move-exception v6

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v6, v7, v4

    const-string v6, "Error handling http error logging"

    .line 15
    invoke-static {v2, v6, v7}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    new-array v6, v5, [Ljava/lang/Object;

    .line 16
    iget v7, p1, Lcom/google/android/libraries/feed/api/host/network/HttpResponse;->a:I

    .line 17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "errorCode: %d"

    invoke-static {v2, v7, v6}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    const-string v1, "errorResponse: %s"

    .line 18
    invoke-static {v2, v1, v5}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object v0, v0, LSy;->e:Lww;

    .line 20
    iget p1, p1, Lcom/google/android/libraries/feed/api/host/network/HttpResponse;->a:I

    .line 21
    invoke-interface {v0, p1}, Lww;->a(I)V

    .line 22
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object p1

    invoke-interface {v3, p1}, LJx;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 23
    :cond_1
    iget-object p1, p1, Lcom/google/android/libraries/feed/api/host/network/HttpResponse;->b:[B

    .line 24
    iget-object v1, v0, LSy;->f:LFx;

    new-instance v2, LOy;

    invoke-direct {v2, v0, p1, v3}, LOy;-><init>(LSy;[BLJx;)V

    const/16 p1, 0xf

    invoke-virtual {v1, p1, v5, v2}, LFx;->a(IILjava/lang/Runnable;)V

    :goto_2
    return-void
.end method
