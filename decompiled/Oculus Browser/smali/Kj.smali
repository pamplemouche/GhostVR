.class public final LKj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LMm;


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:LOj;


# direct methods
.method public constructor <init>(LOj;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LKj;->b:LOj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LKj;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic a(LLm;)V
    .locals 7

    .line 1
    check-cast p1, Lvj;

    .line 2
    iget-object v0, p0, LKj;->b:LOj;

    .line 3
    iput-object p1, v0, LOj;->m:Lvj;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-interface {p1}, LLm;->c()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->r()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    sget-object v2, LOj;->n:LJs;

    const-string v3, "%s() -> success result"

    new-array v4, v0, [Ljava/lang/Object;

    .line 6
    iget-object v5, p0, LKj;->a:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 7
    invoke-virtual {v2}, LJs;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    invoke-virtual {v2, v3, v4}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    :cond_0
    iget-object v2, p0, LKj;->b:LOj;

    new-instance v3, Lok;

    new-instance v4, LKs;

    invoke-direct {v4}, LKs;-><init>()V

    iget-object v5, p0, LKj;->b:LOj;

    .line 10
    iget-object v5, v5, LOj;->h:Lxj;

    .line 11
    invoke-direct {v3, v4, v5}, Lok;-><init>(LKs;Lxj;)V

    .line 12
    iput-object v3, v2, LOj;->k:Lok;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    :try_start_1
    iget-object v2, p0, LKj;->b:LOj;

    .line 14
    iget-object v2, v2, LOj;->k:Lok;

    .line 15
    iget-object v3, p0, LKj;->b:LOj;

    .line 16
    iget-object v3, v3, LOj;->j:LHm;

    .line 17
    invoke-virtual {v2, v3}, Lok;->a(LHm;)V

    .line 18
    iget-object v2, p0, LKj;->b:LOj;

    .line 19
    iget-object v2, v2, LOj;->k:Lok;

    .line 20
    invoke-virtual {v2}, Lok;->r()V

    .line 21
    iget-object v2, p0, LKj;->b:LOj;

    .line 22
    iget-object v2, v2, LOj;->k:Lok;

    .line 23
    invoke-virtual {v2}, Lok;->p()LJm;

    .line 24
    iget-object v2, p0, LKj;->b:LOj;

    .line 25
    iget-object v2, v2, LOj;->i:Lgs;

    .line 26
    iget-object v3, p0, LKj;->b:LOj;

    .line 27
    iget-object v3, v3, LOj;->k:Lok;

    .line 28
    iget-object v3, p0, LKj;->b:LOj;

    invoke-virtual {v3}, LOj;->d()Lcom/google/android/gms/cast/CastDevice;

    .line 29
    iget-boolean v3, v2, Lgs;->k:Z

    if-nez v3, :cond_1

    iget-object v2, v2, Lgs;->b:Lcom/google/android/gms/cast/framework/CastOptions;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 30
    :try_start_2
    sget-object v3, LOj;->n:LJs;

    const-string v4, "Exception when setting GoogleApiClient."

    new-array v5, v1, [Ljava/lang/Object;

    .line 31
    iget-object v6, v3, LJs;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    iget-object v2, p0, LKj;->b:LOj;

    const/4 v3, 0x0

    .line 33
    iput-object v3, v2, LOj;->k:Lok;

    .line 34
    :cond_1
    :goto_0
    iget-object v2, p0, LKj;->b:LOj;

    .line 35
    iget-object v2, v2, LOj;->f:Lkl;

    .line 36
    invoke-interface {p1}, Lvj;->q()Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v3

    .line 37
    invoke-interface {p1}, Lvj;->h()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-interface {p1}, Lvj;->b()Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-interface {p1}, Lvj;->d()Z

    move-result p1

    .line 40
    check-cast v2, Lll;

    .line 41
    invoke-virtual {v2}, LXr;->A()Landroid/os/Parcel;

    move-result-object v6

    .line 42
    invoke-static {v6, v3}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 43
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v6, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v6, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x4

    .line 46
    invoke-virtual {v2, p1, v6}, LXr;->b(ILandroid/os/Parcel;)V

    return-void

    .line 47
    :cond_2
    sget-object v2, LOj;->n:LJs;

    const-string v3, "%s() -> failure result"

    new-array v4, v0, [Ljava/lang/Object;

    .line 48
    iget-object v5, p0, LKj;->a:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 49
    invoke-virtual {v2}, LJs;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 50
    invoke-virtual {v2, v3, v4}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    :cond_3
    iget-object v2, p0, LKj;->b:LOj;

    .line 52
    iget-object v2, v2, LOj;->f:Lkl;

    .line 53
    invoke-interface {p1}, LLm;->c()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 54
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->x:I

    .line 55
    check-cast v2, Lll;

    .line 56
    invoke-virtual {v2}, LXr;->A()Landroid/os/Parcel;

    move-result-object v3

    .line 57
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x5

    .line 58
    invoke-virtual {v2, p1, v3}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    .line 59
    :catch_1
    sget-object p1, LOj;->n:LJs;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "methods"

    aput-object v3, v2, v1

    .line 60
    const-class v1, Lkl;

    .line 61
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 62
    invoke-virtual {p1}, LJs;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Unable to call %s on %s."

    .line 63
    invoke-virtual {p1, v0, v2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_4
    return-void
.end method
