.class public Lcom/google/android/gms/cast/framework/media/MediaIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(LOj;)Lok;
    .locals 1

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, LSj;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, LOj;->e()Lok;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(LOj;J)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/media/MediaIntentReceiver;->a(LOj;)Lok;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2
    invoke-virtual {p0}, Lok;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lok;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lok;->a()J

    move-result-wide v0

    add-long v6, v0, p1

    const-string p1, "Must be called from the main thread."

    .line 5
    invoke-static {p1}, Lxp;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lok;->s()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p0, 0x11

    const/4 p1, 0x0

    .line 7
    invoke-static {p0, p1}, Lok;->a(ILjava/lang/String;)LJm;

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Lxk;

    iget-object v5, p0, Lok;->f:LHm;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lxk;-><init>(Lok;LHm;JILorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lok;->a(Llk;)Llk;

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, LJj;->a(Landroid/content/Context;)LJj;

    move-result-object p1

    invoke-virtual {p1}, LJj;->b()LTj;

    move-result-object p1

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v2, "com.google.android.gms.cast.framework.action.FORWARD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_3
    const-string v2, "com.google.android.gms.cast.framework.action.DISCONNECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v2, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v2, "com.google.android.gms.cast.framework.action.REWIND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    :cond_1
    :goto_0
    const-wide/16 v5, 0x0

    const-string v0, "googlecast-extra_skip_step_ms"

    const/16 v2, 0x11

    const/4 v7, 0x0

    const-string v8, "Must be called from the main thread."

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 4
    :pswitch_0
    invoke-virtual {p1}, LTj;->b()LSj;

    move-result-object p1

    .line 5
    instance-of v0, p1, LOj;

    if-eqz v0, :cond_5

    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 6
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/KeyEvent;

    if-eqz p2, :cond_5

    .line 8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v0, 0x55

    if-ne p2, v0, :cond_5

    .line 10
    check-cast p1, LOj;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaIntentReceiver;->a(LOj;)Lok;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p1}, Lok;->q()V

    :cond_5
    :goto_1
    return-void

    .line 13
    :pswitch_1
    invoke-virtual {p1, v3}, LTj;->a(Z)V

    return-void

    .line 14
    :pswitch_2
    invoke-virtual {p1, v4}, LTj;->a(Z)V

    return-void

    .line 15
    :pswitch_3
    invoke-virtual {p2, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 16
    invoke-virtual {p1}, LTj;->b()LSj;

    move-result-object p1

    .line 17
    instance-of p2, p1, LOj;

    if-eqz p2, :cond_6

    .line 18
    check-cast p1, LOj;

    neg-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/cast/framework/media/MediaIntentReceiver;->a(LOj;J)V

    :cond_6
    return-void

    .line 19
    :pswitch_4
    invoke-virtual {p2, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 20
    invoke-virtual {p1}, LTj;->b()LSj;

    move-result-object p1

    .line 21
    instance-of p2, p1, LOj;

    if-eqz p2, :cond_7

    .line 22
    check-cast p1, LOj;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/cast/framework/media/MediaIntentReceiver;->a(LOj;J)V

    :cond_7
    return-void

    .line 23
    :pswitch_5
    invoke-virtual {p1}, LTj;->b()LSj;

    move-result-object p1

    .line 24
    instance-of p2, p1, LOj;

    if-eqz p2, :cond_a

    .line 25
    check-cast p1, LOj;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaIntentReceiver;->a(LOj;)Lok;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 26
    invoke-virtual {p1}, Lok;->m()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_2

    .line 27
    :cond_8
    invoke-static {v8}, Lxp;->a(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lok;->s()Z

    move-result p2

    if-nez p2, :cond_9

    .line 29
    invoke-static {v2, v7}, Lok;->a(ILjava/lang/String;)LJm;

    goto :goto_2

    .line 30
    :cond_9
    new-instance p2, Lrk;

    iget-object v0, p1, Lok;->f:LHm;

    invoke-direct {p2, p1, v0, v7}, Lrk;-><init>(Lok;LHm;Lorg/json/JSONObject;)V

    invoke-virtual {p1, p2}, Lok;->a(Llk;)Llk;

    :cond_a
    :goto_2
    return-void

    .line 31
    :pswitch_6
    invoke-virtual {p1}, LTj;->b()LSj;

    move-result-object p1

    .line 32
    instance-of p2, p1, LOj;

    if-eqz p2, :cond_d

    .line 33
    check-cast p1, LOj;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaIntentReceiver;->a(LOj;)Lok;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 34
    invoke-virtual {p1}, Lok;->m()Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_3

    .line 35
    :cond_b
    invoke-static {v8}, Lxp;->a(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lok;->s()Z

    move-result p2

    if-nez p2, :cond_c

    .line 37
    invoke-static {v2, v7}, Lok;->a(ILjava/lang/String;)LJm;

    goto :goto_3

    .line 38
    :cond_c
    new-instance p2, Lsk;

    iget-object v0, p1, Lok;->f:LHm;

    invoke-direct {p2, p1, v0, v7}, Lsk;-><init>(Lok;LHm;Lorg/json/JSONObject;)V

    invoke-virtual {p1, p2}, Lok;->a(Llk;)Llk;

    :cond_d
    :goto_3
    return-void

    .line 39
    :pswitch_7
    invoke-virtual {p1}, LTj;->b()LSj;

    move-result-object p1

    .line 40
    instance-of p2, p1, LOj;

    if-eqz p2, :cond_f

    .line 41
    check-cast p1, LOj;

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaIntentReceiver;->a(LOj;)Lok;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_4

    .line 43
    :cond_e
    invoke-virtual {p1}, Lok;->q()V

    :cond_f
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_7
        -0x3855de4e -> :sswitch_6
        -0x3854c70e -> :sswitch_5
        -0x27d32f79 -> :sswitch_4
        -0x76b6783 -> :sswitch_3
        0xe0a3765 -> :sswitch_2
        0x51303e64 -> :sswitch_1
        0x7708a552 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
