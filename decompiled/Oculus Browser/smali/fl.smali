.class public abstract Lfl;
.super Ljs;
.source "PG"

# interfaces
.implements Lel;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.cast.framework.ICastConnectionController"

    .line 1
    invoke-direct {p0, v0}, Ljs;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eq p1, p4, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const p1, 0xbdfcc1

    .line 2
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4
    move-object p2, p0

    check-cast p2, LLj;

    .line 5
    iget-object p2, p2, LLj;->a:LOj;

    invoke-static {p2, p1}, LOj;->a(LOj;I)V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 7
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 8
    move-object p2, p0

    check-cast p2, LLj;

    .line 9
    iget-object p2, p2, LLj;->a:LOj;

    .line 10
    iget-object v1, p2, LOj;->j:LHm;

    if-eqz v1, :cond_4

    .line 11
    iget-object p2, p2, LOj;->h:Lxj;

    .line 12
    check-cast p2, Lwj;

    if-eqz p2, :cond_3

    .line 13
    new-instance p2, LVl;

    invoke-direct {p2, v1, p1}, LVl;-><init>(LHm;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, LHm;->a(LSm;)LSm;

    goto :goto_0

    :cond_3
    throw v0

    .line 14
    :cond_4
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 16
    sget-object v1, Lcom/google/android/gms/cast/LaunchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cast/LaunchOptions;

    .line 17
    move-object v1, p0

    check-cast v1, LLj;

    .line 18
    iget-object v2, v1, LLj;->a:LOj;

    .line 19
    iget-object v3, v2, LOj;->j:LHm;

    if-eqz v3, :cond_7

    .line 20
    iget-object v2, v2, LOj;->h:Lxj;

    .line 21
    check-cast v2, Lwj;

    if-eqz v2, :cond_6

    .line 22
    new-instance v0, LTl;

    invoke-direct {v0, v3, p1, p2}, LTl;-><init>(LHm;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V

    invoke-virtual {v3, v0}, LHm;->a(LSm;)LSm;

    move-result-object p1

    .line 23
    new-instance p2, LKj;

    iget-object v0, v1, LLj;->a:LOj;

    const-string v1, "launchApplication"

    invoke-direct {p2, v0, v1}, LKj;-><init>(LOj;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1, p2}, LJm;->a(LMm;)V

    goto :goto_1

    .line 25
    :cond_6
    throw v0

    .line 26
    :cond_7
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    .line 27
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 29
    move-object v1, p0

    check-cast v1, LLj;

    .line 30
    iget-object v2, v1, LLj;->a:LOj;

    .line 31
    iget-object v3, v2, LOj;->j:LHm;

    if-eqz v3, :cond_a

    .line 32
    iget-object v2, v2, LOj;->h:Lxj;

    .line 33
    check-cast v2, Lwj;

    if-eqz v2, :cond_9

    .line 34
    new-instance v0, LUl;

    invoke-direct {v0, v3, p1, p2}, LUl;-><init>(LHm;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, LHm;->a(LSm;)LSm;

    move-result-object p1

    .line 35
    new-instance p2, LKj;

    iget-object v0, v1, LLj;->a:LOj;

    const-string v1, "joinApplication"

    invoke-direct {p2, v0, v1}, LKj;-><init>(LOj;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, p2}, LJm;->a(LMm;)V

    goto :goto_2

    .line 37
    :cond_9
    throw v0

    .line 38
    :cond_a
    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_3
    return p4
.end method
