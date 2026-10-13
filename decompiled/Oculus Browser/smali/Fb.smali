.class public final LFb;
.super LYa;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final i:Landroid/content/ComponentName;

.field public final j:LDb;

.field public final k:Ljava/util/ArrayList;

.field public l:Z

.field public m:Z

.field public n:LBb;

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    new-instance v0, LWa;

    invoke-direct {v0, p2}, LWa;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, p1, v0}, LYa;-><init>(Landroid/content/Context;LWa;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LFb;->k:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, LFb;->i:Landroid/content/ComponentName;

    .line 4
    new-instance p1, LDb;

    invoke-direct {p1}, LDb;-><init>()V

    iput-object p1, p0, LFb;->j:LDb;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)LXa;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, LFb;->b(Ljava/lang/String;Ljava/lang/String;)LXa;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "routeId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)LXa;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, LFb;->b(Ljava/lang/String;Ljava/lang/String;)LXa;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeGroupId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .locals 3

    .line 9
    iget-boolean v0, p0, LFb;->m:Z

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MediaRouteProviderService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, LFb;->i:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 12
    :try_start_0
    iget-object v1, p0, LYa;->a:Landroid/content/Context;

    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, LFb;->m:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public a(LTa;)V
    .locals 1

    .line 6
    iget-boolean v0, p0, LFb;->o:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, LFb;->n:LBb;

    invoke-virtual {v0, p1}, LBb;->a(LTa;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, LFb;->e()V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)LXa;
    .locals 4

    .line 1
    iget-object v0, p0, LYa;->g:LZa;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, LZa;->a()V

    .line 3
    iget-object v0, v0, LZa;->b:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LSa;

    .line 6
    invoke-virtual {v3}, LSa;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    new-instance v0, LCb;

    invoke-direct {v0, p0, p1, p2}, LCb;-><init>(LFb;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, LFb;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-boolean p1, p0, LFb;->o:Z

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, LFb;->n:LBb;

    invoke-virtual {v0, p1}, LCb;->a(LBb;)V

    .line 11
    :cond_0
    invoke-virtual {p0}, LFb;->e()V

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .locals 10

    .line 12
    iget-object v0, p0, LFb;->n:LBb;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, LYa;->a(LZa;)V

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, LFb;->o:Z

    .line 15
    iget-object v2, p0, LFb;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 16
    iget-object v4, p0, LFb;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LCb;

    invoke-virtual {v4}, LCb;->d()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, p0, LFb;->n:LBb;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v2

    .line 18
    invoke-virtual/range {v4 .. v9}, LBb;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 19
    iget-object v3, v2, LBb;->x:LEb;

    .line 20
    iget-object v3, v3, LEb;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->clear()V

    .line 21
    iget-object v3, v2, LBb;->w:Landroid/os/Messenger;

    invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 22
    iget-object v1, v2, LBb;->E:LFb;

    iget-object v1, v1, LFb;->j:LDb;

    new-instance v3, Lzb;

    invoke-direct {v3, v2}, Lzb;-><init>(LBb;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    iput-object v0, p0, LFb;->n:LBb;

    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, LFb;->l:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, LYa;->e:LTa;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, LFb;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LFb;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LFb;->m:Z

    .line 3
    invoke-virtual {p0}, LFb;->b()V

    .line 4
    iget-object v0, p0, LYa;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    invoke-virtual {p0}, LFb;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, LFb;->a()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, LFb;->d()V

    :goto_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    .line 1
    iget-boolean p1, p0, LFb;->m:Z

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p0}, LFb;->b()V

    if-eqz p2, :cond_0

    .line 3
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 5
    new-instance v1, LBb;

    invoke-direct {v1, p0, p1}, LBb;-><init>(LFb;Landroid/os/Messenger;)V

    .line 6
    iget v4, v1, LBb;->z:I

    add-int/lit8 p1, v4, 0x1

    iput p1, v1, LBb;->z:I

    iput v4, v1, LBb;->C:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x2

    move-object v2, v1

    .line 7
    invoke-virtual/range {v2 .. v7}, LBb;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    :try_start_1
    iget-object p1, v1, LBb;->w:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, v1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p2, 0x1

    goto :goto_2

    .line 9
    :catch_1
    invoke-virtual {v1}, LBb;->binderDied()V

    :goto_2
    if-eqz p2, :cond_4

    .line 10
    iput-object v1, p0, LFb;->n:LBb;

    goto :goto_3

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": Service returned invalid messenger binder"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaRouteProviderProxy"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, LFb;->b()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Service connection "

    .line 1
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LFb;->i:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
