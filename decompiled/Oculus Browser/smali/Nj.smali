.class public final LNj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LFm;
.implements LGm;


# instance fields
.field public final synthetic a:LOj;


# direct methods
.method public synthetic constructor <init>(LOj;Lal;)V
    .locals 0

    .line 1
    iput-object p1, p0, LNj;->a:LOj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    const/4 v0, 0x2

    .line 24
    :try_start_0
    iget-object v1, p0, LNj;->a:LOj;

    .line 25
    iget-object v1, v1, LOj;->f:Lkl;

    .line 26
    check-cast v1, Lll;

    .line 27
    invoke-virtual {v1}, LXr;->A()Landroid/os/Parcel;

    move-result-object v2

    .line 28
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    invoke-virtual {v1, v0, v2}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 30
    :catch_0
    sget-object p1, LOj;->n:LJs;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onConnectionSuspended"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 31
    const-class v2, Lkl;

    .line 32
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 33
    invoke-virtual {p1}, LJs;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Unable to call %s on %s."

    .line 34
    invoke-virtual {p1, v1, v0}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, LNj;->a:LOj;

    .line 2
    iget-object v2, v2, LOj;->k:Lok;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 3
    :try_start_1
    iget-object v2, p0, LNj;->a:LOj;

    .line 4
    iget-object v2, v2, LOj;->k:Lok;

    .line 5
    invoke-virtual {v2}, Lok;->r()V

    .line 6
    iget-object v2, p0, LNj;->a:LOj;

    .line 7
    iget-object v2, v2, LOj;->k:Lok;

    .line 8
    invoke-virtual {v2}, Lok;->p()LJm;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    :try_start_2
    sget-object v3, LOj;->n:LJs;

    const-string v4, "Exception when setting GoogleApiClient."

    new-array v5, v1, [Ljava/lang/Object;

    .line 10
    iget-object v6, v3, LJs;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    iget-object v2, p0, LNj;->a:LOj;

    const/4 v3, 0x0

    .line 12
    iput-object v3, v2, LOj;->k:Lok;

    .line 13
    :cond_0
    :goto_0
    iget-object v2, p0, LNj;->a:LOj;

    .line 14
    iget-object v2, v2, LOj;->f:Lkl;

    .line 15
    check-cast v2, Lll;

    .line 16
    invoke-virtual {v2}, LXr;->A()Landroid/os/Parcel;

    move-result-object v3

    .line 17
    invoke-static {v3, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 18
    invoke-virtual {v2, v0, v3}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    .line 19
    :catch_1
    sget-object p1, LOj;->n:LJs;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "onConnected"

    aput-object v3, v2, v1

    .line 20
    const-class v1, Lkl;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 22
    invoke-virtual {p1}, LJs;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Unable to call %s on %s."

    .line 23
    invoke-virtual {p1, v0, v2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 35
    :try_start_0
    iget-object v0, p0, LNj;->a:LOj;

    .line 36
    iget-object v0, v0, LOj;->f:Lkl;

    .line 37
    check-cast v0, Lll;

    .line 38
    invoke-virtual {v0}, LXr;->A()Landroid/os/Parcel;

    move-result-object v1

    .line 39
    invoke-static {v1, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x3

    .line 40
    invoke-virtual {v0, p1, v1}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 41
    :catch_0
    sget-object p1, LOj;->n:LJs;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onConnectionFailed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 42
    const-class v2, Lkl;

    .line 43
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 44
    invoke-virtual {p1}, LJs;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Unable to call %s on %s."

    .line 45
    invoke-virtual {p1, v1, v0}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method
