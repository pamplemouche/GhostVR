.class public abstract LGj0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/Random;

.field public b:LOj;

.field public c:I

.field public final d:LIj0;

.field public e:LVj0;

.field public final f:Lgk;

.field public final g:Ljava/util/List;


# direct methods
.method public constructor <init>(LIj0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, LGj0;->a:Ljava/util/Random;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LGj0;->g:Ljava/util/List;

    .line 4
    iput-object p1, p0, LGj0;->d:LIj0;

    .line 5
    new-instance p1, LFj0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, LFj0;-><init>(LGj0;LCj0;)V

    iput-object p1, p0, LGj0;->f:Lgk;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 6
    iget-object v0, p0, LGj0;->b:LOj;

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, LOj;->e()Lok;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, LGj0;->f:Lgk;

    const-string v2, "Must be called from the main thread."

    .line 9
    invoke-static {v2}, Lxp;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 10
    iget-object v0, v0, Lok;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, LGj0;->b:LOj;

    return-void
.end method

.method public final a(LEj0;)V
    .locals 2

    .line 22
    iget-object v0, p0, LGj0;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LDj0;

    .line 23
    invoke-interface {p1, v1}, LEj0;->a(LDj0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(LOj;)V
    .locals 2

    .line 1
    iput-object p1, p0, LGj0;->b:LOj;

    .line 2
    invoke-virtual {p1}, LOj;->e()Lok;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, LGj0;->f:Lgk;

    const-string v1, "Must be called from the main thread."

    .line 4
    invoke-static {v1}, Lxp;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Lok;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "urn:x-cast:com.google.cast.media"

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 13
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    .line 14
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 15
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "mediaSessionId"

    .line 17
    iget v1, p0, LGj0;->c:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, LGj0;->c:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :catch_0
    :cond_2
    :goto_0
    invoke-virtual {p0}, LGj0;->g()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    iget-object p2, p0, LGj0;->b:LOj;

    invoke-virtual {p2}, LOj;->e()Lok;

    move-result-object p2

    iget-object v0, p0, LGj0;->b:LOj;

    .line 20
    invoke-virtual {v0}, LOj;->d()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    .line 21
    invoke-virtual {p2, v0, p1, p3}, Lok;->a(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, LUj0;->a()LJj;

    move-result-object v0

    invoke-virtual {v0}, LJj;->b()LTj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LTj;->a(Z)V

    .line 2
    invoke-static {}, LUj0;->a()LJj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LJj;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, LGj0;->b:LOj;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, LSj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, LGj0;->b:LOj;

    invoke-virtual {v1}, LOj;->d()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v1

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/CastDevice;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "audio_in"

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v2, 0x4

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/CastDevice;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "audio_out"

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/CastDevice;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "video_in"

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/CastDevice;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "video_out"

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-object v0
.end method

.method public d()Lok;
    .locals 1

    .line 1
    invoke-virtual {p0}, LGj0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LGj0;->b:LOj;

    invoke-virtual {v0}, LOj;->e()Lok;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, LGj0;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, LGj0;->b:LOj;

    if-eqz v0, :cond_0

    const-string v2, "Must be called from the main thread."

    .line 3
    invoke-static {v2}, Lxp;->a(Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v0, v0, LSj;->a:Lsl;

    check-cast v0, Ltl;

    .line 5
    invoke-virtual {v0}, LXr;->A()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x3

    .line 6
    invoke-virtual {v0, v3, v2}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    nop

    .line 9
    sget-object v0, LSj;->c:LJs;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getSessionId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lsl;

    .line 10
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 11
    invoke-virtual {v0}, LJs;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Unable to call %s on %s."

    .line 12
    invoke-virtual {v0, v3, v2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_0
    throw v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public f()Luj0;
    .locals 1

    .line 1
    iget-object v0, p0, LGj0;->e:LVj0;

    if-eqz v0, :cond_0

    iget-object v0, v0, LVj0;->b:Luj0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, LGj0;->b:LOj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LSj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    sget-object v0, Lzj0;->a:LEj0;

    invoke-virtual {p0, v0}, LGj0;->a(LEj0;)V

    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    sget-object v0, Lyj0;->a:LEj0;

    invoke-virtual {p0, v0}, LGj0;->a(LEj0;)V

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    sget-object v0, LAj0;->a:LEj0;

    invoke-virtual {p0, v0}, LGj0;->a(LEj0;)V

    return-void
.end method
