.class public Lk11;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lb21;


# instance fields
.field public A:Z

.field public final w:Lj11;

.field public x:La21;

.field public y:Lk21;

.field public z:Z


# direct methods
.method public constructor <init>(Lj11;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk11;->w:Lj11;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lk11;->z:Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lk11;->A:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lk11;->A:Z

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lk11;->w:Lj11;

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 4
    iget-object v1, v0, Lj11;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, v0, Lj11;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v0, Lj11;->a:Lo11;

    .line 7
    iget-boolean v3, v1, Lo11;->f:Z

    if-eqz v3, :cond_0

    .line 8
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 9
    iget-object v4, v1, Lo11;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    iput-boolean v2, v1, Lo11;->f:Z

    .line 11
    :cond_0
    iput-boolean v2, v0, Lj11;->c:Z

    .line 12
    :cond_1
    iput-boolean v2, p0, Lk11;->A:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 13
    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public a(La21;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lk11;->x:La21;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "BatteryMonitorImpl"

    const-string v1, "Overlapped call to queryNextStatus!"

    .line 16
    invoke-static {v0, v1, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Lk11;->a()V

    return-void

    .line 18
    :cond_0
    iput-object p1, p0, Lk11;->x:La21;

    .line 19
    iget-boolean v0, p0, Lk11;->z:Z

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lk11;->y:Lk21;

    check-cast p1, Lg21;

    invoke-virtual {p1, v0}, Lg21;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lk11;->x:La21;

    .line 22
    iput-boolean v1, p0, Lk11;->z:Z

    :cond_1
    return-void
.end method

.method public a(Lk21;)V
    .locals 1

    .line 23
    iput-object p1, p0, Lk11;->y:Lk21;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lk11;->z:Z

    .line 25
    iget-object v0, p0, Lk11;->x:La21;

    if-eqz v0, :cond_0

    .line 26
    check-cast v0, Lg21;

    invoke-virtual {v0, p1}, Lg21;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lk11;->x:La21;

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lk11;->z:Z

    :cond_0
    return-void
.end method

.method public a(Ly71;)V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lk11;->a()V

    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk11;->a()V

    return-void
.end method
