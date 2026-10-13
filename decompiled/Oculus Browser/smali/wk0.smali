.class public Lwk0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lxk0;

.field public final b:Landroid/os/Handler;

.field public c:Ljava/lang/Runnable;

.field public d:Lok0;


# direct methods
.method public constructor <init>(Lxk0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwk0;->a:Lxk0;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lwk0;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lok0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lwk0;->a:Lxk0;

    .line 2
    iget-object v1, v0, Lxk0;->g:Lok0;

    invoke-static {v1, p1}, Lxk0;->a(Lok0;Lok0;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, v0, Lxk0;->g:Lok0;

    .line 4
    iget-object v1, v0, Lxk0;->c:Lrk0;

    if-nez v1, :cond_1

    iget-boolean p1, p1, Lok0;->c:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Lxk0;->c:Lrk0;

    if-nez p1, :cond_3

    .line 6
    invoke-virtual {v0}, Lxk0;->c()V

    .line 7
    invoke-virtual {v0}, Lxk0;->d()V

    .line 8
    sget-object p1, LSl0;->a:LTl0;

    .line 9
    invoke-virtual {v0}, Lxk0;->b()Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 10
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 11
    invoke-static {p1, v0}, LR3;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 12
    :cond_2
    throw v2

    .line 13
    :cond_3
    invoke-virtual {v0, v3, v3}, Lxk0;->a(ZZ)V

    .line 14
    :goto_0
    new-instance p1, Lvk0;

    invoke-direct {p1, p0}, Lvk0;-><init>(Lwk0;)V

    iput-object p1, p0, Lwk0;->c:Ljava/lang/Runnable;

    .line 15
    iget-object v0, p0, Lwk0;->b:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, p1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-nez p1, :cond_4

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "MediaNotification"

    const-string v1, "Failed to post the throttler task."

    .line 16
    invoke-static {v0, v1, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iput-object v2, p0, Lwk0;->c:Ljava/lang/Runnable;

    :cond_4
    return-void
.end method
