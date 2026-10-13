.class public LXc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:J

.field public c:Landroid/view/animation/Interpolator;

.field public d:LS7;

.field public e:Z

.field public final f:LT7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, LXc;->b:J

    .line 3
    new-instance v0, LWc;

    invoke-direct {v0, p0}, LWc;-><init>(LXc;)V

    iput-object v0, p0, LXc;->f:LT7;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LXc;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, LXc;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LXc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR7;

    .line 3
    invoke-virtual {v1}, LR7;->a()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, LXc;->e:Z

    return-void
.end method

.method public b()V
    .locals 7

    .line 1
    iget-boolean v0, p0, LXc;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LXc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR7;

    .line 3
    iget-wide v2, p0, LXc;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 4
    invoke-virtual {v1, v2, v3}, LR7;->a(J)LR7;

    .line 5
    :cond_1
    iget-object v2, p0, LXc;->c:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1, v2}, LR7;->a(Landroid/view/animation/Interpolator;)LR7;

    .line 7
    :cond_2
    iget-object v2, p0, LXc;->d:LS7;

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p0, LXc;->f:LT7;

    invoke-virtual {v1, v2}, LR7;->a(LS7;)LR7;

    .line 9
    :cond_3
    invoke-virtual {v1}, LR7;->b()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, LXc;->e:Z

    return-void
.end method
