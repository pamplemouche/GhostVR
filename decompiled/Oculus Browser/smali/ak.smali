.class public final Lak;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LMm;


# instance fields
.field public final synthetic a:Lek;


# direct methods
.method public synthetic constructor <init>(Lek;LMk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lak;->a:Lek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(LLm;)V
    .locals 4

    .line 1
    check-cast p1, Lik;

    .line 2
    invoke-interface {p1}, LLm;->c()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->x:I

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lak;->a:Lek;

    .line 5
    iget-object v1, v1, Lek;->a:LJs;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->y:Ljava/lang/String;

    aput-object p1, v2, v0

    const-string p1, "Error fetching queue item ids, statusCode=%s, statusMessage=%s"

    .line 8
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v1, p1, v0}, LJs;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lak;->a:Lek;

    const/4 v0, 0x0

    iput-object v0, p1, Lek;->m:LJm;

    .line 11
    iget-object p1, p1, Lek;->i:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lak;->a:Lek;

    .line 13
    iget-object v0, p1, Lek;->j:Landroid/os/Handler;

    iget-object v1, p1, Lek;->k:Ljava/util/TimerTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p1, Lek;->j:Landroid/os/Handler;

    iget-object p1, p1, Lek;->k:Ljava/util/TimerTask;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
