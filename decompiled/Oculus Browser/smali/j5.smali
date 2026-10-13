.class public Lj5;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public a:Z

.field public final synthetic b:Lm5;


# direct methods
.method public constructor <init>(Lm5;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj5;->b:Lm5;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lj5;->a:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj5;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lj5;->b:Lm5;

    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    throw v1

    .line 5
    :pswitch_2
    iget-object v0, p0, Lj5;->b:Lm5;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 6
    :cond_2
    throw v1

    .line 7
    :pswitch_3
    iget-object v0, p0, Lj5;->b:Lm5;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    throw v1

    .line 9
    :pswitch_4
    iget-object v0, p0, Lj5;->b:Lm5;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    if-eqz v0, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    throw v1

    .line 11
    :pswitch_5
    iget-object p1, p0, Lj5;->b:Lm5;

    invoke-virtual {p1}, Lm5;->a()V

    goto :goto_0

    .line 12
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 13
    invoke-static {p1}, LS5;->a(Landroid/os/Bundle;)V

    .line 14
    iget-object p1, p0, Lj5;->b:Lm5;

    if-eqz p1, :cond_5

    goto :goto_0

    .line 15
    :cond_5
    throw v1

    .line 16
    :pswitch_7
    iget-object v0, p0, Lj5;->b:Lm5;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    goto :goto_0

    .line 17
    :cond_6
    throw v1

    .line 18
    :pswitch_8
    iget-object v0, p0, Lj5;->b:Lm5;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-eqz v0, :cond_7

    goto :goto_0

    .line 19
    :cond_7
    throw v1

    .line 20
    :pswitch_9
    iget-object v0, p0, Lj5;->b:Lm5;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ls5;

    if-eqz v0, :cond_8

    goto :goto_0

    .line 21
    :cond_8
    throw v1

    .line 22
    :pswitch_a
    iget-object v0, p0, Lj5;->b:Lm5;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v0, p1}, Lm5;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    goto :goto_0

    .line 23
    :pswitch_b
    iget-object v0, p0, Lj5;->b:Lm5;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0, p1}, Lm5;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_0

    .line 24
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 25
    invoke-static {v0}, LS5;->a(Landroid/os/Bundle;)V

    .line 26
    iget-object v0, p0, Lj5;->b:Lm5;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    goto :goto_0

    .line 27
    :cond_9
    throw v1

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
