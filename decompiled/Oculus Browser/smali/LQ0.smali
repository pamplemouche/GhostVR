.class public LLQ0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:LNQ0;


# direct methods
.method public constructor <init>(LNQ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LLQ0;->w:LNQ0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, LLQ0;->w:LNQ0;

    .line 2
    iget-object p1, p1, LNQ0;->I:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, LLQ0;->w:LNQ0;

    .line 5
    iget-object v2, v2, LNQ0;->D:Ljava/util/List;

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 7
    iget-object v2, p0, LLQ0;->w:LNQ0;

    .line 8
    iget-object v2, v2, LNQ0;->D:Ljava/util/List;

    .line 9
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, LLQ0;->w:LNQ0;

    invoke-virtual {p1}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    sget-object p1, Lrc1;->x:Lrc1;

    .line 12
    iget-object v2, p0, LLQ0;->w:LNQ0;

    invoke-virtual {v2}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrc1;->b(Landroid/view/View;)V

    .line 13
    :cond_1
    iget-object p1, p0, LLQ0;->w:LNQ0;

    .line 14
    iput-object v1, p1, LNQ0;->Q:Landroid/animation/Animator;

    .line 15
    invoke-virtual {p1, v0}, LNQ0;->a(Z)Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    iget-object v1, p1, LNQ0;->y:Landroid/os/Handler;

    new-instance v2, LMQ0;

    invoke-direct {v2, p1, v0}, LMQ0;-><init>(LNQ0;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
