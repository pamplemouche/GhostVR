.class public Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;
.super Landroid/view/ViewGroup;


# static fields
.field private static final a:Landroid/view/animation/Interpolator;


# instance fields
.field private A:F

.field private B:F

.field private C:I

.field private D:Landroid/view/VelocityTracker;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:J

.field private K:I

.field private L:I

.field private M:I

.field private N:J

.field private O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private P:Z

.field private Q:Landroid/widget/AdapterView$OnItemClickListener;

.field private R:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private S:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/l;

.field private final T:Ljava/lang/Runnable;

.field private U:I

.field private b:I

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

.field private m:I

.field private n:I

.field private o:Landroid/widget/Adapter;

.field private p:Landroid/content/Context;

.field private q:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Landroid/database/DataSetObserver;

.field private t:Landroid/widget/Scroller;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/h;

    invoke-direct {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/h;-><init>()V

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b:I

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->c:I

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b:I

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->c:I

    mul-int v0, v0, v1

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->r:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/i;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/i;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->s:Landroid/database/DataSetObserver;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->C:I

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->I:I

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->J:J

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->L:I

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->M:I

    iput-wide v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->N:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->O:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/j;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/j;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->T:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->U:I

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->p:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x4

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b:I

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->c:I

    iget p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b:I

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->c:I

    mul-int p2, p2, v0

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->d:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->r:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/i;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/i;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;)V

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->s:Landroid/database/DataSetObserver;

    const/4 p2, -0x1

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->C:I

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->I:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->J:J

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->L:I

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->M:I

    iput-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->N:J

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->O:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/j;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/j;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;)V

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->T:Ljava/lang/Runnable;

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->U:I

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->p:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x4

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b:I

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->c:I

    iget p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b:I

    iget p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->c:I

    mul-int p2, p2, p3

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->d:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->r:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/i;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/i;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;)V

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->s:Landroid/database/DataSetObserver;

    const/4 p2, -0x1

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->C:I

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->I:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->J:J

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->L:I

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->M:I

    iput-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->N:J

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->O:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/j;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/j;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;)V

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->T:Ljava/lang/Runnable;

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->U:I

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->p:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a()V

    return-void
.end method

.method private a(IFII)I
    .locals 1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->G:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->E:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->n:I

    if-lt p1, p3, :cond_2

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_2
    const p3, 0x3f19999a    # 0.6f

    :goto_0
    int-to-float p1, p1

    add-float/2addr p1, p2

    add-float/2addr p1, p3

    float-to-int p1, p1

    :goto_1
    return p1
.end method

.method private a(II)I
    .locals 9

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->l:I

    sub-int v1, p1, v0

    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->h:I

    iget v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->e:I

    add-int v4, v2, v3

    div-int/2addr v1, v4

    iget v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->m:I

    sub-int v5, p2, v4

    iget v6, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->i:I

    iget v7, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->f:I

    add-int v8, v6, v7

    div-int/2addr v5, v8

    const/4 v8, -0x1

    if-lt p1, v0, :cond_2

    add-int/2addr v3, v2

    mul-int v3, v3, v1

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_2

    if-lt p2, v4, :cond_2

    add-int/2addr v7, v6

    mul-int v7, v7, v5

    add-int/2addr v4, v7

    add-int/2addr v4, v6

    if-ge p2, v4, :cond_2

    if-ltz v1, :cond_2

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b:I

    if-ge v1, p1, :cond_2

    if-ltz v5, :cond_2

    iget p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->c:I

    if-lt v5, p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->n:I

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->d:I

    mul-int p2, p2, v0

    mul-int v5, v5, p1

    add-int/2addr p2, v5

    add-int/2addr p2, v1

    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildCount()I

    move-result p1

    if-lt p2, p1, :cond_1

    goto :goto_0

    :cond_1
    return p2

    :cond_2
    :goto_0
    return v8
.end method

.method private a()V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setWillNotDraw(Z)V

    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setDescendantFocusability(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->p:Landroid/content/Context;

    const v4, 0x7f070031

    invoke-static {v3, v4}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->d(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->e:I

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->p:Landroid/content/Context;

    const v4, 0x7f07002d

    invoke-static {v3, v4}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->d(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->f:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->l:I

    iput v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->m:I

    invoke-super {p0, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v0, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->t:Landroid/widget/Scroller;

    invoke-static {v1}, Landroid/support/v4/view/bq;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->x:I

    const/high16 v0, 0x43c80000    # 400.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->E:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->F:I

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->G:I

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v2, v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->H:I

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->p:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->q:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;

    return-void
.end method

.method private a(IZIZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getWidth()I

    move-result v0

    mul-int v0, v0, p1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0, v1, p3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(III)V

    if-eqz p4, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->r:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->r:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;

    invoke-interface {p3, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;->a(I)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->r:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->r:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;

    invoke-interface {p3, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;->a(I)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->scrollTo(II)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->c(I)Z

    :cond_2
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p1}, Landroid/support/v4/view/s;->a(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->C:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/s;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->y:F

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->b(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->C:I

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->D:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->c()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setScrollState(I)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->U:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->t:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->t:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->t:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->scrollTo(II)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->T:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Landroid/support/v4/view/be;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->T:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    return-void
.end method

.method private b(II)I
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(II)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->d(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->d:I

    div-int v3, v0, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getWidth()I

    move-result v4

    neg-int v4, v4

    mul-int v4, v4, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->v:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->w:Z

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->D:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->D:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private b(F)Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->y:F

    sub-float/2addr v0, p1

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->y:F

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->g:I

    add-int/lit8 v1, v1, -0x1

    mul-int v0, v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    sub-float p1, v1, p1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->j:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float p1, v1, p1

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    sub-float/2addr p1, v0

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->j:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    add-float/2addr p1, v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->y:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->y:F

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->scrollTo(II)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->c(I)Z

    const/4 p1, 0x0

    return p1
.end method

.method private c(II)I
    .locals 1

    iget p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->k:I

    if-ge p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getWidth()I

    move-result p2

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->k:I

    sub-int/2addr p2, v0

    if-lt p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private c()V
    .locals 3

    const-string v0, "[DraggableGridViewPager] dataSetChanged"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildCount()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->o:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->o:Landroid/widget/Adapter;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->o:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->removeViewAt(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private c(I)Z
    .locals 5

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->g:I

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->P:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(IFI)V

    iget-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->P:Z

    if-eqz p1, :cond_0

    return v2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getWidth()I

    move-result v0

    div-int v3, p1, v0

    mul-int v4, v3, v0

    sub-int/2addr p1, v4

    int-to-float v4, p1

    int-to-float v0, v0

    div-float/2addr v4, v0

    iput-boolean v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->P:Z

    invoke-virtual {p0, v3, v4, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(IFI)V

    iget-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->P:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(I)Landroid/graphics/Rect;
    .locals 5

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->d:I

    div-int v1, p1, v0

    rem-int v2, p1, v0

    iget v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b:I

    rem-int/2addr v2, v3

    rem-int/2addr p1, v0

    div-int/2addr p1, v3

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getWidth()I

    move-result v0

    mul-int v0, v0, v1

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->l:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->h:I

    iget v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->e:I

    add-int/2addr v3, v1

    mul-int v2, v2, v3

    add-int/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->m:I

    iget v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->i:I

    iget v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->f:I

    add-int/2addr v4, v3

    mul-int p1, p1, v4

    add-int/2addr v2, p1

    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr v1, v0

    add-int/2addr v3, v2

    invoke-direct {p1, v0, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method private d()V
    .locals 11

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x14

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->layout(IIII)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const v4, 0x3f68bac7    # 0.9091f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f68bac7    # 0.9091f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v8, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v9, v3

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v10, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v1, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->L:I

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    if-eq v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->removeViewAt(I)V

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->L:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->S:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/l;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->L:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/l;->a(II)V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->L:I

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->requestLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->invalidate()V

    :cond_2
    return-void
.end method

.method private e(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DraggableGridViewPager] onItemClick position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->Q:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b:I

    div-int v0, p1, v0

    int-to-long v5, v0

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 11

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->I:I

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const v4, 0x3f68bac7    # 0.9091f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f68bac7    # 0.9091f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v8, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v9, v3

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v10, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v1, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private f(I)Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DraggableGridViewPager] onItemLongClick position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(I)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->R:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b:I

    div-int v0, p1, v0

    int-to-long v5, v0

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private g(I)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    if-ne v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-ge v2, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-lt v0, v2, :cond_1

    if-gt v0, p1, :cond_1

    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    if-ge p1, v2, :cond_2

    if-lt v0, p1, :cond_2

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->O:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->O:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    if-ne v3, v2, :cond_4

    goto :goto_3

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DraggableGridViewPager] animateGap from="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", to="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->d(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->d(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-direct {v5, v6, v7, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    invoke-virtual {v5, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v1, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->O:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private h(I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->n:I

    if-lez v1, :cond_0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(IZ)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->n:I

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->g:I

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private i(I)V
    .locals 10

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v7, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v8, v2

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private setScrollState(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->U:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;->b(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->u:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->u:Z

    :cond_0
    return-void
.end method


# virtual methods
.method a(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double v0, v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->q:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->o:Landroid/widget/Adapter;

    invoke-interface {v1, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a(Ljava/lang/String;Landroid/view/View;I)Z

    return-void
.end method

.method protected a(IFI)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;->a(IFI)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->P:Z

    return-void
.end method

.method a(III)V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getScrollY()I

    move-result v4

    sub-int v5, p1, v3

    sub-int v6, p2, v4

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setScrollState(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setScrollState(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getWidth()I

    move-result p1

    div-int/lit8 p2, p1, 0x2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(F)F

    move-result v0

    mul-float v0, v0, p2

    add-float/2addr p2, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p1

    add-float/2addr p2, v1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    :goto_0
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->t:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroid/support/v4/view/be;->c(Landroid/view/View;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(IZZ)V

    return-void
.end method

.method a(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(IZZI)V

    return-void
.end method

.method a(IZZI)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->g:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    iget p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->n:I

    if-ne p3, p1, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getPageCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getPageCount()I

    move-result p1

    sub-int/2addr p1, p3

    :cond_3
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->n:I

    if-eq v0, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    :goto_1
    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->n:I

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(IZIZ)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getPageCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->g:I

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->p:Landroid/content/Context;

    const v1, 0x7f070030

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->d(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->h:I

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->p:Landroid/content/Context;

    const v1, 0x7f07002c

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->d(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->i:I

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->h:I

    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->j:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->k:I

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->h:I

    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b:I

    mul-int v1, v1, v2

    iget v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->e:I

    add-int/lit8 v2, v2, -0x1

    mul-int v3, v3, v2

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->l:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->d(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/View;->layout(IIII)V

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->O:Ljava/util/ArrayList;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->n:I

    if-lez p1, :cond_1

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->g:I

    if-ge p1, v1, :cond_1

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->n:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setCurrentItem(I)V

    :cond_1
    return-void
.end method

.method public b(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->t:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->t:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->t:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->t:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->scrollTo(II)V

    invoke-direct {p0, v2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->t:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->scrollTo(II)V

    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/be;->c(Landroid/view/View;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(Z)V

    return-void
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->o:Landroid/widget/Adapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    return p2
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->n:I

    return v0
.end method

.method public getPageCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->d:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->d:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->T:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->o:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->s:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_e

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->v:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->w:Z

    if-eqz v4, :cond_3

    const-string p1, "[DraggableGridViewPager] Intercept returning false!"

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    return v2

    :cond_2
    :goto_0
    const-string p1, "[DraggableGridViewPager] Intercept returning true!"

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    return v3

    :cond_3
    const/4 v4, 0x2

    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    :cond_5
    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->C:I

    if-ne v0, v1, :cond_6

    goto/16 :goto_4

    :cond_6
    invoke-static {p1, v0}, Landroid/support/v4/view/s;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->y:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v5, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->B:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DraggableGridViewPager] ***Moved to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " diff="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget v6, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->x:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_8

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v4, v4, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    const-string v4, "[DraggableGridViewPager] ***Starting drag!"

    invoke-static {v4}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->v:Z

    invoke-direct {p0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b(Z)V

    invoke-direct {p0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setScrollState(I)V

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_7

    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->A:F

    iget v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->x:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->A:F

    iget v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->x:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    :goto_1
    iput v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->y:F

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->z:F

    invoke-direct {p0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->x:I

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_9

    const-string v0, "[DraggableGridViewPager] ***Unable to drag!"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->w:Z

    :cond_9
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->v:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b(F)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/support/v4/view/be;->c(Landroid/view/View;)V

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->A:F

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->B:F

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->z:F

    invoke-static {p1, v2}, Landroid/support/v4/view/s;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->C:I

    iput-boolean v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->w:Z

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->t:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->U:I

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->t:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->t:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->H:I

    if-le v0, v4, :cond_b

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->t:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->v:Z

    invoke-direct {p0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b(Z)V

    invoke-direct {p0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setScrollState(I)V

    goto :goto_3

    :cond_b
    invoke-direct {p0, v2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(Z)V

    iput-boolean v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->v:Z

    :goto_3
    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->D:Landroid/view/VelocityTracker;

    if-nez v0, :cond_d

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->D:Landroid/view/VelocityTracker;

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->D:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->v:Z

    return p1

    :cond_e
    :goto_5
    const-string p1, "[DraggableGridViewPager] Intercept done!"

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->v:Z

    iput-boolean v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->w:Z

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->C:I

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->D:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->D:Landroid/view/VelocityTracker;

    :cond_f
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->m:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager$SavedState;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager$SavedState;->a:I

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->n:I

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->n:I

    iput v0, v1, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager$SavedState;->a:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->g:I

    if-gtz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->D:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->D:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->D:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v0, :cond_16

    if-eq v0, v4, :cond_13

    const/4 v6, 0x2

    if-eq v0, v6, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->C:I

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->c(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->y:F

    goto/16 :goto_6

    :cond_4
    invoke-static {p1}, Landroid/support/v4/view/s;->a(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->y:F

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->b(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->C:I

    goto/16 :goto_6

    :cond_5
    const-string p1, "[DraggableGridViewPager] Touch cancel!!!"

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    if-ltz p1, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->v:Z

    if-eqz p1, :cond_19

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->n:I

    invoke-direct {p0, p1, v4, v1, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(IZIZ)V

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v7, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->y:F

    sub-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->z:F

    sub-float v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->x:I

    int-to-float v10, v9

    cmpl-float v10, v7, v10

    if-gtz v10, :cond_8

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_9

    :cond_8
    iget-object v9, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->q:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;

    invoke-virtual {v9}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->b()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->q:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;

    invoke-virtual {v9}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a()V

    :cond_9
    iget v9, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    if-ltz v9, :cond_d

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getScrollX()I

    move-result v8

    float-to-int v9, v0

    add-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/2addr v10, v6

    sub-int/2addr v8, v10

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getScrollY()I

    move-result v10

    float-to-int v11, p1

    add-int/2addr v10, v11

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/2addr v12, v6

    sub-int/2addr v10, v12

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v12, v10

    invoke-virtual {v7, v8, v10, v6, v12}, Landroid/view/View;->layout(IIII)V

    iget v6, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->U:I

    if-nez v6, :cond_f

    invoke-direct {p0, v9, v11}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b(II)I

    move-result v6

    if-eq v6, v5, :cond_a

    iget v7, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->L:I

    if-eq v7, v6, :cond_a

    invoke-direct {p0, v6}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->g(I)V

    iput v6, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->L:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DraggableGridViewPager] Moved to mLastTarget="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->L:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    :cond_a
    invoke-direct {p0, v9, v11}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->c(II)I

    move-result v6

    iget v7, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->M:I

    if-ne v7, v5, :cond_b

    if-eq v6, v7, :cond_f

    iput v6, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->M:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->N:J

    goto :goto_2

    :cond_b
    if-eq v6, v7, :cond_c

    :goto_0
    iput v5, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->M:I

    goto :goto_2

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->N:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x320

    cmp-long v11, v7, v9

    if-ltz v11, :cond_f

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->performHapticFeedback(I)Z

    invoke-direct {p0, v6}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->h(I)V

    goto :goto_0

    :cond_d
    iget-boolean v6, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->v:Z

    if-nez v6, :cond_f

    iget v6, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->x:I

    int-to-float v6, v6

    cmpl-float v6, v7, v6

    if-lez v6, :cond_f

    cmpl-float v6, v7, v8

    if-lez v6, :cond_f

    const-string v6, "[DraggableGridViewPager] Starting drag!"

    invoke-static {v6}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->v:Z

    invoke-direct {p0, v4}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b(Z)V

    iget v6, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->A:F

    sub-float v7, v0, v6

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_e

    iget v7, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->x:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    goto :goto_1

    :cond_e
    iget v7, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->x:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    :goto_1
    iput v6, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->y:F

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->z:F

    invoke-direct {p0, v4}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setScrollState(I)V

    invoke-direct {p0, v4}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setScrollingCacheEnabled(Z)V

    :cond_f
    :goto_2
    iget-boolean v6, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->v:Z

    if-eqz v6, :cond_10

    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b(F)Z

    move-result p1

    or-int/2addr v1, p1

    goto/16 :goto_6

    :cond_10
    iget v6, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->I:I

    if-ltz v6, :cond_19

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(II)I

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->I:I

    if-ne p1, v0, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->J:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x12c

    cmp-long v0, v6, v8

    if-ltz v0, :cond_19

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->f(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->performHapticFeedback(I)Z

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->I:I

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    invoke-direct {p0, v4}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b(Z)V

    iput v5, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->L:I

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->d()V

    iput v5, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->I:I

    :cond_11
    iput-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->J:J

    goto/16 :goto_6

    :cond_12
    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->i(I)V

    iput v5, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->I:I

    goto/16 :goto_6

    :cond_13
    const-string v0, "[DraggableGridViewPager] Touch up!!!"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->C:I

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->d(Landroid/view/MotionEvent;I)F

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->I:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->i(I)V

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    if-ltz v0, :cond_14

    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->e()V

    goto/16 :goto_6

    :cond_14
    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->v:Z

    if-eqz v0, :cond_15

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->D:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    iget v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->F:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->C:I

    invoke-static {p1, v0}, Landroid/support/v4/view/bd;->a(Landroid/view/VelocityTracker;I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getScrollX()I

    move-result v3

    div-int v6, v3, v0

    mul-int v7, v6, v0

    sub-int/2addr v3, v7

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->A:F

    sub-float/2addr v2, v0

    float-to-int v0, v2

    invoke-direct {p0, v6, v3, p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(IFII)I

    move-result v0

    invoke-virtual {p0, v0, v4, v4, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(IZZI)V

    :goto_4
    iput v5, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->C:I

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->b()V

    goto :goto_6

    :cond_15
    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->I:I

    if-ltz v0, :cond_19

    float-to-int v0, v2

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(II)I

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->I:I

    if-ne p1, v0, :cond_19

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->e(I)V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->t:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->A:F

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->B:F

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->z:F

    invoke-static {p1, v1}, Landroid/support/v4/view/s;->b(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->C:I

    iget-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->v:Z

    if-nez p1, :cond_17

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->U:I

    if-nez p1, :cond_17

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->y:F

    float-to-int p1, p1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->z:F

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->I:I

    goto :goto_5

    :cond_17
    iput v5, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->I:I

    :goto_5
    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->I:I

    if-ltz p1, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_18
    iput-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->J:J

    iput v5, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->K:I

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->f()V

    :cond_19
    :goto_6
    if-eqz v1, :cond_1a

    invoke-static {p0}, Landroid/support/v4/view/be;->c(Landroid/view/View;)V

    :cond_1a
    return v4
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->o:Landroid/widget/Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->s:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->removeAllViews()V

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->n:I

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->scrollTo(II)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->o:Landroid/widget/Adapter;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->o:Landroid/widget/Adapter;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->s:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->o:Landroid/widget/Adapter;

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    if-ge v1, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->o:Landroid/widget/Adapter;

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(IZZ)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->Q:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->R:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnRearrangeListener(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/l;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->S:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/l;

    return-void
.end method
