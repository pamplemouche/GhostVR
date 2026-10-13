.class public Lp5;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ln5;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/List;

.field public d:Ljava/util/HashMap;

.field public final e:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp5;->b:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp5;->c:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lp5;->d:Ljava/util/HashMap;

    .line 5
    iput-object p2, p0, Lp5;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 6
    iget-object p2, p2, Landroid/support/v4/media/session/MediaSessionCompat$Token;->w:Ljava/lang/Object;

    .line 7
    new-instance v0, Landroid/media/session/MediaController;

    check-cast p2, Landroid/media/session/MediaSession$Token;

    invoke-direct {v0, p1, p2}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 8
    iput-object v0, p0, Lp5;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 9
    iget-object p1, p0, Lp5;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 10
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->x:Lh5;

    if-nez p1, :cond_0

    .line 11
    new-instance p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    invoke-direct {p1, p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;-><init>(Lp5;)V

    .line 12
    iget-object p2, p0, Lp5;->a:Ljava/lang/Object;

    .line 13
    check-cast p2, Landroid/media/session/MediaController;

    const-string v0, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Landroid/media/session/MediaController;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    :cond_0
    return-void

    .line 14
    :cond_1
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 3

    .line 31
    iget-object v0, p0, Lp5;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 32
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->x:Lh5;

    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    invoke-interface {v0}, Lh5;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPlaybackState."

    .line 34
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :cond_0
    iget-object v0, p0, Lp5;->a:Ljava/lang/Object;

    .line 36
    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    invoke-static {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final a(Lm5;)V
    .locals 3

    .line 17
    iget-object v0, p0, Lp5;->a:Ljava/lang/Object;

    iget-object v1, p1, Lm5;->w:Ljava/lang/Object;

    .line 18
    check-cast v0, Landroid/media/session/MediaController;

    check-cast v1, Landroid/media/session/MediaController$Callback;

    .line 19
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 20
    iget-object v0, p0, Lp5;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lp5;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 22
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->x:Lh5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 23
    :try_start_1
    iget-object v1, p0, Lp5;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo5;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 24
    iput-object v2, p1, Lm5;->y:Le5;

    .line 25
    iget-object p1, p0, Lp5;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 26
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->x:Lh5;

    .line 27
    invoke-interface {p1, v1}, Lh5;->b(Le5;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in unregisterCallback."

    .line 28
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lp5;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Lm5;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp5;->a:Ljava/lang/Object;

    iget-object v1, p1, Lm5;->w:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroid/media/session/MediaController;

    check-cast v1, Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1, p2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 3
    iget-object p2, p0, Lp5;->b:Ljava/lang/Object;

    monitor-enter p2

    .line 4
    :try_start_0
    iget-object v0, p0, Lp5;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 5
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->x:Lh5;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lo5;

    invoke-direct {v0, p1}, Lo5;-><init>(Lm5;)V

    .line 7
    iget-object v2, p0, Lp5;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object v0, p1, Lm5;->y:Le5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    iget-object v2, p0, Lp5;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 10
    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$Token;->x:Lh5;

    .line 11
    invoke-interface {v2, v0}, Lh5;->a(Le5;)V

    const/16 v0, 0xd

    .line 12
    invoke-virtual {p1, v0, v1, v1}, Lm5;->a(ILjava/lang/Object;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "MediaControllerCompat"

    const-string v1, "Dead object in registerCallback."

    .line 13
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 14
    :cond_0
    iput-object v1, p1, Lm5;->y:Le5;

    .line 15
    iget-object v0, p0, Lp5;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :goto_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Lp5;->a:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Landroid/support/v4/media/MediaMetadataCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lp5;->a:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public d()Lt5;
    .locals 2

    .line 1
    iget-object v0, p0, Lp5;->a:Ljava/lang/Object;

    invoke-static {v0}, LA5;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lu5;

    invoke-direct {v1, v0}, Lu5;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp5;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 2
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->x:Lh5;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lp5;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5;

    .line 4
    new-instance v2, Lo5;

    invoke-direct {v2, v1}, Lo5;-><init>(Lm5;)V

    .line 5
    iget-object v3, p0, Lp5;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object v2, v1, Lm5;->y:Le5;

    .line 7
    :try_start_0
    iget-object v3, p0, Lp5;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 8
    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$Token;->x:Lh5;

    .line 9
    invoke-interface {v3, v2}, Lh5;->a(Le5;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xd

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3, v3}, Lm5;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in registerCallback."

    .line 11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :cond_1
    iget-object v0, p0, Lp5;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
