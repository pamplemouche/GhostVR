.class public abstract LiD;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(LPE;)Landroid/content/Intent;
    .locals 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    sget-object v2, LjD;->a:LDE;

    .line 3
    new-instance v3, LJD;

    invoke-direct {v3, p0}, LJD;-><init>(LPE;)V

    .line 4
    new-instance p0, LKD;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, LKD;-><init>(LDE;LJD;LID;Ljava/lang/Boolean;LHD;)V

    .line 5
    invoke-virtual {p0}, LKD;->d()[B

    move-result-object p0

    const-string v1, "ipcinv-internal-downcall"

    .line 6
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-object v0
.end method
