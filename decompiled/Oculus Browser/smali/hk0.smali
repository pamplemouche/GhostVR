.class public Lhk0;
.super LGj0;
.source "PG"


# instance fields
.field public h:Ldk0;


# direct methods
.method public constructor <init>(LIj0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LGj0;-><init>(LIj0;)V

    .line 2
    new-instance p1, Lfk0;

    invoke-direct {p1, p0}, Lfk0;-><init>(LGj0;)V

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(LOj;)V
    .locals 3

    const-string v0, "urn:x-cast:com.google.cast.media"

    .line 1
    invoke-super {p0, p1}, LGj0;->a(LOj;)V

    .line 2
    :try_start_0
    iget-object p1, p0, LGj0;->b:LOj;

    .line 3
    new-instance v1, Lgk0;

    invoke-direct {v1, p0}, Lgk0;-><init>(Lhk0;)V

    invoke-virtual {p1, v0, v1}, LOj;->a(Ljava/lang/String;LBj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "RmtSessionCtrl"

    const-string v0, "Failed to register namespace listener for %s"

    .line 4
    invoke-static {p1, v0, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    sget-object v0, Lyj0;->a:LEj0;

    invoke-virtual {p0, v0}, LGj0;->a(LEj0;)V

    .line 2
    iget-object v0, p0, LGj0;->e:LVj0;

    if-eqz v0, :cond_0

    iget-object v0, v0, LVj0;->a:Lvj0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    check-cast v0, Lek0;

    .line 4
    new-instance v1, Ldk0;

    .line 5
    iget-object v0, v0, Lek0;->b:Ljava/lang/String;

    .line 6
    invoke-direct {v1, p0, v0}, Ldk0;-><init>(Lhk0;Ljava/lang/String;)V

    iput-object v1, p0, Lhk0;->h:Ldk0;

    return-void
.end method

.method public j()V
    .locals 10

    .line 1
    iget-object v0, p0, Lhk0;->h:Ldk0;

    .line 2
    iget-object v1, v0, Ldk0;->d:Lwj0;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, v0, Ldk0;->b:Lhk0;

    invoke-virtual {v1}, LGj0;->d()Lok;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lok;->d()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 5
    iget v4, v2, Lcom/google/android/gms/cast/MediaStatus;->A:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 6
    iget v4, v2, Lcom/google/android/gms/cast/MediaStatus;->B:I

    if-ne v4, v5, :cond_1

    .line 7
    iput-boolean v3, v0, Ldk0;->e:Z

    .line 8
    iget-object v1, v0, Ldk0;->a:Lik0;

    .line 9
    iput-boolean v3, v1, Lik0;->d:Z

    .line 10
    iget-wide v3, v1, Lik0;->a:J

    iput-wide v3, v1, Lik0;->b:J

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lik0;->c:J

    goto :goto_0

    .line 12
    :cond_1
    iget-object v3, v0, Ldk0;->a:Lik0;

    invoke-virtual {v1}, Lok;->f()J

    move-result-wide v4

    .line 13
    invoke-virtual {v1}, Lok;->a()J

    move-result-wide v6

    .line 14
    invoke-virtual {v1}, Lok;->l()Z

    move-result v1

    .line 15
    iget-wide v8, v2, Lcom/google/android/gms/cast/MediaStatus;->z:D

    .line 16
    iput-wide v4, v3, Lik0;->a:J

    .line 17
    iput-wide v6, v3, Lik0;->b:J

    .line 18
    iput-boolean v1, v3, Lik0;->d:Z

    .line 19
    iput-wide v8, v3, Lik0;->e:D

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lik0;->c:J

    .line 21
    :goto_0
    iget-object v0, v0, Ldk0;->d:Lwj0;

    new-instance v1, Lorg/chromium/chrome/browser/media/router/MediaStatusBridge;

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/media/router/MediaStatusBridge;-><init>(Lcom/google/android/gms/cast/MediaStatus;)V

    invoke-interface {v0, v1}, Lwj0;->a(Lorg/chromium/chrome/browser/media/router/MediaStatusBridge;)V

    goto :goto_1

    .line 22
    :cond_2
    iput-boolean v3, v0, Ldk0;->e:Z

    .line 23
    iget-object v0, v0, Ldk0;->a:Lik0;

    const-wide/16 v1, 0x0

    .line 24
    iput-wide v1, v0, Lik0;->a:J

    .line 25
    iput-wide v1, v0, Lik0;->b:J

    .line 26
    iput-wide v1, v0, Lik0;->c:J

    .line 27
    iput-boolean v3, v0, Lik0;->d:Z

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 28
    iput-wide v1, v0, Lik0;->e:D

    .line 29
    :goto_1
    sget-object v0, LAj0;->a:LEj0;

    invoke-virtual {p0, v0}, LGj0;->a(LEj0;)V

    return-void
.end method
