.class public Lba;
.super Lm9;
.source "PG"


# instance fields
.field public A:Landroid/content/Context;

.field public B:Lbb;

.field public C:Ljava/util/List;

.field public D:Landroid/widget/ImageButton;

.field public E:LZ9;

.field public F:Landroid/support/v7/widget/RecyclerView;

.field public G:Z

.field public H:J

.field public I:J

.field public final J:Landroid/os/Handler;

.field public final y:Lrb;

.field public final z:LU9;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0, v0}, Lfa;->a(Landroid/content/Context;IZ)Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lfa;->a(Landroid/content/Context;)I

    move-result v0

    .line 3
    invoke-direct {p0, p1, v0}, Lm9;-><init>(Landroid/content/Context;I)V

    .line 4
    sget-object p1, Lbb;->c:Lbb;

    iput-object p1, p0, Lba;->B:Lbb;

    .line 5
    new-instance p1, LS9;

    invoke-direct {p1, p0}, LS9;-><init>(Lba;)V

    iput-object p1, p0, Lba;->J:Landroid/os/Handler;

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lrb;->a(Landroid/content/Context;)Lrb;

    move-result-object v0

    iput-object v0, p0, Lba;->y:Lrb;

    .line 8
    new-instance v0, LU9;

    invoke-direct {v0, p0}, LU9;-><init>(Lba;)V

    iput-object v0, p0, Lba;->z:LU9;

    .line 9
    iput-object p1, p0, Lba;->A:Landroid/content/Context;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c001e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lba;->H:J

    return-void
.end method


# virtual methods
.method public a(Lbb;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lba;->B:Lbb;

    invoke-virtual {v0, p1}, Lbb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iput-object p1, p0, Lba;->B:Lbb;

    .line 3
    iget-boolean v0, p0, Lba;->G:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lba;->y:Lrb;

    iget-object v1, p0, Lba;->z:LU9;

    invoke-virtual {v0, v1}, Lrb;->b(Lcb;)V

    .line 5
    iget-object v0, p0, Lba;->y:Lrb;

    iget-object v1, p0, Lba;->z:LU9;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lrb;->a(Lbb;Lcb;I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lba;->b()V

    :cond_1
    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lba;->G:Z

    if-eqz v0, :cond_4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lba;->y:Lrb;

    invoke-virtual {v1}, Lrb;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x1

    if-lez v1, :cond_2

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqb;

    .line 5
    invoke-virtual {v1}, Lqb;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    iget-boolean v4, v1, Lqb;->g:Z

    if-eqz v4, :cond_0

    .line 7
    iget-object v4, p0, Lba;->B:Lbb;

    .line 8
    invoke-virtual {v1, v4}, Lqb;->a(Lbb;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_1

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    move v1, v2

    goto :goto_0

    .line 10
    :cond_2
    sget-object v1, Laa;->w:Laa;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v4, p0, Lba;->I:J

    sub-long/2addr v1, v4

    iget-wide v4, p0, Lba;->H:J

    cmp-long v6, v1, v4

    if-ltz v6, :cond_3

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lba;->I:J

    .line 13
    iget-object v1, p0, Lba;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14
    iget-object v1, p0, Lba;->C:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    iget-object v0, p0, Lba;->E:LZ9;

    invoke-virtual {v0}, LZ9;->b()V

    goto :goto_2

    .line 16
    :cond_3
    iget-object v1, p0, Lba;->J:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    iget-object v1, p0, Lba;->J:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v2, p0, Lba;->I:J

    iget-wide v4, p0, Lba;->H:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lba;->G:Z

    .line 3
    iget-object v1, p0, Lba;->y:Lrb;

    iget-object v2, p0, Lba;->B:Lbb;

    iget-object v3, p0, Lba;->z:LU9;

    invoke-virtual {v1, v2, v3, v0}, Lrb;->a(Lbb;Lcb;I)V

    .line 4
    invoke-virtual {p0}, Lba;->b()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lm9;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0115

    .line 2
    invoke-virtual {p0, p1}, Lm9;->setContentView(I)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lba;->C:Ljava/util/List;

    const p1, 0x7f0b02ab

    .line 4
    invoke-virtual {p0, p1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lba;->D:Landroid/widget/ImageButton;

    .line 5
    new-instance v0, LT9;

    invoke-direct {v0, p0}, LT9;-><init>(Lba;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance p1, LZ9;

    invoke-direct {p1, p0}, LZ9;-><init>(Lba;)V

    iput-object p1, p0, Lba;->E:LZ9;

    const p1, 0x7f0b02ac

    .line 7
    invoke-virtual {p0, p1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lba;->F:Landroid/support/v7/widget/RecyclerView;

    .line 8
    iget-object v0, p0, Lba;->E:LZ9;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(LBg;)V

    .line 9
    iget-object p1, p0, Lba;->F:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lba;->A:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(LQg;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lba;->G:Z

    .line 3
    iget-object v0, p0, Lba;->y:Lrb;

    iget-object v1, p0, Lba;->z:LU9;

    invoke-virtual {v0, v1}, Lrb;->b(Lcb;)V

    .line 4
    iget-object v0, p0, Lba;->J:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
