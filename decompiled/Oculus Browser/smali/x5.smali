.class public final Lx5;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ln5;

.field public final b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field public final c:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;LS5;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lx5;->c:Ljava/util/HashSet;

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, LS5;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p2

    iput-object p2, p0, Lx5;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 v0, 0x0

    .line 4
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 5
    new-instance v1, Lr5;

    invoke-direct {v1, p1, p2}, Lr5;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 6
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 7
    new-instance v1, Lq5;

    invoke-direct {v1, p1, p2}, Lq5;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Lp5;

    invoke-direct {v1, p1, p2}, Lp5;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MediaControllerCompat"

    const-string v1, "Failed to create MediaControllerImpl."

    .line 9
    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :goto_1
    iput-object v0, p0, Lx5;->a:Ln5;

    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "session must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lx5;->c:Ljava/util/HashSet;

    if-eqz p2, :cond_2

    .line 14
    iput-object p2, p0, Lx5;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 16
    new-instance v0, Lr5;

    invoke-direct {v0, p1, p2}, Lr5;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Lx5;->a:Ln5;

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 17
    new-instance v0, Lq5;

    invoke-direct {v0, p1, p2}, Lq5;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Lx5;->a:Ln5;

    goto :goto_0

    .line 18
    :cond_1
    new-instance v0, Lp5;

    invoke-direct {v0, p1, p2}, Lp5;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Lx5;->a:Ln5;

    :goto_0
    return-void

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sessionToken must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Lx5;->a:Ln5;

    invoke-interface {v0}, Ln5;->b()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method

.method public a(Lm5;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 3
    invoke-virtual {p1, v0}, Lm5;->a(Landroid/os/Handler;)V

    .line 4
    iget-object v1, p0, Lx5;->a:Ln5;

    invoke-interface {v1, p1, v0}, Ln5;->a(Lm5;Landroid/os/Handler;)V

    .line 5
    iget-object v0, p0, Lx5;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lt5;
    .locals 1

    .line 1
    iget-object v0, p0, Lx5;->a:Ln5;

    invoke-interface {v0}, Ln5;->d()Lt5;

    move-result-object v0

    return-object v0
.end method

.method public b(Lm5;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lx5;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lx5;->a:Ln5;

    invoke-interface {v1, p1}, Ln5;->a(Lm5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p1, v0}, Lm5;->a(Landroid/os/Handler;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lm5;->a(Landroid/os/Handler;)V

    throw v1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
