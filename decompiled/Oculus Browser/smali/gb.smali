.class public final Lgb;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final synthetic b:Lnb;


# direct methods
.method public constructor <init>(Lnb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgb;->b:Lnb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lgb;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Ldb;ILjava/lang/Object;I)V
    .locals 4

    .line 2
    iget-object v0, p1, Ldb;->a:Lrb;

    .line 3
    iget-object v1, p1, Ldb;->b:Lcb;

    const v2, 0xff00

    and-int/2addr v2, p2

    const/16 v3, 0x100

    if-eq v2, v3, :cond_1

    const/16 p1, 0x200

    if-eq v2, p1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    check-cast p3, Lob;

    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 5
    :pswitch_0
    invoke-virtual {v1, v0, p3}, Lcb;->b(Lrb;Lob;)V

    goto :goto_2

    .line 6
    :pswitch_1
    invoke-virtual {v1, v0, p3}, Lcb;->c(Lrb;Lob;)V

    goto :goto_2

    .line 7
    :pswitch_2
    invoke-virtual {v1, v0, p3}, Lcb;->a(Lrb;Lob;)V

    goto :goto_2

    .line 8
    :cond_1
    check-cast p3, Lqb;

    .line 9
    iget v2, p1, Ldb;->d:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    iget-object p1, p1, Ldb;->c:Lbb;

    .line 10
    invoke-virtual {p3, p1}, Lqb;->a(Lbb;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    packed-switch p2, :pswitch_data_1

    goto :goto_2

    .line 11
    :pswitch_3
    invoke-virtual {v1, v0, p3, p4}, Lcb;->a(Lrb;Lqb;I)V

    goto :goto_2

    .line 12
    :pswitch_4
    invoke-virtual {v1, v0, p3}, Lcb;->d(Lrb;Lqb;)V

    goto :goto_2

    :pswitch_5
    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 13
    throw p1

    .line 14
    :pswitch_6
    invoke-virtual {v1, v0, p3}, Lcb;->f(Lrb;Lqb;)V

    goto :goto_2

    .line 15
    :pswitch_7
    invoke-virtual {v1, v0, p3}, Lcb;->b(Lrb;Lqb;)V

    goto :goto_2

    .line 16
    :pswitch_8
    invoke-virtual {v1, v0, p3}, Lcb;->c(Lrb;Lqb;)V

    goto :goto_2

    .line 17
    :pswitch_9
    invoke-virtual {v1, v0, p3}, Lcb;->a(Lrb;Lqb;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x103

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v2, p0, Lgb;->b:Lnb;

    .line 5
    invoke-virtual {v2}, Lnb;->c()Lqb;

    move-result-object v2

    .line 6
    iget-object v2, v2, Lqb;->c:Ljava/lang/String;

    .line 7
    move-object v3, v1

    check-cast v3, Lqb;

    .line 8
    iget-object v3, v3, Lqb;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    iget-object v2, p0, Lgb;->b:Lnb;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnb;->a(Z)V

    :cond_0
    const/16 v2, 0x106

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 11
    :pswitch_0
    iget-object v2, p0, Lgb;->b:Lnb;

    iget-object v2, v2, Lnb;->j:LXb;

    move-object v3, v1

    check-cast v3, Lqb;

    invoke-virtual {v2, v3}, LXb;->b(Lqb;)V

    goto :goto_0

    .line 12
    :pswitch_1
    iget-object v2, p0, Lgb;->b:Lnb;

    iget-object v2, v2, Lnb;->j:LXb;

    move-object v3, v1

    check-cast v3, Lqb;

    invoke-virtual {v2, v3}, LXb;->c(Lqb;)V

    goto :goto_0

    .line 13
    :pswitch_2
    iget-object v2, p0, Lgb;->b:Lnb;

    iget-object v2, v2, Lnb;->j:LXb;

    move-object v3, v1

    check-cast v3, Lqb;

    invoke-virtual {v2, v3}, LXb;->a(Lqb;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v2, p0, Lgb;->b:Lnb;

    iget-object v2, v2, Lnb;->j:LXb;

    move-object v3, v1

    check-cast v3, Lqb;

    invoke-virtual {v2, v3}, LXb;->d(Lqb;)V

    .line 15
    :goto_0
    :try_start_0
    iget-object v2, p0, Lgb;->b:Lnb;

    iget-object v2, v2, Lnb;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    .line 16
    iget-object v3, p0, Lgb;->b:Lnb;

    iget-object v3, v3, Lnb;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrb;

    if-nez v3, :cond_2

    .line 17
    iget-object v3, p0, Lgb;->b:Lnb;

    iget-object v3, v3, Lnb;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 18
    :cond_2
    iget-object v4, p0, Lgb;->a:Ljava/util/ArrayList;

    iget-object v3, v3, Lrb;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 19
    :cond_3
    iget-object v2, p0, Lgb;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    .line 20
    iget-object v4, p0, Lgb;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldb;

    invoke-virtual {p0, v4, v0, v1, p1}, Lgb;->a(Ldb;ILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 21
    :cond_4
    iget-object p1, p0, Lgb;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lgb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
