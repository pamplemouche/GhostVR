.class public abstract LVk;
.super Ljs;
.source "PG"

# interfaces
.implements LUk;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.cast.framework.ISessionProxy"

    .line 1
    invoke-direct {p0, v0}, Ljs;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 1
    :pswitch_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 2
    move-object p2, p0

    check-cast p2, LRj;

    .line 3
    iget-object p2, p2, LRj;->a:LSj;

    check-cast p2, LOj;

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->a(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    iput-object p1, p2, LOj;->l:Lcom/google/android/gms/cast/CastDevice;

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 6
    :cond_0
    throw v1

    .line 7
    :pswitch_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 8
    move-object p2, p0

    check-cast p2, LRj;

    .line 9
    iget-object p2, p2, LRj;->a:LSj;

    check-cast p2, LOj;

    if-eqz p2, :cond_1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->a(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    iput-object p1, p2, LOj;->l:Lcom/google/android/gms/cast/CastDevice;

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 12
    :cond_1
    throw v1

    .line 13
    :pswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const p1, 0xbdfcc1

    .line 14
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 15
    :pswitch_3
    move-object p1, p0

    check-cast p1, LRj;

    .line 16
    iget-object p1, p1, LRj;->a:LSj;

    check-cast p1, LOj;

    if-eqz p1, :cond_3

    const-string p2, "Must be called from the main thread."

    .line 17
    invoke-static {p2}, Lxp;->a(Ljava/lang/String;)V

    .line 18
    iget-object p2, p1, LOj;->k:Lok;

    if-nez p2, :cond_2

    const-wide/16 p1, 0x0

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p2}, Lok;->f()J

    move-result-wide v0

    iget-object p1, p1, LOj;->k:Lok;

    invoke-virtual {p1}, Lok;->a()J

    move-result-wide p1

    sub-long p1, v0, p1

    .line 20
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_2

    .line 22
    :cond_3
    throw v1

    .line 23
    :pswitch_4
    invoke-static {p2}, Lks;->a(Landroid/os/Parcel;)Z

    move-result p1

    .line 24
    move-object p2, p0

    check-cast p2, LRj;

    .line 25
    iget-object p2, p2, LRj;->a:LSj;

    check-cast p2, LOj;

    if-eqz p2, :cond_5

    .line 26
    :try_start_0
    iget-object v1, p2, LOj;->f:Lkl;

    check-cast v1, Lll;

    .line 27
    invoke-virtual {v1}, LXr;->A()Landroid/os/Parcel;

    move-result-object v2

    .line 28
    invoke-static {v2, p1}, Lks;->a(Landroid/os/Parcel;Z)V

    .line 29
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x6

    .line 30
    invoke-virtual {v1, p1, v2}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 31
    sget-object p1, LOj;->n:LJs;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "disconnectFromDevice"

    aput-object v2, v1, v0

    const-class v2, Lkl;

    .line 32
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p4

    .line 33
    invoke-virtual {p1}, LJs;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Unable to call %s on %s."

    .line 34
    invoke-virtual {p1, v2, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    :cond_4
    :goto_1
    invoke-virtual {p2, v0}, LSj;->a(I)V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 37
    :cond_5
    throw v1

    .line 38
    :pswitch_5
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 39
    move-object p2, p0

    check-cast p2, LRj;

    .line 40
    iget-object p2, p2, LRj;->a:LSj;

    check-cast p2, LOj;

    .line 41
    invoke-virtual {p2, p1}, LOj;->a(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 43
    :pswitch_6
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 44
    move-object p2, p0

    check-cast p2, LRj;

    .line 45
    iget-object p2, p2, LRj;->a:LSj;

    check-cast p2, LOj;

    .line 46
    invoke-virtual {p2, p1}, LOj;->a(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 48
    :pswitch_7
    move-object p1, p0

    check-cast p1, LRj;

    .line 49
    iget-object p1, p1, LRj;->a:LSj;

    .line 50
    new-instance p2, Leq;

    invoke-direct {p2, p1}, Leq;-><init>(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-static {p3, p2}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_2
    return p4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
