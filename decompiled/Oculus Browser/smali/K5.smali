.class public LK5;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LI5;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field public c:Z

.field public final d:Landroid/os/RemoteCallbackList;

.field public e:Landroid/support/v4/media/session/PlaybackStateCompat;

.field public f:Ljava/util/List;

.field public g:Landroid/support/v4/media/MediaMetadataCompat;

.field public h:I

.field public i:Z

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LK5;->c:Z

    .line 3
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, LK5;->d:Landroid/os/RemoteCallbackList;

    .line 4
    new-instance v0, Landroid/media/session/MediaSession;

    invoke-direct {v0, p1, p2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    iput-object v0, p0, LK5;->a:Ljava/lang/Object;

    .line 6
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object p2, p0, LK5;->a:Ljava/lang/Object;

    .line 7
    check-cast p2, Landroid/media/session/MediaSession;

    invoke-virtual {p2}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p2

    .line 8
    new-instance v0, LJ5;

    invoke-direct {v0, p0}, LJ5;-><init>(LK5;)V

    invoke-direct {p1, p2, v0, p3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Lh5;Landroid/os/Bundle;)V

    iput-object p1, p0, LK5;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .line 44
    iget-object v0, p0, LK5;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 4
    iget-object v0, p0, LK5;->a:Ljava/lang/Object;

    .line 5
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 6
    invoke-virtual {v1, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 7
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public a(LH5;Landroid/os/Handler;)V
    .locals 2

    .line 1
    iget-object v0, p0, LK5;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p1, LH5;->a:Ljava/lang/Object;

    .line 2
    :goto_0
    check-cast v0, Landroid/media/session/MediaSession;

    check-cast v1, Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0, v1, p2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1, p0, p2}, LH5;->a(LI5;Landroid/os/Handler;)V

    :cond_1
    return-void
.end method

.method public a(LR4;)V
    .locals 0

    return-void
.end method

.method public a(LY4;)V
    .locals 1

    .line 8
    iget-object v0, p0, LK5;->a:Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, LY4;->a()Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast v0, Landroid/media/session/MediaSession;

    check-cast p1, Landroid/media/VolumeProvider;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    return-void
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    .line 56
    iget-object v0, p0, LK5;->a:Ljava/lang/Object;

    .line 57
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setSessionActivity(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 3

    .line 45
    iput-object p1, p0, LK5;->g:Landroid/support/v4/media/MediaMetadataCompat;

    .line 46
    iget-object v0, p0, LK5;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p1, Landroid/support/v4/media/MediaMetadataCompat;->x:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 48
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 49
    iget-object v2, p1, Landroid/support/v4/media/MediaMetadataCompat;->w:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    sget-object v2, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 52
    iput-object v2, p1, Landroid/support/v4/media/MediaMetadataCompat;->x:Ljava/lang/Object;

    .line 53
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 54
    :cond_1
    iget-object p1, p1, Landroid/support/v4/media/MediaMetadataCompat;->x:Ljava/lang/Object;

    .line 55
    :goto_0
    check-cast v0, Landroid/media/session/MediaSession;

    check-cast p1, Landroid/media/MediaMetadata;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method public a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 13
    iput-object v1, v0, LK5;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 14
    iget-object v2, v0, LK5;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 15
    iget-object v3, v0, LK5;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Le5;

    .line 16
    :try_start_0
    invoke-interface {v3, v1}, Le5;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, v0, LK5;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 18
    iget-object v2, v0, LK5;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move-object/from16 v16, v2

    goto/16 :goto_4

    .line 19
    :cond_1
    iget-object v4, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->H:Ljava/lang/Object;

    if-nez v4, :cond_5

    .line 20
    iget-object v4, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->E:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->E:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    iget-object v4, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->E:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 23
    iget-object v6, v5, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->A:Ljava/lang/Object;

    if-nez v6, :cond_2

    .line 24
    iget-object v6, v5, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->w:Ljava/lang/String;

    iget-object v7, v5, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->x:Ljava/lang/CharSequence;

    iget v8, v5, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->y:I

    iget-object v9, v5, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->z:Landroid/os/Bundle;

    .line 25
    new-instance v10, Landroid/media/session/PlaybackState$CustomAction$Builder;

    invoke-direct {v10, v6, v7, v8}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 26
    invoke-virtual {v10, v9}, Landroid/media/session/PlaybackState$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;

    .line 27
    invoke-virtual {v10}, Landroid/media/session/PlaybackState$CustomAction$Builder;->build()Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v6

    .line 28
    iput-object v6, v5, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->A:Ljava/lang/Object;

    .line 29
    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_3
    iget v5, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->w:I

    iget-wide v6, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->x:J

    iget-wide v11, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->y:J

    iget v8, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->z:F

    iget-wide v13, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->A:J

    iget-object v15, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->C:Ljava/lang/CharSequence;

    iget-wide v9, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->D:J

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    iget-wide v2, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->F:J

    iget-object v4, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->G:Landroid/os/Bundle;

    .line 31
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    move-object v1, v4

    move-object v4, v0

    .line 32
    invoke-virtual/range {v4 .. v10}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 33
    invoke-virtual {v0, v11, v12}, Landroid/media/session/PlaybackState$Builder;->setBufferedPosition(J)Landroid/media/session/PlaybackState$Builder;

    .line 34
    invoke-virtual {v0, v13, v14}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 35
    invoke-virtual {v0, v15}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    .line 36
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 37
    check-cast v5, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v0, v5}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    goto :goto_2

    .line 38
    :cond_4
    invoke-virtual {v0, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setActiveQueueItemId(J)Landroid/media/session/PlaybackState$Builder;

    .line 39
    invoke-virtual {v0, v1}, Landroid/media/session/PlaybackState$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$Builder;

    .line 40
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    move-object/from16 v1, p1

    .line 41
    iput-object v0, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->H:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object/from16 v16, v2

    .line 42
    :goto_3
    iget-object v3, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->H:Ljava/lang/Object;

    .line 43
    :goto_4
    move-object/from16 v2, v16

    check-cast v2, Landroid/media/session/MediaSession;

    check-cast v3, Landroid/media/session/PlaybackState;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 11
    iget-object v0, p0, LK5;->a:Ljava/lang/Object;

    .line 12
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setActive(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LK5;->c:Z

    .line 4
    iget-object v0, p0, LK5;->a:Ljava/lang/Object;

    .line 5
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LK5;->a:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setFlags(I)V

    return-void
.end method

.method public b(Landroid/app/PendingIntent;)V
    .locals 1

    .line 6
    iget-object v0, p0, LK5;->a:Ljava/lang/Object;

    .line 7
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 1
    iget-object v0, p0, LK5;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, LK5;->a:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LK5;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public g()LR4;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
