.class public final LBb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public final D:Landroid/util/SparseArray;

.field public final synthetic E:LFb;

.field public final w:Landroid/os/Messenger;

.field public final x:LEb;

.field public final y:Landroid/os/Messenger;

.field public z:I


# direct methods
.method public constructor <init>(LFb;Landroid/os/Messenger;)V
    .locals 0

    .line 1
    iput-object p1, p0, LBb;->E:LFb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, LBb;->z:I

    .line 3
    iput p1, p0, LBb;->A:I

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LBb;->D:Landroid/util/SparseArray;

    .line 5
    iput-object p2, p0, LBb;->w:Landroid/os/Messenger;

    .line 6
    new-instance p1, LEb;

    invoke-direct {p1, p0}, LEb;-><init>(LBb;)V

    iput-object p1, p0, LBb;->x:LEb;

    .line 7
    new-instance p1, Landroid/os/Messenger;

    iget-object p2, p0, LBb;->x:LEb;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, LBb;->y:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 6

    .line 1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "volume"

    .line 2
    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget v2, p0, LBb;->z:I

    add-int/lit8 p2, v2, 0x1

    iput p2, p0, LBb;->z:I

    const/4 v4, 0x0

    const/4 v1, 0x7

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, LBb;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    return-void
.end method

.method public a(LTa;)V
    .locals 6

    .line 4
    iget v2, p0, LBb;->z:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, LBb;->z:I

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p1, LTa;->a:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v4, p1

    const/4 v5, 0x0

    const/16 v1, 0xa

    const/4 v3, 0x0

    move-object v0, p0

    .line 6
    invoke-virtual/range {v0 .. v5}, LBb;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    return-void
.end method

.method public final a(IIILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 1

    .line 7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 8
    iput p1, v0, Landroid/os/Message;->what:I

    .line 9
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 10
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 11
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 13
    iget-object p2, p0, LBb;->y:Landroid/os/Messenger;

    iput-object p2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 14
    :try_start_0
    iget-object p2, p0, LBb;->w:Landroid/os/Messenger;

    invoke-virtual {p2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    const-string p1, "MediaRouteProviderProxy"

    const-string p3, "Could not send message to service."

    .line 15
    invoke-static {p1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(II)V
    .locals 6

    .line 1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "volume"

    .line 2
    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget v2, p0, LBb;->z:I

    add-int/lit8 p2, v2, 0x1

    iput p2, p0, LBb;->z:I

    const/4 v4, 0x0

    const/16 v1, 0x8

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, LBb;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    return-void
.end method

.method public binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, LBb;->E:LFb;

    iget-object v0, v0, LFb;->j:LDb;

    new-instance v1, LAb;

    invoke-direct {v1, p0}, LAb;-><init>(LBb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
