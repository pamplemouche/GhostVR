.class public abstract Lrk0;
.super Landroid/app/Service;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lrk0;->a()I

    move-result v0

    invoke-static {v0}, Lxk0;->e(I)Lxk0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lxk0;->c:Lrk0;

    .line 4
    iget-object v0, v0, Lxk0;->g:Lok0;

    if-eqz v0, :cond_2

    iget v0, v0, Lok0;->k:I

    .line 5
    invoke-static {v0}, Lxk0;->e(I)Lxk0;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Lxk0;->a()V

    .line 7
    sget-object v1, Lxk0;->k:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/4 p2, 0x1

    const/4 p3, 0x2

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    invoke-virtual {p0}, Lrk0;->a()I

    move-result v0

    invoke-static {v0}, Lxk0;->e(I)Lxk0;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    iget-object v1, v0, Lxk0;->g:Lok0;

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 4
    iget-object p1, v0, Lxk0;->c:Lrk0;

    if-ne p1, p0, :cond_2

    goto/16 :goto_2

    .line 5
    :cond_2
    iput-object p0, v0, Lxk0;->c:Lrk0;

    .line 6
    invoke-virtual {v0, p2, p2}, Lxk0;->a(ZZ)V

    goto/16 :goto_2

    .line 7
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eqz v2, :cond_a

    const-string v1, "android.intent.extra.KEY_EVENT"

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    if-nez p1, :cond_4

    goto/16 :goto_2

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_2

    .line 11
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v1, 0x4f

    const/16 v2, 0x3e9

    if-eq p1, v1, :cond_8

    const/16 v1, 0x55

    if-eq p1, v1, :cond_8

    const/16 v1, 0x7e

    if-eq p1, v1, :cond_7

    const/16 v1, 0x7f

    if-eq p1, v1, :cond_6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 12
    :pswitch_0
    invoke-virtual {v0, v3}, Lxk0;->b(I)V

    goto/16 :goto_2

    .line 13
    :pswitch_1
    invoke-virtual {v0, v4}, Lxk0;->b(I)V

    goto/16 :goto_2

    .line 14
    :pswitch_2
    invoke-virtual {v0, p3}, Lxk0;->b(I)V

    goto/16 :goto_2

    .line 15
    :pswitch_3
    invoke-virtual {v0, v5}, Lxk0;->b(I)V

    goto/16 :goto_2

    .line 16
    :cond_6
    invoke-virtual {v0, v2}, Lxk0;->c(I)V

    goto/16 :goto_2

    .line 17
    :cond_7
    invoke-virtual {v0, v2}, Lxk0;->d(I)V

    goto/16 :goto_2

    .line 18
    :cond_8
    iget-object p1, v0, Lxk0;->g:Lok0;

    iget-boolean p1, p1, Lok0;->c:Z

    if-eqz p1, :cond_9

    .line 19
    invoke-virtual {v0, v2}, Lxk0;->d(I)V

    goto/16 :goto_2

    .line 20
    :cond_9
    invoke-virtual {v0, v2}, Lxk0;->c(I)V

    goto/16 :goto_2

    :cond_a
    const-string p1, "MediaNotificationManager.ListenerService.STOP"

    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v2, 0x3e8

    if-nez p1, :cond_12

    const-string p1, "MediaNotificationManager.ListenerService.SWIPE"

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    const-string p1, "MediaNotificationManager.ListenerService.CANCEL"

    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_0

    :cond_b
    const-string p1, "MediaNotificationManager.ListenerService.PLAY"

    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 25
    invoke-virtual {v0, v2}, Lxk0;->d(I)V

    goto :goto_2

    :cond_c
    const-string p1, "MediaNotificationManager.ListenerService.PAUSE"

    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 27
    invoke-virtual {v0, v2}, Lxk0;->c(I)V

    goto :goto_2

    :cond_d
    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 p1, 0x3ea

    .line 29
    invoke-virtual {v0, p1}, Lxk0;->c(I)V

    goto :goto_2

    :cond_e
    const-string p1, "MediaNotificationManager.ListenerService.PREVIOUS_TRACK"

    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 31
    invoke-virtual {v0, p3}, Lxk0;->b(I)V

    goto :goto_2

    :cond_f
    const-string p1, "MediaNotificationManager.ListenerService.NEXT_TRACK"

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 33
    invoke-virtual {v0, v5}, Lxk0;->b(I)V

    goto :goto_2

    :cond_10
    const-string p1, "MediaNotificationManager.ListenerService.SEEK_FORWARD"

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 35
    invoke-virtual {v0, v3}, Lxk0;->b(I)V

    goto :goto_2

    :cond_11
    const-string p1, "MediaNotificationmanager.ListenerService.SEEK_BACKWARD"

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 37
    invoke-virtual {v0, v4}, Lxk0;->b(I)V

    goto :goto_2

    .line 38
    :cond_12
    :goto_0
    iget-object p1, v0, Lxk0;->g:Lok0;

    if-nez p1, :cond_13

    goto :goto_1

    .line 39
    :cond_13
    iget-object p1, p1, Lok0;->m:Lpk0;

    invoke-interface {p1, v2}, Lpk0;->b(I)V

    .line 40
    :goto_1
    sget-object p1, LSl0;->a:LTl0;

    .line 41
    invoke-virtual {p1, p0, p2}, LTl0;->a(Landroid/app/Service;I)V

    .line 42
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_14
    :goto_2
    const/4 p1, 0x1

    goto :goto_4

    :cond_15
    :goto_3
    const/4 p1, 0x0

    :goto_4
    if-nez p1, :cond_16

    .line 43
    invoke-static {p0}, Lxk0;->a(Lrk0;)V

    .line 44
    sget-object p1, LSl0;->a:LTl0;

    .line 45
    invoke-virtual {p1, p0, p2}, LTl0;->a(Landroid/app/Service;I)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_16
    return p3

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->setTheme(I)V

    return-void
.end method
