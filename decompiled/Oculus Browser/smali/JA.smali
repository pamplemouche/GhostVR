.class public final LJA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LHA;


# instance fields
.field public final a:LLA;

.field public final b:LIA;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(LLA;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJA;->a:LLA;

    new-instance p1, LIA;

    invoke-direct {p1, p2}, LIA;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, LJA;->b:LIA;

    iput-object p2, p0, LJA;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()LyB;
    .locals 6

    iget-object v0, p0, LJA;->a:LLA;

    iget-object v1, p0, LJA;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 1
    sget-object v2, LLA;->d:LuB;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x4

    const-string v5, "requestUpdateInfo(%s)"

    .line 2
    invoke-virtual {v2, v4, v5, v3}, LuB;->a(ILjava/lang/String;[Ljava/lang/Object;)I

    .line 3
    new-instance v2, LHB;

    invoke-direct {v2}, LHB;-><init>()V

    iget-object v3, v0, LLA;->a:LhB;

    new-instance v4, LMA;

    invoke-direct {v4, v0, v2, v1, v2}, LMA;-><init>(LLA;LHB;Ljava/lang/String;LHB;)V

    invoke-virtual {v3, v4}, LhB;->a(LiB;)V

    .line 4
    iget-object v0, v2, LHB;->a:LKB;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method public final declared-synchronized a(LTA;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LJA;->b:LIA;

    invoke-virtual {v0, p1}, LsB;->a(LrB;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(LGA;ILandroid/app/Activity;I)Z
    .locals 8

    invoke-virtual {p1, p2}, LGA;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    check-cast p1, LOA;

    .line 6
    iget-object p1, p1, LOA;->g:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 7
    check-cast p1, LOA;

    .line 8
    iget-object p1, p1, LOA;->f:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p3

    move v3, p4

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return v0
.end method

.method public final declared-synchronized b(LTA;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LJA;->b:LIA;

    invoke-virtual {v0, p1}, LsB;->b(LrB;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
