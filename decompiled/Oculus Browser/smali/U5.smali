.class public LU5;
.super Landroid/media/session/MediaSession$Callback;
.source "PG"


# instance fields
.field public final a:LT5;


# direct methods
.method public constructor <init>(LT5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    .line 2
    iput-object p1, p0, LU5;->a:LT5;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 4

    .line 1
    invoke-static {p2}, LS5;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, LU5;->a:LT5;

    check-cast v0, LE5;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    :try_start_0
    const-string v2, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object p1, v0, LE5;->a:LH5;

    iget-object p1, p1, LH5;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LK5;

    if-eqz p1, :cond_c

    .line 5
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object p1, p1, LK5;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 7
    iget-object v0, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->x:Lh5;

    const-string v2, "android.support.v4.media.session.EXTRA_BINDER"

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 9
    :goto_0
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->y:Landroid/os/Bundle;

    const-string v0, "android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"

    .line 11
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p3, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_1
    const-string p3, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

    .line 13
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    if-eqz p3, :cond_3

    .line 14
    :try_start_1
    iget-object p1, v0, LE5;->a:LH5;

    .line 15
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/support/v4/media/MediaDescriptionCompat;

    if-eqz p1, :cond_2

    goto/16 :goto_2

    .line 16
    :cond_2
    throw v1

    :cond_3
    const-string p3, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    .line 17
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    if-eqz p3, :cond_5

    .line 18
    :try_start_2
    iget-object p1, v0, LE5;->a:LH5;

    .line 19
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 20
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    if-eqz p1, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    throw v1

    :cond_5
    const-string p3, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    .line 22
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 23
    iget-object p1, v0, LE5;->a:LH5;

    .line 24
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/support/v4/media/MediaDescriptionCompat;

    if-eqz p1, :cond_6

    goto :goto_2

    .line 25
    :cond_6
    throw v1

    :cond_7
    const-string p3, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

    .line 26
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 27
    iget-object p1, v0, LE5;->a:LH5;

    iget-object p1, p1, LH5;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LK5;

    if-eqz p1, :cond_c

    .line 28
    iget-object p3, p1, LK5;->f:Ljava/util/List;

    if-eqz p3, :cond_c

    const/4 p3, -0x1

    .line 29
    invoke-virtual {p2, v3, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_8

    .line 30
    iget-object p3, p1, LK5;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_8

    iget-object p1, p1, LK5;->f:Ljava/util/List;

    .line 31
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    goto :goto_1

    :cond_8
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_c

    .line 32
    iget-object p2, v0, LE5;->a:LH5;

    .line 33
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->w:Landroid/support/v4/media/MediaDescriptionCompat;

    if-eqz p2, :cond_9

    goto :goto_2

    .line 34
    :cond_9
    throw v1

    .line 35
    :cond_a
    iget-object p1, v0, LE5;->a:LH5;

    if-eqz p1, :cond_b

    goto :goto_2

    .line 36
    :cond_b
    throw v1
    :try_end_2
    .catch Landroid/os/BadParcelableException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string p1, "MediaSessionCompat"

    const-string p2, "Could not unparcel the extra data."

    .line 37
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_2
    return-void

    .line 38
    :cond_d
    throw v1
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-static {p2}, LS5;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, LU5;->a:LT5;

    check-cast v0, LE5;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    const-string v2, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    .line 3
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 4
    invoke-static {v2}, LS5;->a(Landroid/os/Bundle;)V

    const-string v2, "android.support.v4.media.session.action.PLAY_FROM_URI"

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "android.support.v4.media.session.action.ARGUMENT_URI"

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 7
    iget-object p1, v0, LE5;->a:LH5;

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 8
    :cond_0
    throw v1

    :cond_1
    const-string v2, "android.support.v4.media.session.action.PREPARE"

    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    iget-object p1, v0, LE5;->a:LH5;

    if-eqz p1, :cond_2

    goto/16 :goto_0

    .line 11
    :cond_2
    throw v1

    :cond_3
    const-string v2, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    .line 12
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    .line 13
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    iget-object p1, v0, LE5;->a:LH5;

    if-eqz p1, :cond_4

    goto/16 :goto_0

    .line 15
    :cond_4
    throw v1

    :cond_5
    const-string v2, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    .line 17
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    iget-object p1, v0, LE5;->a:LH5;

    if-eqz p1, :cond_6

    goto/16 :goto_0

    .line 19
    :cond_6
    throw v1

    :cond_7
    const-string v2, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    .line 20
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 21
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 22
    iget-object p1, v0, LE5;->a:LH5;

    if-eqz p1, :cond_8

    goto :goto_0

    .line 23
    :cond_8
    throw v1

    :cond_9
    const-string v2, "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED"

    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"

    .line 25
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 26
    iget-object p1, v0, LE5;->a:LH5;

    if-eqz p1, :cond_a

    goto :goto_0

    .line 27
    :cond_a
    throw v1

    :cond_b
    const-string v2, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    .line 28
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    .line 29
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 30
    iget-object p1, v0, LE5;->a:LH5;

    if-eqz p1, :cond_c

    goto :goto_0

    .line 31
    :cond_c
    throw v1

    :cond_d
    const-string v2, "android.support.v4.media.session.action.SET_SHUFFLE_MODE"

    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"

    .line 33
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 34
    iget-object p1, v0, LE5;->a:LH5;

    if-eqz p1, :cond_e

    goto :goto_0

    .line 35
    :cond_e
    throw v1

    :cond_f
    const-string v2, "android.support.v4.media.session.action.SET_RATING"

    .line 36
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_RATING"

    .line 37
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/RatingCompat;

    .line 38
    iget-object p1, v0, LE5;->a:LH5;

    if-eqz p1, :cond_10

    goto :goto_0

    .line 39
    :cond_10
    throw v1

    .line 40
    :cond_11
    iget-object p1, v0, LE5;->a:LH5;

    if-eqz p1, :cond_12

    :goto_0
    return-void

    .line 41
    :cond_12
    throw v1

    .line 42
    :cond_13
    throw v1
.end method

.method public onFastForward()V
    .locals 1

    .line 1
    iget-object v0, p0, LU5;->a:LT5;

    check-cast v0, LE5;

    .line 2
    iget-object v0, v0, LE5;->a:LH5;

    invoke-virtual {v0}, LH5;->a()V

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LU5;->a:LT5;

    check-cast v0, LE5;

    .line 2
    iget-object v0, v0, LE5;->a:LH5;

    invoke-virtual {v0, p1}, LH5;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, LU5;->a:LT5;

    check-cast v0, LE5;

    .line 2
    iget-object v0, v0, LE5;->a:LH5;

    invoke-virtual {v0}, LH5;->b()V

    return-void
.end method

.method public onPlay()V
    .locals 1

    .line 1
    iget-object v0, p0, LU5;->a:LT5;

    check-cast v0, LE5;

    .line 2
    iget-object v0, v0, LE5;->a:LH5;

    invoke-virtual {v0}, LH5;->c()V

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p2}, LS5;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, LU5;->a:LT5;

    check-cast p1, LE5;

    .line 3
    iget-object p1, p1, LE5;->a:LH5;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p2}, LS5;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, LU5;->a:LT5;

    check-cast p1, LE5;

    .line 3
    iget-object p1, p1, LE5;->a:LH5;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public onRewind()V
    .locals 1

    .line 1
    iget-object v0, p0, LU5;->a:LT5;

    check-cast v0, LE5;

    .line 2
    iget-object v0, v0, LE5;->a:LH5;

    invoke-virtual {v0}, LH5;->d()V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 1

    .line 1
    iget-object v0, p0, LU5;->a:LT5;

    check-cast v0, LE5;

    .line 2
    iget-object v0, v0, LE5;->a:LH5;

    invoke-virtual {v0, p1, p2}, LH5;->a(J)V

    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 1

    .line 1
    iget-object v0, p0, LU5;->a:LT5;

    check-cast v0, LE5;

    .line 2
    iget-object v0, v0, LE5;->a:LH5;

    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public onSkipToNext()V
    .locals 1

    .line 1
    iget-object v0, p0, LU5;->a:LT5;

    check-cast v0, LE5;

    .line 2
    iget-object v0, v0, LE5;->a:LH5;

    invoke-virtual {v0}, LH5;->e()V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .line 1
    iget-object v0, p0, LU5;->a:LT5;

    check-cast v0, LE5;

    .line 2
    iget-object v0, v0, LE5;->a:LH5;

    invoke-virtual {v0}, LH5;->f()V

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 0

    .line 1
    iget-object p1, p0, LU5;->a:LT5;

    check-cast p1, LE5;

    .line 2
    iget-object p1, p1, LE5;->a:LH5;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, LU5;->a:LT5;

    check-cast v0, LE5;

    .line 2
    iget-object v0, v0, LE5;->a:LH5;

    invoke-virtual {v0}, LH5;->g()V

    return-void
.end method
