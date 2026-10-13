.class public Ltv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lku0;

.field public final synthetic b:Lyv0;


# direct methods
.method public constructor <init>(Lyv0;Lku0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv0;->b:Lyv0;

    iput-object p2, p0, Ltv0;->a:Lku0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lku0;

    .line 2
    iget-object v0, p0, Ltv0;->b:Lyv0;

    .line 3
    iget-object v1, v0, Lyv0;->o0:LXw0;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_4

    .line 4
    iget-object v1, v0, Lyv0;->w0:LGu0;

    const/4 v2, 0x0

    .line 5
    iput-object v2, v1, LGu0;->j:LR81;

    .line 6
    iget-boolean v1, p1, LCQ0;->w:Z

    if-nez v1, :cond_1

    .line 7
    iget-object p1, v0, Lyv0;->i0:Ltw0;

    const/4 v0, -0x1

    .line 8
    iput v0, p1, LZw0;->c:I

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Ltv0;->a:Lku0;

    if-nez v1, :cond_2

    .line 10
    iget-object v0, v0, Lyv0;->i0:Ltw0;

    .line 11
    invoke-virtual {v0, p1}, LZw0;->a(LCQ0;)V

    goto :goto_0

    .line 12
    :cond_2
    new-instance v1, LQ81;

    invoke-direct {v1}, LQ81;-><init>()V

    .line 13
    iget-object v2, p1, Lku0;->M:Ljava/lang/String;

    .line 14
    iput-object v2, v1, LQ81;->c:Ljava/lang/String;

    .line 15
    iget-object v2, p1, Lku0;->N:Ljava/lang/String;

    .line 16
    iput-object v2, v1, LQ81;->d:Ljava/lang/String;

    .line 17
    iget-object p1, p1, Lku0;->O:Ljava/lang/String;

    .line 18
    iput-object p1, v1, LQ81;->b:Ljava/lang/String;

    .line 19
    iget-object p1, v0, Lyv0;->M:Lc91;

    if-eqz p1, :cond_4

    iget-boolean v0, v0, Lyv0;->T:Z

    if-nez v0, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    check-cast p1, Lp91;

    invoke-virtual {p1, v1}, Lp91;->a(LQ81;)V

    .line 21
    :cond_4
    :goto_0
    iget-object p1, p0, Ltv0;->b:Lyv0;

    .line 22
    iget-object v0, p1, Lyv0;->o0:LXw0;

    const/4 v1, 0x3

    .line 23
    iget-object p1, p1, Lyv0;->i0:Ltw0;

    .line 24
    invoke-virtual {v0, v1, p1}, LXw0;->a(ILZw0;)V

    .line 25
    iget-object p1, p0, Ltv0;->b:Lyv0;

    .line 26
    iget-object p1, p1, Lyv0;->U:Ljava/util/Queue;

    .line 27
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Ltv0;->b:Lyv0;

    .line 28
    iget-object v0, p1, Lyv0;->z:Landroid/os/Handler;

    .line 29
    iget-object p1, p1, Lyv0;->U:Ljava/util/Queue;

    .line 30
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void
.end method
