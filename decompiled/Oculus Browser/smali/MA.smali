.class public final LMA;
.super LiB;
.source "PG"


# instance fields
.field public final synthetic x:Ljava/lang/String;

.field public final synthetic y:LHB;

.field public final synthetic z:LLA;


# direct methods
.method public constructor <init>(LLA;LHB;Ljava/lang/String;LHB;)V
    .locals 0

    iput-object p1, p0, LMA;->z:LLA;

    iput-object p3, p0, LMA;->x:Ljava/lang/String;

    iput-object p4, p0, LMA;->y:LHB;

    invoke-direct {p0, p2}, LiB;-><init>(LHB;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, LMA;->z:LLA;

    iget-object v0, v0, LLA;->a:LhB;

    .line 1
    iget-object v0, v0, LhB;->k:Landroid/os/IInterface;

    .line 2
    check-cast v0, LdB;

    iget-object v1, p0, LMA;->z:LLA;

    .line 3
    iget-object v1, v1, LLA;->b:Ljava/lang/String;

    .line 4
    iget-object v2, p0, LMA;->z:LLA;

    iget-object v3, p0, LMA;->x:Ljava/lang/String;

    invoke-static {v2, v3}, LLA;->a(LLA;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, LPA;

    iget-object v4, p0, LMA;->z:LLA;

    iget-object v5, p0, LMA;->y:LHB;

    iget-object v6, p0, LMA;->x:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, LPA;-><init>(LLA;LHB;Ljava/lang/String;)V

    check-cast v0, LfB;

    .line 5
    invoke-virtual {v0}, LZA;->A()Landroid/os/Parcel;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v4, v2}, LaB;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v4, v3}, LaB;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, LZA;->a(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, LLA;->d:LuB;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, LMA;->x:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "requestUpdateInfo(%s)"

    invoke-virtual {v1, v0, v3, v2}, LuB;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, LMA;->y:LHB;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, v1, LHB;->a:LKB;

    invoke-virtual {v0, v2}, LKB;->b(Ljava/lang/Exception;)Z

    return-void
.end method
