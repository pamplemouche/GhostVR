.class public abstract Lxl;
.super Ljs;
.source "PG"

# interfaces
.implements Lwl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.cast.framework.ISessionManagerListener"

    .line 1
    invoke-direct {p0, v0}, Ljs;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const p1, 0xbdfcc1

    .line 2
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcq;->a(Landroid/os/IBinder;)Ldq;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 5
    move-object p4, p0

    check-cast p4, LXk;

    .line 6
    invoke-static {p1}, Leq;->a(Ldq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    .line 7
    iget-object v0, p4, LXk;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p4, LXk;->a:LUj;

    if-eqz v0, :cond_0

    .line 9
    iget-object p4, p4, LXk;->b:Ljava/lang/Class;

    invoke-virtual {p4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    invoke-interface {v0, p1, p2}, LUj;->a(LSj;I)V

    .line 10
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 11
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcq;->a(Landroid/os/IBinder;)Ldq;

    move-result-object p1

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 13
    move-object p4, p0

    check-cast p4, LXk;

    .line 14
    invoke-static {p1}, Leq;->a(Ldq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    .line 15
    iget-object v0, p4, LXk;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p4, LXk;->a:LUj;

    if-eqz v0, :cond_1

    .line 17
    iget-object p4, p4, LXk;->b:Ljava/lang/Class;

    invoke-virtual {p4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    invoke-interface {v0, p1, p2}, LUj;->d(LSj;I)V

    .line 18
    :cond_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 19
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcq;->a(Landroid/os/IBinder;)Ldq;

    move-result-object p1

    .line 20
    invoke-static {p2}, Lks;->a(Landroid/os/Parcel;)Z

    move-result p2

    .line 21
    move-object p4, p0

    check-cast p4, LXk;

    .line 22
    invoke-static {p1}, Leq;->a(Ldq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    .line 23
    iget-object v0, p4, LXk;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, p4, LXk;->a:LUj;

    if-eqz v0, :cond_2

    .line 25
    iget-object p4, p4, LXk;->b:Ljava/lang/Class;

    invoke-virtual {p4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    invoke-interface {v0, p1, p2}, LUj;->a(LSj;Z)V

    .line 26
    :cond_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 27
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcq;->a(Landroid/os/IBinder;)Ldq;

    move-result-object p1

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 29
    move-object p4, p0

    check-cast p4, LXk;

    .line 30
    invoke-static {p1}, Leq;->a(Ldq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    .line 31
    iget-object v0, p4, LXk;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    iget-object v0, p4, LXk;->a:LUj;

    if-eqz v0, :cond_3

    .line 33
    iget-object p4, p4, LXk;->b:Ljava/lang/Class;

    invoke-virtual {p4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    invoke-interface {v0, p1, p2}, LUj;->b(LSj;Ljava/lang/String;)V

    .line 34
    :cond_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 35
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcq;->a(Landroid/os/IBinder;)Ldq;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 37
    move-object p4, p0

    check-cast p4, LXk;

    .line 38
    invoke-static {p1}, Leq;->a(Ldq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    .line 39
    iget-object v0, p4, LXk;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    iget-object v0, p4, LXk;->a:LUj;

    if-eqz v0, :cond_4

    .line 41
    iget-object p4, p4, LXk;->b:Ljava/lang/Class;

    invoke-virtual {p4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    invoke-interface {v0, p1, p2}, LUj;->c(LSj;I)V

    .line 42
    :cond_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 43
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcq;->a(Landroid/os/IBinder;)Ldq;

    move-result-object p1

    .line 44
    move-object p2, p0

    check-cast p2, LXk;

    .line 45
    invoke-static {p1}, Leq;->a(Ldq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    .line 46
    iget-object p4, p2, LXk;->b:Ljava/lang/Class;

    invoke-virtual {p4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 47
    iget-object p4, p2, LXk;->a:LUj;

    if-eqz p4, :cond_5

    .line 48
    iget-object p2, p2, LXk;->b:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    invoke-interface {p4, p1}, LUj;->b(LSj;)V

    .line 49
    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 50
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcq;->a(Landroid/os/IBinder;)Ldq;

    move-result-object p1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 52
    move-object p4, p0

    check-cast p4, LXk;

    .line 53
    invoke-static {p1}, Leq;->a(Ldq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    .line 54
    iget-object v0, p4, LXk;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 55
    iget-object v0, p4, LXk;->a:LUj;

    if-eqz v0, :cond_6

    .line 56
    iget-object p4, p4, LXk;->b:Ljava/lang/Class;

    invoke-virtual {p4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    invoke-interface {v0, p1, p2}, LUj;->b(LSj;I)V

    .line 57
    :cond_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcq;->a(Landroid/os/IBinder;)Ldq;

    move-result-object p1

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 60
    move-object p4, p0

    check-cast p4, LXk;

    .line 61
    invoke-static {p1}, Leq;->a(Ldq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    .line 62
    iget-object v0, p4, LXk;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 63
    iget-object v0, p4, LXk;->a:LUj;

    if-eqz v0, :cond_7

    .line 64
    iget-object p4, p4, LXk;->b:Ljava/lang/Class;

    invoke-virtual {p4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    invoke-interface {v0, p1, p2}, LUj;->a(LSj;Ljava/lang/String;)V

    .line 65
    :cond_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcq;->a(Landroid/os/IBinder;)Ldq;

    move-result-object p1

    .line 67
    move-object p2, p0

    check-cast p2, LXk;

    .line 68
    invoke-static {p1}, Leq;->a(Ldq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    .line 69
    iget-object p4, p2, LXk;->b:Ljava/lang/Class;

    invoke-virtual {p4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 70
    iget-object p4, p2, LXk;->a:LUj;

    if-eqz p4, :cond_8

    .line 71
    iget-object p2, p2, LXk;->b:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSj;

    invoke-interface {p4, p1}, LUj;->a(LSj;)V

    .line 72
    :cond_8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    :pswitch_a
    move-object p1, p0

    check-cast p1, LXk;

    .line 74
    iget-object p1, p1, LXk;->a:LUj;

    .line 75
    new-instance p2, Leq;

    invoke-direct {p2, p1}, Leq;-><init>(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-static {p3, p2}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
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
