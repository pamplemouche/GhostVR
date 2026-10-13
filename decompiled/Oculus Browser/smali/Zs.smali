.class public abstract LZs;
.super Ljs;
.source "PG"

# interfaces
.implements LYs;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.cast.framework.internal.IMediaRouter"

    .line 1
    invoke-direct {p0, v0}, Ljs;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    move-object p1, p0

    check-cast p1, Ldt;

    .line 2
    iget-object p2, p1, Ldt;->b:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Set;

    .line 3
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcb;

    .line 4
    iget-object v1, p1, Ldt;->a:Lrb;

    invoke-virtual {v1, v0}, Lrb;->b(Lcb;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p1, Ldt;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4

    .line 7
    :pswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const p1, 0xbdfcc1

    .line 8
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4

    .line 9
    :pswitch_2
    move-object p1, p0

    check-cast p1, Ldt;

    .line 10
    iget-object p1, p1, Ldt;->a:Lrb;

    invoke-virtual {p1}, Lrb;->d()Lqb;

    move-result-object p1

    .line 11
    iget-object p1, p1, Lqb;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 14
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 15
    move-object p2, p0

    check-cast p2, Ldt;

    .line 16
    iget-object p2, p2, Ldt;->a:Lrb;

    invoke-virtual {p2}, Lrb;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqb;

    .line 17
    iget-object v1, v0, Lqb;->c:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    iget-object p4, v0, Lqb;->s:Landroid/os/Bundle;

    .line 20
    :cond_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    invoke-static {p3, p4}, Lks;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_4

    .line 22
    :pswitch_4
    move-object p1, p0

    check-cast p1, Ldt;

    .line 23
    iget-object p2, p1, Ldt;->a:Lrb;

    invoke-virtual {p2}, Lrb;->d()Lqb;

    move-result-object p2

    .line 24
    iget-object p2, p2, Lqb;->c:Ljava/lang/String;

    .line 25
    iget-object p1, p1, Ldt;->a:Lrb;

    invoke-virtual {p1}, Lrb;->a()Lqb;

    move-result-object p1

    .line 26
    iget-object p1, p1, Lqb;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 29
    invoke-static {p3, p1}, Lks;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_4

    .line 30
    :pswitch_5
    move-object p1, p0

    check-cast p1, Ldt;

    .line 31
    iget-object p1, p1, Ldt;->a:Lrb;

    invoke-virtual {p1}, Lrb;->a()Lqb;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrb;->a(Lqb;)V

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4

    .line 33
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 34
    move-object p2, p0

    check-cast p2, Ldt;

    .line 35
    iget-object p4, p2, Ldt;->a:Lrb;

    invoke-virtual {p4}, Lrb;->c()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqb;

    .line 36
    iget-object v1, v0, Lqb;->c:Ljava/lang/String;

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    iget-object p1, p2, Ldt;->a:Lrb;

    invoke-virtual {p1, v0}, Lrb;->a(Lqb;)V

    .line 39
    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4

    .line 40
    :pswitch_7
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 42
    move-object p4, p0

    check-cast p4, Ldt;

    .line 43
    iget-object p4, p4, Ldt;->a:Lrb;

    invoke-static {p1}, Lbb;->a(Landroid/os/Bundle;)Lbb;

    move-result-object p1

    invoke-virtual {p4, p1, p2}, Lrb;->a(Lbb;I)Z

    move-result p1

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4

    .line 46
    :pswitch_8
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 47
    move-object p2, p0

    check-cast p2, Ldt;

    .line 48
    invoke-static {p1}, Lbb;->a(Landroid/os/Bundle;)Lbb;

    move-result-object p1

    .line 49
    iget-object p4, p2, Ldt;->b:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcb;

    .line 50
    iget-object v0, p2, Ldt;->a:Lrb;

    invoke-virtual {v0, p4}, Lrb;->b(Lcb;)V

    goto :goto_1

    .line 51
    :cond_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4

    .line 52
    :pswitch_9
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 54
    move-object p4, p0

    check-cast p4, Ldt;

    .line 55
    invoke-static {p1}, Lbb;->a(Landroid/os/Bundle;)Lbb;

    move-result-object p1

    .line 56
    iget-object v0, p4, Ldt;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcb;

    .line 57
    iget-object v2, p4, Ldt;->a:Lrb;

    invoke-virtual {v2, p1, v1, p2}, Lrb;->a(Lbb;Lcb;I)V

    goto :goto_2

    .line 58
    :cond_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4

    .line 59
    :pswitch_a
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    const-string p4, "com.google.android.gms.cast.framework.internal.IMediaRouterCallback"

    .line 61
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 62
    instance-of v0, p4, Lat;

    if-eqz v0, :cond_9

    .line 63
    check-cast p4, Lat;

    goto :goto_3

    .line 64
    :cond_9
    new-instance p4, Lbt;

    invoke-direct {p4, p2}, Lbt;-><init>(Landroid/os/IBinder;)V

    .line 65
    :goto_3
    move-object p2, p0

    check-cast p2, Ldt;

    .line 66
    invoke-static {p1}, Lbb;->a(Landroid/os/Bundle;)Lbb;

    move-result-object p1

    .line 67
    iget-object v0, p2, Ldt;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 68
    iget-object v0, p2, Ldt;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_a
    iget-object p2, p2, Ldt;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    new-instance p2, Lct;

    invoke-direct {p2, p4}, Lct;-><init>(Lat;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_4
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
