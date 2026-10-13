.class public LdD;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LYB;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LZB;


# direct methods
.method public constructor <init>(Landroid/content/Context;LZB;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iput-object p1, p0, LdD;->a:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 3
    iput-object p2, p0, LdD;->b:LZB;

    return-void

    .line 4
    :cond_0
    throw v0

    .line 5
    :cond_1
    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 18
    sget-object v0, LeD;->Y:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, LhD;

    invoke-direct {v0, p0}, LhD;-><init>(Landroid/content/Context;)V

    .line 21
    iget-object v0, v0, LhD;->a:LgD;

    .line 22
    iget-object v0, v0, LgD;->b:Ljava/lang/String;

    .line 23
    :goto_0
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 25
    sget-object p1, LeD;->X:LZB;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 26
    check-cast p1, LgC;

    const-string p0, "Unable to deliver intent: %s"

    invoke-virtual {p1, p0, v0}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(LWB;LnC;LXB;)V
    .locals 9

    .line 1
    invoke-static {p2}, LGC;->a(LnC;)LmE;

    move-result-object p1

    sget-object p2, LXB;->w:LXB;

    if-ne p3, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2
    :goto_0
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 3
    new-instance v5, LPD;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v5, p1, p2}, LPD;-><init>(LmE;Ljava/lang/Boolean;)V

    .line 4
    sget-object v2, LjD;->a:LDE;

    .line 5
    new-instance p1, LRD;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, LRD;-><init>(Ljava/lang/Long;LDE;LND;LMD;LPD;LOD;LQD;LLD;)V

    .line 6
    invoke-virtual {p1}, LRD;->e()[B

    move-result-object p1

    const-string p2, "ipcinv-upcall"

    .line 7
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 8
    iget-object p1, p0, LdD;->a:Landroid/content/Context;

    invoke-static {p1, p3}, LdD;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public a(LWB;LnC;ZLjava/lang/String;)V
    .locals 10

    .line 9
    iget-object p1, p0, LdD;->a:Landroid/content/Context;

    .line 10
    invoke-static {p2}, LGC;->a(LnC;)LmE;

    move-result-object p2

    .line 11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12
    new-instance v7, LOD;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {v7, p2, p3, p4}, LOD;-><init>(LmE;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 13
    sget-object v3, LjD;->a:LDE;

    .line 14
    new-instance p2, LRD;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v9}, LRD;-><init>(Ljava/lang/Long;LDE;LND;LMD;LPD;LOD;LQD;LLD;)V

    .line 15
    invoke-virtual {p2}, LRD;->e()[B

    move-result-object p2

    const-string p3, "ipcinv-upcall"

    .line 16
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 17
    invoke-static {p1, v0}, LdD;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Ljava/lang/String;LjC;)V
    .locals 3

    .line 27
    iget-object v0, p0, LdD;->b:LZB;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 28
    iget-object p1, p2, LjC;->a:[B

    .line 29
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 30
    check-cast v0, LgC;

    const-string p1, "Dropping call to %s; could not parse ack handle data %s"

    invoke-virtual {v0, p1, v1}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
