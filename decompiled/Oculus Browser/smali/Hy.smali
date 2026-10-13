.class public final synthetic LHy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJx;


# instance fields
.field public final a:LKy;

.field public final b:Lsw;

.field public final c:LJx;

.field public final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(LKy;Lsw;LJx;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHy;->a:LKy;

    iput-object p2, p0, LHy;->b:Lsw;

    iput-object p3, p0, LHy;->c:LJx;

    iput-object p4, p0, LHy;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, LHy;->a:LKy;

    iget-object v1, p0, LHy;->b:Lsw;

    iget-object v2, p0, LHy;->c:LJx;

    iget-object v3, p0, LHy;->d:Ljava/util/Set;

    check-cast p1, Lcom/google/android/libraries/feed/api/host/network/HttpResponse;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 1
    iget-object v1, v1, Lsw;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 3
    iget v1, p1, Lcom/google/android/libraries/feed/api/host/network/HttpResponse;->a:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v5, v7

    const-string v1, "ActionUploadRequest"

    const-string v8, "Request: %s completed with response code: %s"

    .line 5
    invoke-static {v1, v8, v5}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget v5, p1, Lcom/google/android/libraries/feed/api/host/network/HttpResponse;->a:I

    const/16 v8, 0xc8

    if-eq v5, v8, :cond_0

    .line 7
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .line 8
    iget-object v5, p1, Lcom/google/android/libraries/feed/api/host/network/HttpResponse;->b:[B

    const-string v8, "UTF-8"

    .line 9
    invoke-direct {v3, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    const-string v3, "Error handling http error logging"

    .line 10
    invoke-static {v1, v3, v5}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v4

    :goto_0
    new-array v4, v7, [Ljava/lang/Object;

    .line 11
    iget p1, p1, Lcom/google/android/libraries/feed/api/host/network/HttpResponse;->a:I

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v6

    const-string p1, "errorCode: %d"

    invoke-static {v1, p1, v4}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v7, [Ljava/lang/Object;

    aput-object v3, p1, v6

    const-string v3, "errorResponse: %s"

    .line 13
    invoke-static {v1, v3, p1}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object p1, v0, LKy;->e:LFx;

    const/16 v0, 0xa

    new-instance v1, LJy;

    invoke-direct {v1, v2}, LJy;-><init>(LJx;)V

    invoke-virtual {p1, v0, v7, v1}, LFx;->a(IILjava/lang/Runnable;)V

    goto :goto_1

    .line 15
    :cond_0
    iget-object p1, p1, Lcom/google/android/libraries/feed/api/host/network/HttpResponse;->b:[B

    .line 16
    iget-object v1, v0, LKy;->e:LFx;

    new-instance v4, LIy;

    invoke-direct {v4, v0, p1, v3, v2}, LIy;-><init>(LKy;[BLjava/util/Set;LJx;)V

    const/16 p1, 0x12

    invoke-virtual {v1, p1, v7, v4}, LFx;->a(IILjava/lang/Runnable;)V

    :goto_1
    return-void

    .line 17
    :cond_1
    throw v4
.end method
