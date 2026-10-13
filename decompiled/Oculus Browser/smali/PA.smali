.class public final LPA;
.super LNA;
.source "PG"


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(LLA;LHB;Ljava/lang/String;)V
    .locals 2

    new-instance v0, LuB;

    const-string v1, "OnRequestInstallCallback"

    invoke-direct {v0, v1}, LuB;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, LNA;-><init>(LLA;LuB;LHB;)V

    iput-object p3, p0, LPA;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final e(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object v0, p0, LNA;->c:LLA;

    iget-object v0, v0, LLA;->a:LhB;

    invoke-virtual {v0}, LhB;->a()V

    iget-object v0, p0, LNA;->a:LuB;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x4

    const-string v4, "onRequestInfo"

    .line 2
    invoke-virtual {v0, v3, v4, v2}, LuB;->a(ILjava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, -0x2

    const-string v2, "error.code"

    .line 3
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 4
    iget-object v1, p0, LNA;->b:LHB;

    new-instance v3, LRA;

    .line 5
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 6
    invoke-direct {v3, p1}, LRA;-><init>(I)V

    .line 7
    iget-object p1, v1, LHB;->a:LKB;

    invoke-virtual {p1, v3}, LKB;->b(Ljava/lang/Exception;)Z

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, LNA;->b:LHB;

    iget-object v2, p0, LPA;->d:Ljava/lang/String;

    const/4 v3, -0x1

    const-string v4, "version.code"

    .line 9
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "update.availability"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "install.status"

    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "client.version.staleness"

    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v3, "blocking.intent"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/app/PendingIntent;

    const-string v3, "nonblocking.intent"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/app/PendingIntent;

    move v3, v4

    move v4, v5

    move v5, v1

    invoke-static/range {v2 .. v8}, LGA;->a(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)LGA;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, LHB;->a(Ljava/lang/Object;)Z

    return-void
.end method
