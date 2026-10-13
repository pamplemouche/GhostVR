.class public abstract Lm5;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final w:Ljava/lang/Object;

.field public x:Lj5;

.field public y:Le5;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk5;

    invoke-direct {v0, p0}, Lk5;-><init>(Lm5;)V

    .line 3
    new-instance v1, Lz5;

    invoke-direct {v1, v0}, Lz5;-><init>(Ly5;)V

    .line 4
    iput-object v1, p0, Lm5;->w:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lm5;->x:Lj5;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lm5;->x:Lj5;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lj5;->a:Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iput-object v0, p0, Lm5;->x:Lj5;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lj5;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lj5;-><init>(Lm5;Landroid/os/Looper;)V

    iput-object v0, p0, Lm5;->x:Lj5;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, v0, Lj5;->a:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract a(Landroid/support/v4/media/MediaMetadataCompat;)V
.end method

.method public abstract a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
.end method

.method public binderDied()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 1
    invoke-virtual {p0, v1, v0, v0}, Lm5;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method
