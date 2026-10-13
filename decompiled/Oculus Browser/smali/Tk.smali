.class public abstract LTk;
.super Ljs;
.source "PG"

# interfaces
.implements Lyl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.cast.framework.ISessionProvider"

    .line 1
    invoke-direct {p0, v0}, Ljs;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    const/4 p4, 0x1

    if-eq p1, p4, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const p1, 0xbdfcc1

    .line 2
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 3
    :cond_1
    move-object p1, p0

    check-cast p1, LVj;

    .line 4
    iget-object p1, p1, LVj;->a:LWj;

    .line 5
    iget-object p1, p1, LWj;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    move-object p1, p0

    check-cast p1, LVj;

    .line 9
    iget-object p1, p1, LVj;->a:LWj;

    check-cast p1, LUs;

    .line 10
    iget-object p1, p1, LUs;->d:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 11
    iget-boolean p1, p1, Lcom/google/android/gms/cast/framework/CastOptions;->A:Z

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-static {p3, p1}, Lks;->a(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15
    move-object p1, p0

    check-cast p1, LVj;

    .line 16
    iget-object p1, p1, LVj;->a:LWj;

    check-cast p1, LUs;

    if-eqz p1, :cond_4

    .line 17
    new-instance p2, LOj;

    .line 18
    iget-object v1, p1, LWj;->a:Landroid/content/Context;

    .line 19
    iget-object v2, p1, LWj;->b:Ljava/lang/String;

    .line 20
    iget-object v4, p1, LUs;->d:Lcom/google/android/gms/cast/framework/CastOptions;

    sget-object v5, LDj;->c:Lxj;

    new-instance v6, LVs;

    invoke-direct {v6}, LVs;-><init>()V

    new-instance v7, Lgs;

    .line 21
    iget-object v0, p1, LWj;->a:Landroid/content/Context;

    .line 22
    iget-object v8, p1, LUs;->d:Lcom/google/android/gms/cast/framework/CastOptions;

    iget-object p1, p1, LUs;->e:Ldt;

    invoke-direct {v7, v0, v8, p1}, Lgs;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ldt;)V

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, LOj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/CastOptions;Lxj;LVs;Lgs;)V

    .line 23
    invoke-virtual {p2}, LSj;->b()Ldq;

    move-result-object p1

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    invoke-static {p3, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_0
    return p4

    :cond_4
    const/4 p1, 0x0

    .line 26
    throw p1
.end method
