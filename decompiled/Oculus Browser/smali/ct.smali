.class public final Lct;
.super Lcb;
.source "PG"


# static fields
.field public static final b:LJs;


# instance fields
.field public final a:Lat;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJs;

    const-string v1, "MediaRouterCallback"

    invoke-direct {v0, v1}, LJs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lct;->b:LJs;

    return-void
.end method

.method public constructor <init>(Lat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcb;-><init>()V

    .line 2
    invoke-static {p1}, Lxp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lat;

    iput-object p1, p0, Lct;->a:Lat;

    return-void
.end method


# virtual methods
.method public final a(Lrb;Lqb;)V
    .locals 3

    const/4 p1, 0x1

    .line 14
    :try_start_0
    iget-object v0, p0, Lct;->a:Lat;

    .line 15
    iget-object v1, p2, Lqb;->c:Ljava/lang/String;

    .line 16
    iget-object p2, p2, Lqb;->s:Landroid/os/Bundle;

    .line 17
    check-cast v0, Lbt;

    .line 18
    invoke-virtual {v0}, LXr;->A()Landroid/os/Parcel;

    move-result-object v2

    .line 19
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    invoke-static {v2, p2}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 21
    invoke-virtual {v0, p1, v2}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 22
    :catch_0
    sget-object p2, Lct;->b:LJs;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onRouteAdded"

    aput-object v2, v0, v1

    const-class v1, Lat;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 24
    invoke-virtual {p2}, LJs;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Unable to call %s on %s."

    .line 25
    invoke-virtual {p2, p1, v0}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final a(Lrb;Lqb;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lct;->a:Lat;

    .line 2
    iget-object v0, p2, Lqb;->c:Ljava/lang/String;

    .line 3
    iget-object p2, p2, Lqb;->s:Landroid/os/Bundle;

    .line 4
    check-cast p1, Lbt;

    .line 5
    invoke-virtual {p1}, LXr;->A()Landroid/os/Parcel;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    invoke-static {v1, p2}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 8
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x6

    .line 9
    invoke-virtual {p1, p2, v1}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 10
    :catch_0
    sget-object p1, Lct;->b:LJs;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "onRouteUnselected"

    aput-object v0, p2, p3

    const/4 p3, 0x1

    const-class v0, Lat;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    .line 12
    invoke-virtual {p1}, LJs;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "Unable to call %s on %s."

    .line 13
    invoke-virtual {p1, p3, p2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final b(Lrb;Lqb;)V
    .locals 3

    const/4 p1, 0x2

    .line 1
    :try_start_0
    iget-object v0, p0, Lct;->a:Lat;

    .line 2
    iget-object v1, p2, Lqb;->c:Ljava/lang/String;

    .line 3
    iget-object p2, p2, Lqb;->s:Landroid/os/Bundle;

    .line 4
    check-cast v0, Lbt;

    .line 5
    invoke-virtual {v0}, LXr;->A()Landroid/os/Parcel;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    invoke-static {v2, p2}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 8
    invoke-virtual {v0, p1, v2}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 9
    :catch_0
    sget-object p2, Lct;->b:LJs;

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "onRouteChanged"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-class v1, Lat;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 11
    invoke-virtual {p2}, LJs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to call %s on %s."

    .line 12
    invoke-virtual {p2, v0, p1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final c(Lrb;Lqb;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lct;->a:Lat;

    .line 2
    iget-object v0, p2, Lqb;->c:Ljava/lang/String;

    .line 3
    iget-object p2, p2, Lqb;->s:Landroid/os/Bundle;

    .line 4
    check-cast p1, Lbt;

    .line 5
    invoke-virtual {p1}, LXr;->A()Landroid/os/Parcel;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    invoke-static {v1, p2}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p2, 0x3

    .line 8
    invoke-virtual {p1, p2, v1}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 9
    :catch_0
    sget-object p1, Lct;->b:LJs;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "onRouteRemoved"

    aput-object v1, p2, v0

    const/4 v0, 0x1

    const-class v1, Lat;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 11
    invoke-virtual {p1}, LJs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to call %s on %s."

    .line 12
    invoke-virtual {p1, v0, p2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final d(Lrb;Lqb;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lct;->a:Lat;

    .line 2
    iget-object v0, p2, Lqb;->c:Ljava/lang/String;

    .line 3
    iget-object p2, p2, Lqb;->s:Landroid/os/Bundle;

    .line 4
    check-cast p1, Lbt;

    .line 5
    invoke-virtual {p1}, LXr;->A()Landroid/os/Parcel;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    invoke-static {v1, p2}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p2, 0x4

    .line 8
    invoke-virtual {p1, p2, v1}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 9
    :catch_0
    sget-object p1, Lct;->b:LJs;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "onRouteSelected"

    aput-object v1, p2, v0

    const/4 v0, 0x1

    const-class v1, Lat;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 11
    invoke-virtual {p1}, LJs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to call %s on %s."

    .line 12
    invoke-virtual {p1, v0, p2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method
