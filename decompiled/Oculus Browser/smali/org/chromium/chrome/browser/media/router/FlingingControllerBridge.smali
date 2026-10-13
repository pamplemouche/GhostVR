.class public Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lwj0;


# instance fields
.field public final a:Lej0;

.field public b:J


# direct methods
.method public constructor <init>(Lej0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;->a:Lej0;

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/chrome/browser/media/router/MediaStatusBridge;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;->b:J

    .line 3
    invoke-static {v0, v1, p0, p1}, LJ/N;->MoWa_5lB(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addNativeFlingingController(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;->b:J

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;->a:Lej0;

    check-cast p1, Ldk0;

    .line 3
    iput-object p0, p1, Ldk0;->d:Lwj0;

    return-void
.end method

.method public clearNativeFlingingController()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;->a:Lej0;

    check-cast v0, Ldk0;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Ldk0;->d:Lwj0;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;->b:J

    return-void
.end method

.method public getApproximateCurrentTime()J
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;->a:Lej0;

    check-cast v0, Ldk0;

    .line 2
    iget-object v0, v0, Ldk0;->a:Lik0;

    .line 3
    iget-wide v1, v0, Lik0;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v1, v0, Lik0;->d:Z

    if-nez v1, :cond_1

    iget-wide v0, v0, Lik0;->b:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_0

    .line 5
    :cond_1
    iget-wide v1, v0, Lik0;->b:J

    iget-wide v5, v0, Lik0;->e:D

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v0, Lik0;->c:J

    sub-long/2addr v7, v9

    long-to-double v7, v7

    mul-double v5, v5, v7

    double-to-long v5, v5

    add-long/2addr v1, v5

    .line 7
    iget-wide v5, v0, Lik0;->a:J

    cmp-long v0, v5, v3

    if-ltz v0, :cond_2

    .line 8
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 9
    :cond_2
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :goto_0
    return-wide v3
.end method

.method public pause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;->a:Lej0;

    check-cast v0, Ldk0;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Ldk0;->b:Lhk0;

    invoke-virtual {v1}, LGj0;->g()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Ldk0;->b:Lhk0;

    invoke-virtual {v1}, LGj0;->d()Lok;

    move-result-object v1

    invoke-virtual {v1}, Lok;->n()LJm;

    move-result-object v1

    new-instance v2, LZj0;

    invoke-direct {v2, v0}, LZj0;-><init>(Ldk0;)V

    invoke-virtual {v1, v2}, LJm;->a(LMm;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4
    throw v0
.end method

.method public play()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;->a:Lej0;

    check-cast v0, Ldk0;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, v0, Ldk0;->b:Lhk0;

    invoke-virtual {v1}, LGj0;->g()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v1, v0, Ldk0;->e:Z

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Ldk0;->a(J)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v0, Ldk0;->b:Lhk0;

    invoke-virtual {v1}, LGj0;->d()Lok;

    move-result-object v1

    invoke-virtual {v1}, Lok;->o()LJm;

    move-result-object v1

    new-instance v2, LYj0;

    invoke-direct {v2, v0}, LYj0;-><init>(Ldk0;)V

    invoke-virtual {v1, v2}, LJm;->a(LMm;)V

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 6
    throw v0
.end method

.method public seek(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;->a:Lej0;

    check-cast v0, Ldk0;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v2, v0, Ldk0;->b:Lhk0;

    invoke-virtual {v2}, LGj0;->g()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v2, v0, Ldk0;->e:Z

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v0, p1, p2}, Ldk0;->a(J)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, v0, Ldk0;->b:Lhk0;

    if-eqz v2, :cond_2

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "requestId"

    .line 7
    iget-object v4, v2, LGj0;->a:Ljava/util/Random;

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 8
    iget v4, v2, LGj0;->c:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "SEEK"

    .line 9
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "currentTime"

    long-to-double v4, p1

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 10
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    iget-object v2, v2, LGj0;->b:LOj;

    .line 12
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "urn:x-cast:com.google.cast.media"

    invoke-virtual {v2, v3, v1}, LOj;->a(Ljava/lang/String;Ljava/lang/String;)LJm;

    move-result-object v1

    .line 13
    new-instance v2, Lck0;

    invoke-direct {v2, v0}, Lck0;-><init>(Ldk0;)V

    invoke-virtual {v1, v2}, LJm;->a(LMm;)V

    .line 14
    iget-object v0, v0, Ldk0;->a:Lik0;

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, v0, Lik0;->d:Z

    .line 16
    iput-wide p1, v0, Lik0;->b:J

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lik0;->c:J

    :goto_0
    return-void

    .line 18
    :cond_2
    throw v1

    .line 19
    :cond_3
    throw v1
.end method

.method public setMute(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;->a:Lej0;

    check-cast v0, Ldk0;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v2, v0, Ldk0;->b:Lhk0;

    invoke-virtual {v2}, LGj0;->g()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, v0, Ldk0;->b:Lhk0;

    invoke-virtual {v2}, LGj0;->d()Lok;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "Must be called from the main thread."

    .line 4
    invoke-static {v3}, Lxp;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Lok;->s()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 p1, 0x11

    .line 6
    invoke-static {p1, v1}, Lok;->a(ILjava/lang/String;)LJm;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v3, Lzk;

    iget-object v4, v2, Lok;->f:LHm;

    invoke-direct {v3, v2, v4, p1, v1}, Lzk;-><init>(Lok;LHm;ZLorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Lok;->a(Llk;)Llk;

    move-object p1, v3

    .line 8
    :goto_0
    new-instance v1, Lak0;

    invoke-direct {v1, v0}, Lak0;-><init>(Ldk0;)V

    invoke-virtual {p1, v1}, LJm;->a(LMm;)V

    :goto_1
    return-void

    .line 9
    :cond_2
    throw v1

    .line 10
    :cond_3
    throw v1
.end method

.method public setVolume(F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;->a:Lej0;

    check-cast v0, Ldk0;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    float-to-double v5, p1

    .line 2
    iget-object p1, v0, Ldk0;->b:Lhk0;

    invoke-virtual {p1}, LGj0;->g()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, v0, Ldk0;->b:Lhk0;

    invoke-virtual {p1}, LGj0;->d()Lok;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v2, "Must be called from the main thread."

    .line 4
    invoke-static {v2}, Lxp;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lok;->s()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 p1, 0x11

    .line 6
    invoke-static {p1, v1}, Lok;->a(ILjava/lang/String;)LJm;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    new-instance v1, Lyk;

    iget-object v4, p1, Lok;->f:LHm;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lyk;-><init>(Lok;LHm;DLorg/json/JSONObject;)V

    invoke-virtual {p1, v1}, Lok;->a(Llk;)Llk;

    move-object p1, v1

    .line 9
    :goto_0
    new-instance v1, Lbk0;

    invoke-direct {v1, v0}, Lbk0;-><init>(Ldk0;)V

    invoke-virtual {p1, v1}, LJm;->a(LMm;)V

    :goto_1
    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Volume cannot be "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    throw v1

    .line 12
    :cond_4
    throw v1
.end method
