.class public final LCq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final A:Landroid/os/Messenger;

.field public final synthetic B:LDq;

.field public final w:Ljava/lang/String;

.field public final x:Landroid/os/Bundle;

.field public final y:Ljava/util/List;

.field public final z:LMq;


# direct methods
.method public constructor <init>(LDq;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, LCq;->B:LDq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LCq;->w:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.gcm.INetworkTaskCallback"

    invoke-interface {p3, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, LMq;

    if-eqz v0, :cond_1

    check-cast p2, LMq;

    goto :goto_0

    :cond_1
    new-instance p2, LNq;

    invoke-direct {p2, p3}, LNq;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object p2, p0, LCq;->z:LMq;

    iput-object p4, p0, LCq;->x:Landroid/os/Bundle;

    iput-object p5, p0, LCq;->y:Ljava/util/List;

    iput-object p1, p0, LCq;->A:Landroid/os/Messenger;

    return-void
.end method

.method public constructor <init>(LDq;Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, LCq;->B:LDq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LCq;->w:Ljava/lang/String;

    iput-object p3, p0, LCq;->A:Landroid/os/Messenger;

    iput-object p4, p0, LCq;->x:Landroid/os/Bundle;

    iput-object p5, p0, LCq;->y:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, LCq;->z:LMq;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    iget-object v0, p0, LCq;->B:LDq;

    .line 1
    iget-object v0, v0, LDq;->w:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LCq;->B:LDq;

    .line 3
    iget-object v1, v1, LDq;->B:LAq;

    .line 4
    iget-object v2, p0, LCq;->w:Ljava/lang/String;

    iget-object v3, p0, LCq;->B:LDq;

    .line 5
    iget-object v3, v3, LDq;->A:Landroid/content/ComponentName;

    .line 6
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LAq;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object p1, p0, LCq;->B:LDq;

    .line 7
    iget-object p1, p1, LDq;->B:LAq;

    .line 8
    iget-object v1, p0, LCq;->w:Ljava/lang/String;

    iget-object v2, p0, LCq;->B:LDq;

    .line 9
    iget-object v2, v2, LDq;->A:Landroid/content/ComponentName;

    .line 10
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LAq;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LCq;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LCq;->B:LDq;

    .line 11
    iget-object p1, p1, LDq;->B:LAq;

    .line 12
    iget-object v1, p0, LCq;->B:LDq;

    .line 13
    iget-object v1, v1, LDq;->A:Landroid/content/ComponentName;

    .line 14
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, LAq;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LCq;->B:LDq;

    iget-object v1, p0, LCq;->B:LDq;

    .line 15
    iget v1, v1, LDq;->x:I

    .line 16
    invoke-virtual {p1, v1}, Landroid/app/Service;->stopSelf(I)V

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p0}, LCq;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LCq;->A:Landroid/os/Messenger;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    iput p1, v2, Landroid/os/Message;->arg1:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "component"

    iget-object v4, p0, LCq;->B:LDq;

    .line 17
    iget-object v4, v4, LDq;->A:Landroid/content/ComponentName;

    .line 18
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "tag"

    iget-object v4, p0, LCq;->w:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, LCq;->z:LMq;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    check-cast v1, LNq;

    :try_start_3
    invoke-virtual {v1, p1}, LNq;->a(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    iget-object p1, p0, LCq;->B:LDq;

    .line 19
    iget-object p1, p1, LDq;->B:LAq;

    .line 20
    iget-object v1, p0, LCq;->w:Ljava/lang/String;

    iget-object v2, p0, LCq;->B:LDq;

    .line 21
    iget-object v2, v2, LDq;->A:Landroid/content/ComponentName;

    .line 22
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LAq;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LCq;->a()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, LCq;->B:LDq;

    .line 23
    iget-object p1, p1, LDq;->B:LAq;

    .line 24
    iget-object v1, p0, LCq;->B:LDq;

    .line 25
    iget-object v1, v1, LDq;->A:Landroid/content/ComponentName;

    .line 26
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, LAq;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, LCq;->B:LDq;

    iget-object v1, p0, LCq;->B:LDq;

    .line 27
    iget v1, v1, LDq;->x:I

    .line 28
    :goto_1
    invoke-virtual {p1, v1}, Landroid/app/Service;->stopSelf(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    :try_start_5
    const-string p1, "GcmTaskService"

    const-string v1, "Error reporting result of operation to scheduler for "

    iget-object v2, p0, LCq;->w:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object p1, p0, LCq;->B:LDq;

    .line 29
    iget-object p1, p1, LDq;->B:LAq;

    .line 30
    iget-object v1, p0, LCq;->w:Ljava/lang/String;

    iget-object v2, p0, LCq;->B:LDq;

    .line 31
    iget-object v2, v2, LDq;->A:Landroid/content/ComponentName;

    .line 32
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LAq;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LCq;->a()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, LCq;->B:LDq;

    .line 33
    iget-object p1, p1, LDq;->B:LAq;

    .line 34
    iget-object v1, p0, LCq;->B:LDq;

    .line 35
    iget-object v1, v1, LDq;->A:Landroid/content/ComponentName;

    .line 36
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, LAq;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, LCq;->B:LDq;

    iget-object v1, p0, LCq;->B:LDq;

    .line 37
    iget v1, v1, LDq;->x:I

    goto :goto_1

    .line 38
    :cond_4
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    iget-object v1, p0, LCq;->B:LDq;

    .line 39
    iget-object v1, v1, LDq;->B:LAq;

    .line 40
    iget-object v2, p0, LCq;->w:Ljava/lang/String;

    iget-object v3, p0, LCq;->B:LDq;

    .line 41
    iget-object v3, v3, LDq;->A:Landroid/content/ComponentName;

    .line 42
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LAq;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LCq;->a()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, LCq;->B:LDq;

    .line 43
    iget-object v1, v1, LDq;->B:LAq;

    .line 44
    iget-object v2, p0, LCq;->B:LDq;

    .line 45
    iget-object v2, v2, LDq;->A:Landroid/content/ComponentName;

    .line 46
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LAq;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, LCq;->B:LDq;

    iget-object v2, p0, LCq;->B:LDq;

    .line 47
    iget v2, v2, LDq;->x:I

    .line 48
    invoke-virtual {v1, v2}, Landroid/app/Service;->stopSelf(I)V

    :cond_5
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, LCq;->A:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final run()V
    .locals 4

    new-instance v0, LIq;

    iget-object v1, p0, LCq;->w:Ljava/lang/String;

    iget-object v2, p0, LCq;->x:Landroid/os/Bundle;

    iget-object v3, p0, LCq;->y:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, LIq;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    iget-object v1, p0, LCq;->B:LDq;

    invoke-virtual {v1, v0}, LDq;->a(LIq;)I

    move-result v0

    invoke-virtual {p0, v0}, LCq;->a(I)V

    return-void
.end method
