.class Landroid/support/v7/widget/je;
.super Ljava/lang/Object;


# static fields
.field private static final a:J

.field private static aa:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static ab:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static ac:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static ad:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:Z

.field private C:[Ljava/lang/Object;

.field private D:Z

.field private E:I

.field private F:Z

.field private G:Landroid/support/v7/widget/ej;

.field private H:Landroid/widget/SectionIndexer;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:I

.field private M:I

.field private N:Z

.field private O:F

.field private P:J

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:F

.field private V:I

.field private W:F

.field private X:F

.field private final Y:Ljava/lang/Runnable;

.field private final Z:Landroid/animation/Animator$AnimatorListener;

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/support/v7/widget/RecyclerView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/ImageView;

.field private final i:Landroid/widget/ImageView;

.field private final j:Landroid/view/View;

.field private final k:[I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:F

.field private r:F

.field private s:I

.field private t:Landroid/animation/AnimatorSet;

.field private u:Landroid/animation/AnimatorSet;

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/support/v7/widget/je;->a:J

    new-instance v0, Landroid/support/v7/widget/jf;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/support/v7/widget/jf;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/je;->aa:Landroid/util/Property;

    new-instance v0, Landroid/support/v7/widget/jg;

    const-string v1, "top"

    invoke-direct {v0, v1}, Landroid/support/v7/widget/jg;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/je;->ab:Landroid/util/Property;

    new-instance v0, Landroid/support/v7/widget/jh;

    const-string v1, "right"

    invoke-direct {v0, v1}, Landroid/support/v7/widget/jh;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/je;->ac:Landroid/util/Property;

    new-instance v0, Landroid/support/v7/widget/ji;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ji;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/je;->ad:Landroid/util/Property;

    return-void
.end method

.method private static varargs a(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_1

    aget-object v4, p2, v1

    new-array v5, v2, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-nez v3, :cond_0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static a(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private a(F)V
    .locals 12

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/je;->w:Z

    iget-object v1, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/ej;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ej;->a()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/je;->C:[Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    array-length v3, v2

    :goto_0
    if-eqz v2, :cond_9

    if-lez v3, :cond_9

    int-to-float v2, v3

    mul-float v4, p1, v2

    float-to-int v4, v4

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v0, v5}, Landroid/support/v4/g/a;->a(III)I

    move-result v4

    iget-object v6, p0, Landroid/support/v7/widget/je;->H:Landroid/widget/SectionIndexer;

    invoke-interface {v6, v4}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/je;->H:Landroid/widget/SectionIndexer;

    invoke-interface {v5, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-ne v5, v6, :cond_5

    move v8, v4

    move v9, v6

    :cond_2
    if-lez v8, :cond_4

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Landroid/support/v7/widget/je;->H:Landroid/widget/SectionIndexer;

    invoke-interface {v9, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    if-eq v9, v6, :cond_3

    goto :goto_2

    :cond_3
    if-nez v8, :cond_2

    move v8, v4

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    move v6, v4

    move v8, v6

    goto :goto_3

    :cond_5
    move v8, v4

    move v9, v6

    :goto_2
    move v6, v8

    :goto_3
    add-int/lit8 v10, v7, 0x1

    :goto_4
    if-ge v10, v3, :cond_6

    iget-object v11, p0, Landroid/support/v7/widget/je;->H:Landroid/widget/SectionIndexer;

    invoke-interface {v11, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    if-ne v11, v5, :cond_6

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    int-to-float v3, v8

    div-float/2addr v3, v2

    int-to-float v7, v7

    div-float/2addr v7, v2

    if-nez v1, :cond_7

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_5

    :cond_7
    const/high16 v2, 0x3e000000    # 0.125f

    int-to-float v10, v1

    div-float/2addr v2, v10

    :goto_5
    if-ne v8, v4, :cond_8

    sub-float v4, p1, v3

    cmpg-float v2, v4, v2

    if-gez v2, :cond_8

    goto :goto_6

    :cond_8
    sub-int/2addr v5, v9

    int-to-float v2, v5

    sub-float v4, p1, v3

    mul-float v2, v2, v4

    sub-float/2addr v7, v3

    div-float/2addr v2, v7

    float-to-int v2, v2

    add-int/2addr v9, v2

    :goto_6
    add-int/lit8 v1, v1, -0x1

    invoke-static {v9, v0, v1}, Landroid/support/v4/g/a;->a(III)I

    move-result v1

    goto :goto_7

    :cond_9
    int-to-float v2, v1

    mul-float v2, v2, p1

    float-to-int v2, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v0, v1}, Landroid/support/v4/g/a;->a(III)I

    move-result v1

    const/4 v6, -0x1

    :goto_7
    iget-object v2, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    instance-of v2, v2, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    iget v3, p0, Landroid/support/v7/widget/je;->y:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)V

    goto :goto_8

    :cond_a
    iget-object v2, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget v3, p0, Landroid/support/v7/widget/je;->y:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(II)V

    :goto_8
    iget-object v0, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->F()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/ej;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/ej;->a()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/je;->a(III)V

    iput v6, p0, Landroid/support/v7/widget/je;->z:I

    invoke-direct {p0, v6}, Landroid/support/v7/widget/je;->d(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollTo() called transitionPreviewLayout() sectionIndex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SeslFastScroller"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Landroid/support/v7/widget/je;->F:Z

    if-nez p1, :cond_b

    if-eqz v0, :cond_b

    invoke-direct {p0}, Landroid/support/v7/widget/je;->p()V

    goto :goto_9

    :cond_b
    iget-boolean p1, p0, Landroid/support/v7/widget/je;->F:Z

    if-eqz p1, :cond_c

    if-nez v0, :cond_c

    invoke-direct {p0}, Landroid/support/v7/widget/je;->o()V

    :cond_c
    :goto_9
    return-void
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-boolean v0, p0, Landroid/support/v7/widget/je;->I:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/je;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v1, v4, v1

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v1, -0x80000000

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v0}, Landroid/support/v4/view/ay;->a(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 p2, p2, 0xa

    add-int/2addr p2, v2

    iget v1, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, p2

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    iget v1, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    add-int/2addr v0, v4

    invoke-virtual {p3, v4, p2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    iget-boolean p3, p0, Landroid/support/v7/widget/je;->I:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    iget p3, p0, Landroid/support/v7/widget/je;->m:I

    goto :goto_0

    :cond_0
    iget p3, p0, Landroid/support/v7/widget/je;->l:I

    :goto_0
    move v1, p3

    const/4 p3, 0x0

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    iget p3, p0, Landroid/support/v7/widget/je;->m:I

    goto :goto_1

    :cond_2
    iget p3, p0, Landroid/support/v7/widget/je;->l:I

    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/support/v7/widget/je;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    iget-boolean v4, p0, Landroid/support/v7/widget/je;->I:Z

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v3, p3

    sub-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v5, -0x80000000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v4, v0}, Landroid/support/v4/view/ay;->a(II)I

    move-result v4

    invoke-virtual {p1, v5, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-boolean v4, p0, Landroid/support/v7/widget/je;->I:Z

    if-eqz v4, :cond_6

    if-nez p2, :cond_5

    iget p2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    :goto_4
    sub-int/2addr p2, v1

    sub-int p3, p2, v3

    goto :goto_6

    :cond_6
    if-nez p2, :cond_7

    iget p2, v2, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    :goto_5
    add-int/2addr p3, p2

    add-int p2, p3, v3

    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p4, p3, v0, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/je;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/je;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v7/widget/je;->c(I)V

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/je;->E:I

    if-ne v0, v1, :cond_1

    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/je;->q()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    invoke-direct {p0, v1}, Landroid/support/v7/widget/je;->c(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/je;->c()V

    :cond_3
    :goto_1
    iget-object p1, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1}, Landroid/support/v4/view/as;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private a(FF)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/je;->d(F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Landroid/support/v7/widget/je;->e(F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/support/v7/widget/je;->E:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(III)F
    .locals 9

    iget-object v0, p0, Landroid/support/v7/widget/je;->H:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/je;->G:Landroid/support/v7/widget/ej;

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/je;->r()V

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_10

    if-nez p3, :cond_2

    goto/16 :goto_8

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/je;->C:[Ljava/lang/Object;

    if-eqz v4, :cond_3

    array-length v4, v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Landroid/support/v7/widget/je;->N:Z

    if-nez v4, :cond_4

    goto/16 :goto_7

    :cond_4
    iget v4, p0, Landroid/support/v7/widget/je;->y:I

    sub-int/2addr p1, v4

    if-gez p1, :cond_5

    return v1

    :cond_5
    sub-int/2addr p3, v4

    iget-object v4, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    iget-object v4, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v4, v2

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/je;->C:[Ljava/lang/Object;

    array-length v7, v7

    add-int/lit8 v8, v7, -0x1

    if-ge v4, v8, :cond_9

    add-int/lit8 v8, v4, 0x1

    if-ge v8, v7, :cond_8

    invoke-interface {v0, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_3

    :cond_8
    add-int/lit8 v0, p3, -0x1

    :goto_3
    sub-int/2addr v0, v6

    goto :goto_4

    :cond_9
    sub-int v0, p3, v6

    :goto_4
    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    int-to-float v1, p1

    add-float/2addr v1, v2

    int-to-float v2, v6

    sub-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    :goto_5
    int-to-float v0, v4

    add-float/2addr v0, v1

    int-to-float v1, v7

    div-float/2addr v0, v1

    if-lez p1, :cond_c

    add-int/2addr p1, p2

    if-ne p1, p3, :cond_c

    iget-object p1, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    sub-int/2addr p2, v3

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result p2

    iget-object p3, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getClipToPadding()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    iget-object v1, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v1, p1

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p3, p2

    iget-object p2, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int v1, p2, p1

    :goto_6
    if-lez v1, :cond_c

    if-lez p3, :cond_c

    sub-float/2addr v5, v0

    int-to-float p1, v1

    int-to-float p2, p3

    div-float/2addr p1, p2

    mul-float v5, v5, p1

    add-float/2addr v0, v5

    :cond_c
    return v0

    :cond_d
    :goto_7
    if-ne p2, p3, :cond_f

    iget-object p2, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    instance-of p2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_e

    if-eqz p1, :cond_e

    iget-object p1, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/kh;

    invoke-virtual {p1}, Landroid/support/v7/widget/kh;->a()Z

    move-result p1

    if-eqz p1, :cond_e

    return v5

    :cond_e
    return v1

    :cond_f
    int-to-float p1, p1

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    return p1

    :cond_10
    :goto_8
    return v1
.end method

.method private static b(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private b(F)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/je;->d:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v3

    if-lez v4, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    cmpg-float v3, p1, v2

    if-gez v3, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/je;->r:F

    mul-float p1, p1, v2

    iget v2, p0, Landroid/support/v7/widget/je;->q:F

    add-float/2addr p1, v2

    iget-object v2, p0, Landroid/support/v7/widget/je;->h:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v2, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    int-to-float v1, v1

    add-float/2addr v1, v3

    int-to-float v0, v0

    sub-float/2addr v0, v3

    invoke-static {p1, v1, v0}, Landroid/support/v4/g/a;->a(FFF)F

    move-result p1

    sub-float/2addr p1, v3

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroid/support/v7/widget/je;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Landroid/support/v7/widget/je;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method private b(II)V
    .locals 1

    const/4 p2, 0x1

    if-lez p1, :cond_1

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/je;->b(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/je;->b(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/je;->B:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Landroid/support/v7/widget/je;->B:Z

    invoke-direct {p0, p2}, Landroid/support/v7/widget/je;->a(Z)V

    :cond_2
    return-void
.end method

.method private b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/je;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/support/v7/widget/je;->L:I

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/je;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/je;->h:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/support/v7/widget/je;->a(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private c(F)F
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/je;->r:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return v1

    :cond_0
    iget v2, p0, Landroid/support/v7/widget/je;->q:F

    sub-float/2addr p1, v2

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0}, Landroid/support/v4/g/a;->a(FFF)F

    move-result p1

    return p1
.end method

.method private static c(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Landroid/support/v7/widget/je;->aa:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Landroid/support/v7/widget/je;->ab:Landroid/util/Property;

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    aput v4, v3, v5

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v7/widget/je;->ac:Landroid/util/Property;

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    aput v4, v3, v5

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/v7/widget/je;->ad:Landroid/util/Property;

    new-array v2, v2, [I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    aput p1, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private c(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/je;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Landroid/support/v7/widget/je;->K:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/je;->E:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/je;->z:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/je;->d(I)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/je;->o()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/je;->n()V

    :goto_0
    iput p1, p0, Landroid/support/v7/widget/je;->E:I

    invoke-direct {p0}, Landroid/support/v7/widget/je;->m()V

    return-void
.end method

.method private d(F)Z
    .locals 4

    iget-boolean v0, p0, Landroid/support/v7/widget/je;->I:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/je;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/support/v7/widget/je;->X:F

    sub-float/2addr v0, v3

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/je;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/support/v7/widget/je;->X:F

    add-float/2addr v0, v3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private d(I)Z
    .locals 12

    iget-object v0, p0, Landroid/support/v7/widget/je;->C:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/je;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    iget-boolean v2, p0, Landroid/support/v7/widget/je;->v:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/je;->f:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/widget/je;->g:Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/je;->g:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/widget/je;->f:Landroid/widget/TextView;

    :goto_1
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/je;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/je;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v4, p0, Landroid/support/v7/widget/je;->E:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-ne v4, v6, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :cond_3
    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/je;->u:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Landroid/support/v7/widget/je;->b(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    const/4 v9, 0x0

    invoke-static {v2, v9}, Landroid/support/v7/widget/je;->b(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v7/widget/je;->Z:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v8, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v8, v10

    iput v8, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    sub-int/2addr v8, v10

    iput v8, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    add-int/2addr v8, v10

    iput v8, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v8, v10

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v0}, Landroid/support/v7/widget/je;->c(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v10, 0x64

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Landroid/support/v7/widget/je;->u:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Landroid/support/v7/widget/je;->u:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v0, v7

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_5

    int-to-float v0, v0

    int-to-float v7, v1

    div-float/2addr v0, v7

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setScaleX(F)V

    invoke-static {v3, v4}, Landroid/support/v7/widget/je;->a(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setScaleX(F)V

    :goto_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-le v0, v1, :cond_6

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-static {v2, v1}, Landroid/support/v7/widget/je;->a(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/je;->u:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v9, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/support/v7/widget/je;->u:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1
.end method

.method private e(F)Z
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/je;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/je;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Landroid/support/v7/widget/je;->h:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private i()V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/as;->a(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Landroid/support/v7/widget/je;->d:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/widget/je;->M:I

    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_2

    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v4, v0

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/je;->d()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/je;->A:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_0
    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/je;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/je;->h:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/support/v7/widget/je;->a(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/v7/widget/je;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/je;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method private k()V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/je;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/widget/je;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/widget/je;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, v4}, Landroid/support/v4/view/ay;->a(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    iget v3, p0, Landroid/support/v7/widget/je;->p:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/support/v7/widget/je;->n:I

    add-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/support/v7/widget/je;->n:I

    sub-int/2addr v2, v4

    iget v4, p0, Landroid/support/v7/widget/je;->o:I

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    iget v5, p0, Landroid/support/v7/widget/je;->n:I

    add-int/2addr v4, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/je;->n:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/je;->o:I

    sub-int/2addr v2, v3

    move v3, v4

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/je;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/widget/je;->h:Landroid/widget/ImageView;

    iget v2, p0, Landroid/support/v7/widget/je;->p:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v2, p0, Landroid/support/v7/widget/je;->q:F

    sub-float/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/je;->r:F

    return-void
.end method

.method private m()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/je;->E:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/je;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/je;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void
.end method

.method private n()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transitionToHidden() mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/je;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslFastScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/je;->F:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/je;->z:I

    iget-object v1, p0, Landroid/support/v7/widget/je;->t:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const/16 v1, 0xa7

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/widget/je;->h:Landroid/widget/ImageView;

    aput-object v4, v3, v0

    iget-object v4, p0, Landroid/support/v7/widget/je;->i:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v6, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget-object v6, p0, Landroid/support/v7/widget/je;->f:Landroid/widget/TextView;

    aput-object v6, v3, v4

    const/4 v4, 0x4

    iget-object v6, p0, Landroid/support/v7/widget/je;->g:Landroid/widget/TextView;

    aput-object v6, v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/support/v7/widget/je;->a(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/je;->t:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Landroid/support/v7/widget/je;->t:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Landroid/support/v7/widget/je;->t:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/support/v7/widget/je;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private o()V
    .locals 10

    const-string v0, "SeslFastScroller"

    const-string v1, "transitionToVisible()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v7/widget/je;->t:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/je;->h:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/support/v7/widget/je;->i:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v2}, Landroid/support/v7/widget/je;->a(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v6, 0xa7

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/view/View;

    iget-object v9, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    aput-object v9, v8, v4

    iget-object v9, p0, Landroid/support/v7/widget/je;->f:Landroid/widget/TextView;

    aput-object v9, v8, v5

    iget-object v9, p0, Landroid/support/v7/widget/je;->g:Landroid/widget/TextView;

    aput-object v9, v8, v1

    const/4 v9, 0x0

    invoke-static {v2, v9, v8}, Landroid/support/v7/widget/je;->a(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Landroid/support/v7/widget/je;->t:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Landroid/support/v7/widget/je;->t:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    aput-object v2, v1, v5

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Landroid/support/v7/widget/je;->t:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v9, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-boolean v4, p0, Landroid/support/v7/widget/je;->F:Z

    iget-object v0, p0, Landroid/support/v7/widget/je;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private p()V
    .locals 7

    const-string v0, "SeslFastScroller"

    const-string v1, "transitionToDragging()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v7/widget/je;->t:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/je;->h:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/support/v7/widget/je;->i:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v5, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    aput-object v5, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Landroid/support/v7/widget/je;->a(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v5, 0xa7

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/je;->t:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/support/v7/widget/je;->t:Landroid/animation/AnimatorSet;

    new-array v5, v4, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Landroid/support/v7/widget/je;->t:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {v1, v3, v5, v6, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/support/v7/widget/je;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v4, p0, Landroid/support/v7/widget/je;->F:Z

    return-void
.end method

.method private q()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/je;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/je;->Y:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private r()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/je;->H:Landroid/widget/SectionIndexer;

    iget-object v1, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/ej;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_0

    iput-object v1, p0, Landroid/support/v7/widget/je;->G:Landroid/support/v7/widget/ej;

    check-cast v1, Landroid/widget/SectionIndexer;

    iput-object v1, p0, Landroid/support/v7/widget/je;->H:Landroid/widget/SectionIndexer;

    iget-object v0, p0, Landroid/support/v7/widget/je;->H:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/je;->C:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroid/support/v7/widget/je;->G:Landroid/support/v7/widget/ej;

    iput-object v0, p0, Landroid/support/v7/widget/je;->C:[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private s()V
    .locals 8

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private t()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/je;->P:J

    return-void
.end method

.method private u()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/support/v7/widget/je;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/je;->P:J

    return-void
.end method

.method private v()V
    .locals 2

    const-string v0, "SeslFastScroller"

    const-string v1, "beginDrag() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/je;->P:J

    iget-object v0, p0, Landroid/support/v7/widget/je;->G:Landroid/support/v7/widget/ej;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/je;->r()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/je;->s()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v7/widget/je;->c(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    invoke-virtual {p1}, Landroid/support/v7/widget/et;->t()I

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :cond_1
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/je;->A:I

    if-eq v1, p1, :cond_3

    iput p1, p0, Landroid/support/v7/widget/je;->A:I

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/je;->I:Z

    iget-object p1, p0, Landroid/support/v7/widget/je;->k:[I

    iget-boolean v0, p0, Landroid/support/v7/widget/je;->I:Z

    aget p1, p1, v0

    iget-object v0, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Landroid/support/v7/widget/je;->T:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/je;->g()V

    :cond_3
    return-void
.end method

.method public a(II)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/je;->R:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/support/v7/widget/je;->S:I

    if-eq v0, p1, :cond_3

    :cond_0
    iput p2, p0, Landroid/support/v7/widget/je;->R:I

    iput p1, p0, Landroid/support/v7/widget/je;->S:I

    sub-int v0, p2, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/je;->E:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->F()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v7/widget/je;->b(III)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/je;->b(F)V

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/je;->b(II)V

    :cond_3
    return-void
.end method

.method public a(III)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/v7/widget/je;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/je;->c(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/je;->b(I)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/je;->b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/je;->E:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Landroid/support/v7/widget/je;->W:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Landroid/support/v7/widget/je;->b(F)V

    iput v3, p0, Landroid/support/v7/widget/je;->W:F

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/je;->b(III)F

    move-result p2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/je;->b(F)V

    :cond_3
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/je;->w:Z

    iget p2, p0, Landroid/support/v7/widget/je;->x:I

    if-eq p2, p1, :cond_4

    iput p1, p0, Landroid/support/v7/widget/je;->x:I

    iget p1, p0, Landroid/support/v7/widget/je;->E:I

    if-eq p1, v2, :cond_4

    invoke-direct {p0, v0}, Landroid/support/v7/widget/je;->c(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/je;->q()V

    :cond_4
    return-void
.end method

.method public a(IIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/widget/je;->g()V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/je;->J:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/je;->B:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/je;->K:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/widget/je;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string v2, "SeslFastScroller"

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/je;->a(FF)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v3, p0, Landroid/support/v7/widget/je;->P:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_6

    invoke-direct {p0}, Landroid/support/v7/widget/je;->v()V

    iget v0, p0, Landroid/support/v7/widget/je;->O:F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/je;->c(F)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/je;->W:F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/je;->a(F)V

    const-string v0, "onInterceptTouchEvent() ACTION_MOVE pendingdrag open()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/je;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/je;->t()V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterceptTouchEvent() ACTION_DOWN ev.getY() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/je;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->D()Z

    move-result v0

    if-nez v0, :cond_5

    return v3

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/je;->O:F

    invoke-direct {p0}, Landroid/support/v7/widget/je;->u()V

    :cond_6
    :goto_1
    return v1
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/je;->K:Z

    return v0
.end method

.method public b(I)Z
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->F()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    const/4 v4, 0x1

    if-lez p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p1, v5}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr v2, v0

    iget-object v0, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/ej;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ej;->a()I

    move-result v0

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-gtz v2, :cond_4

    iget v0, v3, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/je;->d:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Landroid/support/v7/widget/je;->i:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v0, Landroid/support/v7/widget/je;->U:F

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/je;->a()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const-string v7, "SeslFastScroller"

    const/4 v8, 0x1

    if-eqz v5, :cond_d

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x2

    if-eq v5, v8, :cond_b

    if-eq v5, v12, :cond_3

    const/4 v1, 0x3

    if-eq v5, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/je;->t()V

    iget v1, v0, Landroid/support/v7/widget/je;->E:I

    if-ne v1, v12, :cond_2

    invoke-direct {v0, v6}, Landroid/support/v7/widget/je;->c(I)V

    :cond_2
    iput v6, v0, Landroid/support/v7/widget/je;->V:I

    iput v9, v0, Landroid/support/v7/widget/je;->U:F

    goto/16 :goto_2

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent() ACTION_MOVE.. mState= "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroid/support/v7/widget/je;->E:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mInitialTouchY="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroid/support/v7/widget/je;->O:F

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v13, v0, Landroid/support/v7/widget/je;->P:J

    const-string v5, ", max="

    const-string v9, ", min="

    cmp-long v15, v13, v10

    if-ltz v15, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget v11, v0, Landroid/support/v7/widget/je;->O:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v0, Landroid/support/v7/widget/je;->Q:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/je;->v()V

    iget v10, v0, Landroid/support/v7/widget/je;->U:F

    int-to-float v11, v2

    cmpl-float v13, v10, v11

    if-lez v13, :cond_6

    int-to-float v13, v1

    cmpg-float v10, v10, v13

    if-gez v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onTouchEvent() ACTION_MOVE 1 mScrollY="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Landroid/support/v7/widget/je;->U:F

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, v0, Landroid/support/v7/widget/je;->U:F

    add-float/2addr v11, v4

    cmpg-float v13, v10, v11

    if-gez v13, :cond_4

    iput v11, v0, Landroid/support/v7/widget/je;->U:F

    goto :goto_0

    :cond_4
    cmpl-float v10, v10, v3

    if-lez v10, :cond_5

    iput v3, v0, Landroid/support/v7/widget/je;->U:F

    :cond_5
    :goto_0
    iput v8, v0, Landroid/support/v7/widget/je;->V:I

    :cond_6
    iget v10, v0, Landroid/support/v7/widget/je;->E:I

    if-ne v10, v12, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v0, v6}, Landroid/support/v7/widget/je;->c(F)F

    move-result v6

    iput v6, v0, Landroid/support/v7/widget/je;->W:F

    invoke-direct {v0, v6}, Landroid/support/v7/widget/je;->b(F)V

    iget-boolean v10, v0, Landroid/support/v7/widget/je;->w:Z

    if-eqz v10, :cond_7

    invoke-direct {v0, v6}, Landroid/support/v7/widget/je;->a(F)V

    :cond_7
    iget v6, v0, Landroid/support/v7/widget/je;->U:F

    int-to-float v2, v2

    cmpl-float v10, v6, v2

    if-lez v10, :cond_a

    int-to-float v1, v1

    cmpg-float v1, v6, v1

    if-gez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent() ACTION_MOVE 2 mScrollY="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/support/v7/widget/je;->U:F

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/support/v7/widget/je;->U:F

    add-float/2addr v2, v4

    cmpg-float v4, v1, v2

    if-gez v4, :cond_8

    iput v2, v0, Landroid/support/v7/widget/je;->U:F

    goto :goto_1

    :cond_8
    cmpl-float v1, v1, v3

    if-lez v1, :cond_9

    iput v3, v0, Landroid/support/v7/widget/je;->U:F

    :cond_9
    :goto_1
    iput v8, v0, Landroid/support/v7/widget/je;->V:I

    :cond_a
    return v8

    :cond_b
    iget-wide v1, v0, Landroid/support/v7/widget/je;->P:J

    cmp-long v3, v1, v10

    if-ltz v3, :cond_c

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/je;->v()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/je;->c(F)F

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/je;->W:F

    invoke-direct {v0, v1}, Landroid/support/v7/widget/je;->b(F)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/je;->a(F)V

    iput v8, v0, Landroid/support/v7/widget/je;->V:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent() ACTION_UP.. open() called with posY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget v1, v0, Landroid/support/v7/widget/je;->E:I

    if-ne v1, v12, :cond_e

    iget-object v1, v0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {v0, v8}, Landroid/support/v7/widget/je;->c(I)V

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/je;->q()V

    iput v6, v0, Landroid/support/v7/widget/je;->V:I

    iput v9, v0, Landroid/support/v7/widget/je;->U:F

    return v8

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/je;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Landroid/support/v7/widget/je;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->D()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/je;->v()V

    iput v8, v0, Landroid/support/v7/widget/je;->V:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent() ACTION_DOWN.. open() called with posY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_e
    :goto_2
    return v6
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/je;->c(I)V

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/je;->s:I

    return v0
.end method

.method e()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/je;->V:I

    return v0
.end method

.method f()F
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/je;->U:F

    return v0
.end method

.method public g()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/widget/je;->D:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/je;->D:Z

    invoke-direct {p0}, Landroid/support/v7/widget/je;->i()V

    invoke-direct {p0}, Landroid/support/v7/widget/je;->j()V

    invoke-direct {p0}, Landroid/support/v7/widget/je;->k()V

    invoke-direct {p0}, Landroid/support/v7/widget/je;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/je;->D:Z

    iget-object v0, p0, Landroid/support/v7/widget/je;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/je;->f:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/je;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/v7/widget/je;->f:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/je;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/v7/widget/je;->g:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/je;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/v7/widget/je;->g:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/je;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/support/v7/widget/je;->j:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/je;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/je;->G:Landroid/support/v7/widget/ej;

    return-void
.end method
