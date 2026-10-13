.class public abstract LFs;
.super Ljs;
.source "PG"

# interfaces
.implements LEs;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    .line 1
    invoke-direct {p0, v0}, Ljs;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const/4 p3, 0x0

    const/4 p4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 1
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzcv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzcv;

    .line 2
    move-object p2, p0

    check-cast p2, Lus;

    .line 3
    iget-object p3, p2, Lus;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lss;

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    sget-object p4, Lss;->a0:LJs;

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p4}, LJs;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "onDeviceStatusChanged"

    .line 6
    invoke-virtual {p4, v2, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    :cond_1
    iget-object p2, p2, Lus;->b:Landroid/os/Handler;

    new-instance p4, Lws;

    invoke-direct {p4, p3, p1}, Lws;-><init>(Lss;Lcom/google/android/gms/internal/cast/zzcv;)V

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 8
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzcd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzcd;

    .line 9
    move-object p2, p0

    check-cast p2, Lus;

    .line 10
    iget-object p3, p2, Lus;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lss;

    if-nez p3, :cond_2

    goto/16 :goto_1

    .line 11
    :cond_2
    sget-object p4, Lss;->a0:LJs;

    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-virtual {p4}, LJs;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "onApplicationStatusChanged"

    .line 13
    invoke-virtual {p4, v2, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    :cond_3
    iget-object p2, p2, Lus;->b:Landroid/os/Handler;

    new-instance p4, Lxs;

    invoke-direct {p4, p3, p1}, Lxs;-><init>(Lss;Lcom/google/android/gms/internal/cast/zzcd;)V

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 15
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 17
    move-object p3, p0

    check-cast p3, Lus;

    .line 18
    iget-object p3, p3, Lus;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lss;

    if-nez p3, :cond_4

    goto/16 :goto_1

    .line 19
    :cond_4
    invoke-virtual {p3, p1, p2, v1}, Lss;->a(JI)V

    goto/16 :goto_1

    .line 20
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 23
    move-object p2, p0

    check-cast p2, Lus;

    .line 24
    iget-object p2, p2, Lus;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lss;

    if-nez p2, :cond_5

    goto/16 :goto_1

    .line 25
    :cond_5
    invoke-virtual {p2, p3, p4, p1}, Lss;->a(JI)V

    goto/16 :goto_1

    .line 26
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 27
    move-object p2, p0

    check-cast p2, Lus;

    .line 28
    iget-object p4, p2, Lus;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lss;

    if-nez p4, :cond_6

    goto/16 :goto_1

    .line 29
    :cond_6
    iput-object p3, p4, Lss;->U:Ljava/lang/String;

    .line 30
    iput-object p3, p4, Lss;->V:Ljava/lang/String;

    .line 31
    invoke-virtual {p4, p1}, Lss;->b(I)V

    .line 32
    iget-object p3, p4, Lss;->F:LAj;

    if-eqz p3, :cond_11

    .line 33
    iget-object p2, p2, Lus;->b:Landroid/os/Handler;

    new-instance p3, Lvs;

    invoke-direct {p3, p4, p1}, Lvs;-><init>(Lss;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 34
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 35
    move-object p2, p0

    check-cast p2, Lus;

    .line 36
    iget-object p2, p2, Lus;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lss;

    if-nez p2, :cond_7

    goto/16 :goto_1

    .line 37
    :cond_7
    invoke-virtual {p2, p1}, Lss;->b(I)V

    goto/16 :goto_1

    .line 38
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 39
    move-object p2, p0

    check-cast p2, Lus;

    .line 40
    iget-object p2, p2, Lus;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lss;

    if-nez p2, :cond_8

    goto/16 :goto_1

    .line 41
    :cond_8
    invoke-virtual {p2, p1}, Lss;->b(I)V

    goto/16 :goto_1

    .line 42
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 44
    move-object p3, p0

    check-cast p3, Lus;

    .line 45
    iget-object p3, p3, Lus;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lss;

    if-nez p3, :cond_9

    goto/16 :goto_1

    .line 46
    :cond_9
    sget-object p3, Lss;->a0:LJs;

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v1

    .line 47
    array-length p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v0

    .line 48
    invoke-virtual {p3}, LJs;->a()Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "IGNORING: Receive (type=binary, ns=%s) <%d bytes>"

    .line 49
    invoke-virtual {p3, p1, p4}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .line 50
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 52
    move-object p3, p0

    check-cast p3, Lus;

    .line 53
    iget-object v2, p3, Lus;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lss;

    if-nez v2, :cond_a

    goto/16 :goto_1

    .line 54
    :cond_a
    sget-object v3, Lss;->a0:LJs;

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v1

    aput-object p2, p4, v0

    .line 55
    invoke-virtual {v3}, LJs;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Receive (type=text, ns=%s) %s"

    .line 56
    invoke-virtual {v3, v1, p4}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    :cond_b
    iget-object p3, p3, Lus;->b:Landroid/os/Handler;

    new-instance p4, Lys;

    invoke-direct {p4, v2, p1, p2}, Lys;-><init>(Lss;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 58
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    .line 60
    invoke-static {p2}, Lks;->a(Landroid/os/Parcel;)Z

    .line 61
    sget-object p1, Lss;->a0:LJs;

    new-array p2, v1, [Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, LJs;->a()Z

    move-result p3

    if-eqz p3, :cond_11

    const-string p3, "Deprecated callback: \"onStatusreceived\""

    .line 63
    invoke-virtual {p1, p3, p2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .line 64
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 65
    move-object p2, p0

    check-cast p2, Lus;

    .line 66
    iget-object p2, p2, Lus;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lss;

    if-nez p2, :cond_c

    goto :goto_1

    .line 67
    :cond_c
    invoke-virtual {p2, p1}, Lss;->a(I)V

    goto :goto_1

    .line 68
    :pswitch_b
    sget-object p1, Lcom/google/android/gms/cast/ApplicationMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_d

    const/4 v1, 0x1

    .line 72
    :cond_d
    move-object p2, p0

    check-cast p2, Lus;

    invoke-virtual {p2, p1, p3, p4, v1}, Lus;->a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 73
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 74
    move-object p2, p0

    check-cast p2, Lus;

    .line 75
    iget-object p2, p2, Lus;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lss;

    if-nez p2, :cond_e

    move-object p2, p3

    goto :goto_0

    .line 76
    :cond_e
    invoke-virtual {p2}, Lss;->m()V

    :goto_0
    if-nez p2, :cond_f

    goto :goto_1

    .line 77
    :cond_f
    sget-object p3, Lss;->a0:LJs;

    new-array v2, v0, [Ljava/lang/Object;

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 79
    invoke-virtual {p3}, LJs;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "ICastDeviceControllerListener.onDisconnected: %d"

    .line 80
    invoke-virtual {p3, v1, v2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_10
    if-eqz p1, :cond_11

    .line 81
    iget-object p1, p2, Lcom/google/android/gms/common/internal/BaseGmsClient;->j:Landroid/os/Handler;

    iget-object p2, p2, Lcom/google/android/gms/common/internal/BaseGmsClient;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 p3, 0x6

    invoke-virtual {p1, p3, p2, p4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
