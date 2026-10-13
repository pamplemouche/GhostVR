.class public final LRo;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static a(Landroid/os/Message;)V
    .locals 1

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, LJo;

    move-object v0, p0

    check-cast v0, LQo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LJo;->c()V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 1
    throw p0
.end method

.method public static b(Landroid/os/Message;)Z
    .locals 2

    iget p0, p0, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_1

    invoke-static {p1}, LRo;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, LRo;->a(Landroid/os/Message;)V

    :cond_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x7

    if-eq v0, v4, :cond_2

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->k()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, LRo;->a(Landroid/os/Message;)V

    return-void

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v0, v1, :cond_9

    iget-object v0, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 1
    iput-object v1, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->w:Lcom/google/android/gms/common/ConnectionResult;

    .line 2
    iget-object p1, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 3
    iget-boolean v0, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v1, :cond_7

    .line 4
    iget-object p1, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 5
    iget-boolean v0, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->x:Z

    if-nez v0, :cond_7

    .line 6
    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(ILandroid/os/IInterface;)V

    return-void

    .line 7
    :cond_7
    iget-object p1, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->w:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_8

    goto :goto_1

    .line 9
    :cond_8
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    :goto_1
    iget-object v0, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->n:LKo;

    invoke-interface {v0, p1}, LKo;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_9
    if-ne v0, v2, :cond_b

    iget-object p1, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 10
    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->w:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_a

    goto :goto_2

    .line 11
    :cond_a
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    :goto_2
    iget-object v0, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->n:LKo;

    invoke-interface {v0, p1}, LKo;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_b
    if-ne v0, v5, :cond_d

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/PendingIntent;

    if-eqz v1, :cond_c

    move-object v6, v0

    check-cast v6, Landroid/app/PendingIntent;

    :cond_c
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v0, p1, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object p1, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->n:LKo;

    invoke-interface {p1, v0}, LKo;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_d
    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    iget-object v0, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 12
    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(ILandroid/os/IInterface;)V

    .line 13
    iget-object v0, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->s:LHo;

    if-eqz v0, :cond_e

    .line 15
    iget v1, p1, Landroid/os/Message;->arg2:I

    check-cast v0, LFp;

    .line 16
    iget-object v0, v0, LFp;->a:LFm;

    invoke-interface {v0, v1}, LFm;->a(I)V

    .line 17
    :cond_e
    iget-object v0, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 18
    iput p1, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->b:J

    .line 19
    iget-object p1, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 20
    invoke-virtual {p1, v2, v3, v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(IILandroid/os/IInterface;)Z

    return-void

    :cond_f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 21
    iget-object v0, p0, LRo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1}, LRo;->a(Landroid/os/Message;)V

    return-void

    :cond_10
    invoke-static {p1}, LRo;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LJo;

    invoke-virtual {p1}, LJo;->a()V

    return-void

    :cond_11
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2d

    const-string v1, "Don\'t know how to handle message: "

    invoke-static {v0, v1, p1}, LZi;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "GmsClient"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
