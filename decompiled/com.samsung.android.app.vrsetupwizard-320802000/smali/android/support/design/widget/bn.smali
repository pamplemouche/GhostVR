.class final Landroid/support/design/widget/bn;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/animation/ValueAnimator;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/design/widget/bp;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/design/widget/bp;

.field private final d:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/bn;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/bn;->c:Landroid/support/design/widget/bp;

    iput-object v0, p0, Landroid/support/design/widget/bn;->a:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/support/design/widget/bo;

    invoke-direct {v0, p0}, Landroid/support/design/widget/bo;-><init>(Landroid/support/design/widget/bn;)V

    iput-object v0, p0, Landroid/support/design/widget/bn;->d:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method private a(Landroid/support/design/widget/bp;)V
    .locals 0

    iget-object p1, p1, Landroid/support/design/widget/bp;->b:Landroid/animation/ValueAnimator;

    iput-object p1, p0, Landroid/support/design/widget/bn;->a:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Landroid/support/design/widget/bn;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bn;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/bn;->a:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bn;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/bn;->a:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method a([I)V
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/bn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/bn;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/bp;

    iget-object v3, v2, Landroid/support/design/widget/bp;->a:[I

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object p1, p0, Landroid/support/design/widget/bn;->c:Landroid/support/design/widget/bp;

    if-ne v2, p1, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/bn;->b()V

    :cond_3
    iput-object v2, p0, Landroid/support/design/widget/bn;->c:Landroid/support/design/widget/bp;

    if-eqz v2, :cond_4

    invoke-direct {p0, v2}, Landroid/support/design/widget/bn;->a(Landroid/support/design/widget/bp;)V

    :cond_4
    return-void
.end method

.method public a([ILandroid/animation/ValueAnimator;)V
    .locals 1

    new-instance v0, Landroid/support/design/widget/bp;

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/bp;-><init>([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Landroid/support/design/widget/bn;->d:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Landroid/support/design/widget/bn;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
