.class public Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/animation/Animator;

.field private n:Landroid/animation/Animator;

.field private o:Landroid/animation/Animator;

.field private p:Landroid/animation/Animator;

.field private q:Landroid/content/Context;

.field private r:I

.field private final s:Landroid/support/v4/view/ce;

.field private final t:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;

.field private u:Landroid/database/DataSetObserver;

.field private v:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d:I

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->e:I

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->f:I

    const/high16 v1, 0x7f020000

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->h:I

    const v2, 0x7f0801e2

    iput v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->i:I

    iput v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->j:I

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->k:I

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->l:I

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->r:I

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->s:Landroid/support/v4/view/ce;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->t:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->u:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/d;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/d;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->v:Landroid/database/DataSetObserver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d:I

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->e:I

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->f:I

    const/high16 v1, 0x7f020000

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->h:I

    const v2, 0x7f0801e2

    iput v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->i:I

    iput v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->j:I

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->k:I

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->l:I

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->r:I

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->s:Landroid/support/v4/view/ce;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->t:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->u:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/d;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/d;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->v:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    iput p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c:I

    const/4 p3, -0x1

    iput p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d:I

    iput p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->e:I

    iput p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->f:I

    const/high16 v0, 0x7f020000

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->h:I

    const v1, 0x7f0801e2

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->i:I

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->j:I

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->k:I

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->l:I

    iput p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->r:I

    new-instance p3, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    iput-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->s:Landroid/support/v4/view/ce;

    new-instance p3, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    iput-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->t:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;

    new-instance p3, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    iput-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->u:Landroid/database/DataSetObserver;

    new-instance p3, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/d;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/d;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    iput-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->v:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    iput p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c:I

    const/4 p3, -0x1

    iput p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d:I

    iput p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->e:I

    iput p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->f:I

    const/high16 p4, 0x7f020000

    iput p4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->g:I

    const/4 p4, 0x0

    iput p4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->h:I

    const v0, 0x7f0801e2

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->i:I

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->j:I

    iput p4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->k:I

    iput p4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->l:I

    iput p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->r:I

    new-instance p3, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    iput-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->s:Landroid/support/v4/view/ce;

    new-instance p3, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    iput-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->t:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;

    new-instance p3, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    iput-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->u:Landroid/database/DataSetObserver;

    new-instance p3, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/d;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/d;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    iput-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->v:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/g;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/g;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/g;->b(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a(I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->e:I

    const/high16 v1, 0x40a00000    # 5.0f

    if-gez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a(F)I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->e:I

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->f:I

    if-gez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a(F)I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->f:I

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d:I

    if-gez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a(F)I

    move-result v0

    :cond_2
    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d:I

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->g:I

    if-nez v0, :cond_3

    const/high16 v0, 0x7f020000

    :cond_3
    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->g:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->m:Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->o:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->o:Landroid/animation/Animator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->n:Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->p:Landroid/animation/Animator;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->p:Landroid/animation/Animator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->k:I

    if-nez p1, :cond_4

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->i:I

    if-nez p1, :cond_4

    const p1, 0x7f0801e2

    :cond_4
    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->i:I

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->l:I

    if-nez p1, :cond_5

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->j:I

    if-nez p1, :cond_5

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->i:I

    :cond_5
    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->j:I

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->q:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getPageCount()I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->r:I

    return p1
.end method

.method private b(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->g:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->removeAllViews()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getPageCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iget v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c:I

    div-int/2addr v0, v3

    add-int/2addr v0, v2

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-ne v1, v2, :cond_2

    iget v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->i:I

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->o:Landroid/animation/Animator;

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->j:I

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->p:Landroid/animation/Animator;

    :goto_1
    invoke-virtual {p0, v3, v4, v2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a(ILandroid/animation/Animator;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/g;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    add-int/2addr p1, v0

    :goto_0
    invoke-virtual {v2, p1, v1}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    goto :goto_1

    :cond_0
    mul-int/lit8 v2, v0, 0x2

    if-lt p1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private b(ILandroid/animation/Animator;I)V
    .locals 4

    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/animation/Animator;->end()V

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->e:I

    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d:I

    add-int/2addr v1, v2

    iget v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->f:I

    add-int/2addr v3, v2

    invoke-virtual {p0, v0, v1, v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->addView(Landroid/view/View;II)V

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/e;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/e;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->e:I

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->f:I

    invoke-virtual {v0, p3, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xd

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/c;->CircleIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xa

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->e:I

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->f:I

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d:I

    const/high16 p2, 0x7f020000

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->g:I

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->h:I

    const/4 v2, 0x2

    const v3, 0x7f0801e2

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->i:I

    const/4 v2, 0x3

    iget v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->i:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->j:I

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->k:I

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->l:I

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ne v2, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->setOrientation(I)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_2

    goto :goto_1

    :cond_2
    const/16 p2, 0x11

    :goto_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->setGravity(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private c(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->h:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->g:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/f;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static synthetic c(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->n:Landroid/animation/Animator;

    return-object p0
.end method

.method private c()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->removeAllViews()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c:I

    div-int/2addr v0, v2

    add-int/2addr v0, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    if-ne v1, v2, :cond_1

    iget v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->i:I

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->o:Landroid/animation/Animator;

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->j:I

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->p:Landroid/animation/Animator;

    :goto_1
    invoke-direct {p0, v3, v4, v2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b(ILandroid/animation/Animator;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b(I)V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->m:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->r:I

    return p0
.end method

.method static synthetic f(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->j:I

    return p0
.end method

.method static synthetic g(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->q:Landroid/content/Context;

    return-object p0
.end method

.method private getCurrentItem()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/g;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/g;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/g;->c(I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method private getPageCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/g;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/g;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/g;->d()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/aa;->a()I

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->i:I

    return p0
.end method

.method static synthetic i(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    return-object p0
.end method

.method static synthetic j(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b()V

    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c:I

    div-int/2addr v0, v2

    add-int/2addr v0, v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->r:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getCurrentItem()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->r:I

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c()V

    return-void
.end method

.method protected a(ILandroid/animation/Animator;I)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/animation/Animator;->end()V

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    :cond_0
    new-instance p3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->e:I

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->f:I

    invoke-virtual {p0, p3, p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->addView(Landroid/view/View;II)V

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c:I

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->r:I

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c()V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->t:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->t:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->t:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    invoke-virtual {p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getCurrentItem()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;->a(I)V

    :cond_0
    return-void
.end method

.method public getDataSetDraggableGridViewPagerObserver()Landroid/database/DataSetObserver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->v:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public getDataSetViewPagerObserver()Landroid/database/DataSetObserver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->u:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->f:I

    return v0
.end method

.method public getIndicatorMargin()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d:I

    return v0
.end method

.method public getIndicatorWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->e:I

    return v0
.end method

.method public getViewpager()Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ce;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ce;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ce;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "can not find Viewpager , setViewPager first"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->r:I

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b()V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->s:Landroid/support/v4/view/ce;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ce;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->s:Landroid/support/v4/view/ce;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ce;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->s:Landroid/support/v4/view/ce;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/support/v4/view/ce;->a(I)V

    :cond_0
    return-void
.end method
