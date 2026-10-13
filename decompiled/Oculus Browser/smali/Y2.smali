.class public final LY2;
.super LH2;
.source "PG"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static Y:Z = false

.field public static Z:Ljava/lang/reflect/Field;

.field public static final a0:Landroid/view/animation/Interpolator;

.field public static final b0:Landroid/view/animation/Interpolator;


# instance fields
.field public A:Landroid/util/SparseArray;

.field public B:Ljava/util/ArrayList;

.field public C:Ljava/util/ArrayList;

.field public D:Ljava/util/ArrayList;

.field public E:Ljava/util/ArrayList;

.field public final F:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public G:I

.field public H:LG2;

.field public I:LE2;

.field public J:Lz2;

.field public K:Lz2;

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Ljava/util/ArrayList;

.field public R:Ljava/util/ArrayList;

.field public S:Ljava/util/ArrayList;

.field public T:Landroid/os/Bundle;

.field public U:Landroid/util/SparseArray;

.field public V:Ljava/util/ArrayList;

.field public W:LZ2;

.field public X:Ljava/lang/Runnable;

.field public w:Ljava/util/ArrayList;

.field public x:Z

.field public y:I

.field public final z:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, LY2;->a0:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, LY2;->b0:Landroid/view/animation/Interpolator;

    .line 3
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 4
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LH2;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LY2;->y:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    .line 4
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, LY2;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    iput v0, p0, LY2;->G:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, LY2;->T:Landroid/os/Bundle;

    .line 7
    iput-object v0, p0, LY2;->U:Landroid/util/SparseArray;

    .line 8
    new-instance v0, LI2;

    invoke-direct {v0, p0}, LI2;-><init>(LY2;)V

    iput-object v0, p0, LY2;->X:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Landroid/content/Context;FFFF)LQ2;
    .locals 10

    .line 106
    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 107
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 108
    sget-object p1, LY2;->a0:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p1, 0xdc

    .line 109
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 110
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 111
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 112
    sget-object p3, LY2;->b0:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 113
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 114
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 115
    new-instance p1, LQ2;

    invoke-direct {p1, p0}, LQ2;-><init>(Landroid/view/animation/Animation;)V

    return-object p1
.end method

.method public static a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 3

    const-string v0, "FragmentManager"

    .line 165
    :try_start_0
    sget-object v1, LY2;->Z:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 166
    const-class v1, Landroid/view/animation/Animation;

    const-string v2, "mListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, LY2;->Z:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 168
    :cond_0
    sget-object v1, LY2;->Z:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation$AnimationListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "Cannot access Animation\'s mListener field"

    .line 169
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v1, "No field with the name mListener is found in Animation class"

    .line 170
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static a(LZ2;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, LZ2;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2;

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Lz2;->Z:Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, LZ2;->b:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZ2;

    .line 6
    invoke-static {v0}, LY2;->a(LZ2;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static a(Landroid/view/View;LQ2;)V
    .locals 5

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_4

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 17
    invoke-static {p0}, LA7;->r(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p1, LQ2;->a:Landroid/view/animation/Animation;

    instance-of v3, v0, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    instance-of v3, v0, Landroid/view/animation/AnimationSet;

    if-eqz v3, :cond_4

    .line 20
    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 22
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/view/animation/AlphaAnimation;

    if-eqz v4, :cond_2

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 23
    :cond_4
    iget-object v0, p1, LQ2;->b:Landroid/animation/Animator;

    invoke-static {v0}, LY2;->a(Landroid/animation/Animator;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    .line 24
    iget-object v0, p1, LQ2;->b:Landroid/animation/Animator;

    if-eqz v0, :cond_6

    .line 25
    new-instance p1, LR2;

    invoke-direct {p1, p0}, LR2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    .line 26
    :cond_6
    iget-object v0, p1, LQ2;->a:Landroid/view/animation/Animation;

    invoke-static {v0}, LY2;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 27
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 28
    iget-object p1, p1, LQ2;->a:Landroid/view/animation/Animation;

    new-instance v1, LO2;

    invoke-direct {v1, p0, v0}, LO2;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public static a(Landroid/animation/Animator;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 7
    :cond_0
    instance-of v1, p0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 8
    check-cast p0, Landroid/animation/ValueAnimator;

    .line 9
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const/4 v1, 0x0

    .line 10
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 11
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "alpha"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    .line 13
    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    .line 14
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 15
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v3}, LY2;->a(Landroid/animation/Animator;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public static d(I)I
    .locals 3

    const/16 v0, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1001

    goto :goto_0

    :cond_1
    const/16 v0, 0x1003

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lq2;)I
    .locals 2

    .line 528
    monitor-enter p0

    .line 529
    :try_start_0
    iget-object v0, p0, LY2;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, LY2;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    iget-object v0, p0, LY2;->E:Ljava/util/ArrayList;

    iget-object v1, p0, LY2;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 531
    iget-object v1, p0, LY2;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 532
    monitor-exit p0

    return v0

    .line 533
    :cond_1
    :goto_0
    iget-object v0, p0, LY2;->D:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LY2;->D:Ljava/util/ArrayList;

    .line 535
    :cond_2
    iget-object v0, p0, LY2;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 536
    iget-object v1, p0, LY2;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 538
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lz2;IZI)LQ2;
    .locals 6

    .line 116
    invoke-virtual {p1}, Lz2;->s()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 117
    iget-object v2, p0, LY2;->H:LG2;

    .line 118
    iget-object v2, v2, LG2;->b:Landroid/content/Context;

    .line 119
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "anim"

    .line 120
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    :try_start_0
    iget-object v3, p0, LY2;->H:LG2;

    .line 122
    iget-object v3, v3, LG2;->b:Landroid/content/Context;

    .line 123
    invoke-static {v3, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 124
    new-instance v4, LQ2;

    invoke-direct {v4, v3}, LQ2;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v4

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    throw p1

    :catch_1
    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 126
    :try_start_1
    iget-object v3, p0, LY2;->H:LG2;

    .line 127
    iget-object v3, v3, LG2;->b:Landroid/content/Context;

    .line 128
    invoke-static {v3, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 129
    new-instance v4, LQ2;

    invoke-direct {v4, v3}, LQ2;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v4

    :catch_2
    move-exception v3

    if-nez v2, :cond_2

    .line 130
    iget-object v2, p0, LY2;->H:LG2;

    .line 131
    iget-object v2, v2, LG2;->b:Landroid/content/Context;

    .line 132
    invoke-static {v2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 133
    new-instance p2, LQ2;

    invoke-direct {p2, p1}, LQ2;-><init>(Landroid/view/animation/Animation;)V

    return-object p2

    .line 134
    :cond_2
    throw v3

    :cond_3
    const/4 p1, 0x0

    if-nez p2, :cond_4

    return-object p1

    :cond_4
    const/16 v2, 0x1001

    if-eq p2, v2, :cond_9

    const/16 v2, 0x1003

    if-eq p2, v2, :cond_7

    const/16 v2, 0x2002

    if-eq p2, v2, :cond_5

    const/4 p2, -0x1

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    const/4 p2, 0x3

    goto :goto_1

    :cond_6
    const/4 p2, 0x4

    goto :goto_1

    :cond_7
    if-eqz p3, :cond_8

    const/4 p2, 0x5

    goto :goto_1

    :cond_8
    const/4 p2, 0x6

    goto :goto_1

    :cond_9
    if-eqz p3, :cond_a

    const/4 p2, 0x1

    goto :goto_1

    :cond_a
    const/4 p2, 0x2

    :goto_1
    if-gez p2, :cond_b

    return-object p1

    :cond_b
    const-wide/16 v2, 0xdc

    const p3, 0x3f79999a    # 0.975f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    packed-switch p2, :pswitch_data_0

    if-nez p4, :cond_e

    .line 135
    iget-object p2, p0, LY2;->H:LG2;

    goto :goto_2

    .line 136
    :pswitch_0
    iget-object p1, p0, LY2;->H:LG2;

    .line 137
    iget-object p1, p1, LG2;->b:Landroid/content/Context;

    .line 138
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 139
    sget-object p2, LY2;->b0:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 140
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 141
    new-instance p2, LQ2;

    invoke-direct {p2, p1}, LQ2;-><init>(Landroid/view/animation/Animation;)V

    return-object p2

    .line 142
    :pswitch_1
    iget-object p1, p0, LY2;->H:LG2;

    .line 143
    iget-object p1, p1, LG2;->b:Landroid/content/Context;

    .line 144
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 145
    sget-object p2, LY2;->b0:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 146
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 147
    new-instance p2, LQ2;

    invoke-direct {p2, p1}, LQ2;-><init>(Landroid/view/animation/Animation;)V

    return-object p2

    .line 148
    :pswitch_2
    iget-object p1, p0, LY2;->H:LG2;

    .line 149
    iget-object p1, p1, LG2;->b:Landroid/content/Context;

    const p2, 0x3f89999a    # 1.075f

    .line 150
    invoke-static {p1, v5, p2, v5, v4}, LY2;->a(Landroid/content/Context;FFFF)LQ2;

    move-result-object p1

    return-object p1

    .line 151
    :pswitch_3
    iget-object p1, p0, LY2;->H:LG2;

    .line 152
    iget-object p1, p1, LG2;->b:Landroid/content/Context;

    .line 153
    invoke-static {p1, p3, v5, v4, v5}, LY2;->a(Landroid/content/Context;FFFF)LQ2;

    move-result-object p1

    return-object p1

    .line 154
    :pswitch_4
    iget-object p1, p0, LY2;->H:LG2;

    .line 155
    iget-object p1, p1, LG2;->b:Landroid/content/Context;

    .line 156
    invoke-static {p1, v5, p3, v5, v4}, LY2;->a(Landroid/content/Context;FFFF)LQ2;

    move-result-object p1

    return-object p1

    .line 157
    :pswitch_5
    iget-object p1, p0, LY2;->H:LG2;

    .line 158
    iget-object p1, p1, LG2;->b:Landroid/content/Context;

    const/high16 p2, 0x3f900000    # 1.125f

    .line 159
    invoke-static {p1, p2, v5, v4, v5}, LY2;->a(Landroid/content/Context;FFFF)LQ2;

    move-result-object p1

    return-object p1

    .line 160
    :goto_2
    check-cast p2, LB2;

    .line 161
    iget-object p2, p2, LB2;->e:LD2;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_c

    const/4 v0, 0x1

    :cond_c
    if-eqz v0, :cond_e

    .line 162
    iget-object p2, p0, LY2;->H:LG2;

    check-cast p2, LB2;

    .line 163
    iget-object p2, p2, LB2;->e:LD2;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-nez p2, :cond_d

    goto :goto_3

    .line 164
    :cond_d
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_e
    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()Ljava/util/List;
    .locals 2

    .line 40
    iget-object v0, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, LY2;->z:Ljava/util/ArrayList;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/String;)Lz2;
    .locals 3

    if-eqz p1, :cond_1

    .line 510
    iget-object v0, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 511
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2;

    if-eqz v1, :cond_0

    .line 512
    iget-object v2, v1, Lz2;->V:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 513
    :cond_1
    iget-object v0, p0, LY2;->A:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 514
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 515
    iget-object v1, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2;

    if-eqz v1, :cond_2

    .line 516
    iget-object v2, v1, Lz2;->V:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 809
    :try_start_0
    iput-boolean v0, p0, LY2;->x:Z

    .line 810
    invoke-virtual {p0, p1, v1}, LY2;->a(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    iput-boolean v1, p0, LY2;->x:Z

    .line 812
    invoke-virtual {p0}, LY2;->n()Z

    return-void

    :catchall_0
    move-exception p1

    .line 813
    iput-boolean v1, p0, LY2;->x:Z

    throw p1
.end method

.method public a(ILq2;)V
    .locals 3

    .line 539
    monitor-enter p0

    .line 540
    :try_start_0
    iget-object v0, p0, LY2;->D:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LY2;->D:Ljava/util/ArrayList;

    .line 542
    :cond_0
    iget-object v0, p0, LY2;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 543
    iget-object v0, p0, LY2;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_3

    .line 544
    iget-object v1, p0, LY2;->D:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v1, p0, LY2;->E:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 546
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LY2;->E:Ljava/util/ArrayList;

    .line 547
    :cond_2
    iget-object v1, p0, LY2;->E:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
    :cond_3
    iget-object p1, p0, LY2;->D:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(IZ)V
    .locals 3

    .line 467
    iget-object v0, p0, LY2;->H:LG2;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 469
    iget p2, p0, LY2;->G:I

    if-ne p1, p2, :cond_2

    return-void

    .line 470
    :cond_2
    iput p1, p0, LY2;->G:I

    .line 471
    iget-object p1, p0, LY2;->A:Landroid/util/SparseArray;

    if-eqz p1, :cond_7

    .line 472
    iget-object p1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    .line 473
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2;

    .line 474
    invoke-virtual {p0, v1}, LY2;->d(Lz2;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 475
    :cond_3
    iget-object p1, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_6

    .line 476
    iget-object v1, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2;

    if-eqz v1, :cond_5

    .line 477
    iget-boolean v2, v1, Lz2;->H:Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, Lz2;->X:Z

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, v1, Lz2;->j0:Z

    if-nez v2, :cond_5

    .line 478
    invoke-virtual {p0, v1}, LY2;->d(Lz2;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 479
    :cond_6
    invoke-virtual {p0}, LY2;->t()V

    .line 480
    iget-boolean p1, p0, LY2;->L:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, LY2;->H:LG2;

    if-eqz p1, :cond_7

    iget v0, p0, LY2;->G:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 481
    invoke-virtual {p1}, LG2;->b()V

    .line 482
    iput-boolean p2, p0, LY2;->L:Z

    :cond_7
    return-void
.end method

.method public final a(LL6;)V
    .locals 10

    .line 672
    iget v0, p0, LY2;->G:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 673
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 674
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_2

    .line 675
    iget-object v2, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lz2;

    .line 676
    iget v2, v9, Lz2;->w:I

    if-ge v2, v0, :cond_1

    .line 677
    invoke-virtual {v9}, Lz2;->s()I

    move-result v5

    invoke-virtual {v9}, Lz2;->t()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, LY2;->a(Lz2;IIIZ)V

    .line 678
    iget-object v2, v9, Lz2;->e0:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, v9, Lz2;->W:Z

    if-nez v2, :cond_1

    iget-boolean v2, v9, Lz2;->j0:Z

    if-eqz v2, :cond_1

    .line 679
    invoke-virtual {p1, v9}, LL6;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(LV2;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 517
    invoke-virtual {p0}, LY2;->e()V

    .line 518
    :cond_0
    monitor-enter p0

    .line 519
    :try_start_0
    iget-boolean v0, p0, LY2;->O:Z

    if-nez v0, :cond_3

    iget-object v0, p0, LY2;->H:LG2;

    if-nez v0, :cond_1

    goto :goto_0

    .line 520
    :cond_1
    iget-object p2, p0, LY2;->w:Ljava/util/ArrayList;

    if-nez p2, :cond_2

    .line 521
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, LY2;->w:Ljava/util/ArrayList;

    .line 522
    :cond_2
    iget-object p2, p0, LY2;->w:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-virtual {p0}, LY2;->s()V

    .line 524
    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 525
    monitor-exit p0

    return-void

    .line 526
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 527
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x0

    .line 818
    :goto_0
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 819
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2;

    if-eqz v1, :cond_0

    .line 820
    invoke-virtual {v1, p1}, Lz2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 821
    iget-object v1, v1, Lz2;->P:LY2;

    if-eqz v1, :cond_0

    .line 822
    invoke-virtual {v1, p1}, LY2;->a(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Parcelable;LZ2;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 696
    :cond_0
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 697
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->w:[Landroid/support/v4/app/FragmentState;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    .line 698
    iget-object v2, p2, LZ2;->a:Ljava/util/List;

    .line 699
    iget-object v3, p2, LZ2;->b:Ljava/util/List;

    .line 700
    iget-object v4, p2, LZ2;->c:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 701
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_7

    .line 702
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz2;

    const/4 v8, 0x0

    .line 703
    :goto_2
    iget-object v9, p1, Landroid/support/v4/app/FragmentManagerState;->w:[Landroid/support/v4/app/FragmentState;

    array-length v10, v9

    if-ge v8, v10, :cond_3

    aget-object v9, v9, v8

    iget v9, v9, Landroid/support/v4/app/FragmentState;->x:I

    iget v10, v7, Lz2;->A:I

    if-eq v9, v10, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 704
    :cond_3
    iget-object v9, p1, Landroid/support/v4/app/FragmentManagerState;->w:[Landroid/support/v4/app/FragmentState;

    array-length v10, v9

    if-eq v8, v10, :cond_5

    .line 705
    aget-object v8, v9, v8

    .line 706
    iput-object v7, v8, Landroid/support/v4/app/FragmentState;->H:Lz2;

    .line 707
    iput-object v0, v7, Lz2;->y:Landroid/util/SparseArray;

    .line 708
    iput v1, v7, Lz2;->M:I

    .line 709
    iput-boolean v1, v7, Lz2;->J:Z

    .line 710
    iput-boolean v1, v7, Lz2;->G:Z

    .line 711
    iput-object v0, v7, Lz2;->D:Lz2;

    .line 712
    iget-object v9, v8, Landroid/support/v4/app/FragmentState;->G:Landroid/os/Bundle;

    if-eqz v9, :cond_4

    .line 713
    iget-object v10, p0, LY2;->H:LG2;

    .line 714
    iget-object v10, v10, LG2;->b:Landroid/content/Context;

    .line 715
    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 716
    iget-object v9, v8, Landroid/support/v4/app/FragmentState;->G:Landroid/os/Bundle;

    const-string v10, "android:view_state"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v9

    iput-object v9, v7, Lz2;->y:Landroid/util/SparseArray;

    .line 717
    iget-object v8, v8, Landroid/support/v4/app/FragmentState;->G:Landroid/os/Bundle;

    iput-object v8, v7, Lz2;->x:Landroid/os/Bundle;

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 718
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not find active fragment with index "

    invoke-static {p2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, v7, Lz2;->A:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LY2;->a(Ljava/lang/RuntimeException;)V

    throw v0

    :cond_6
    move-object v3, v0

    move-object v4, v3

    .line 719
    :cond_7
    new-instance v1, Landroid/util/SparseArray;

    iget-object v2, p1, Landroid/support/v4/app/FragmentManagerState;->w:[Landroid/support/v4/app/FragmentState;

    array-length v2, v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, LY2;->A:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 720
    :goto_3
    iget-object v2, p1, Landroid/support/v4/app/FragmentManagerState;->w:[Landroid/support/v4/app/FragmentState;

    array-length v5, v2

    const/4 v6, 0x1

    if-ge v1, v5, :cond_f

    .line 721
    aget-object v2, v2, v1

    if-eqz v2, :cond_e

    if-eqz v3, :cond_8

    .line 722
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 723
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LZ2;

    goto :goto_4

    :cond_8
    move-object v5, v0

    :goto_4
    if-eqz v4, :cond_9

    .line 724
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_9

    .line 725
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw;

    .line 726
    :cond_9
    iget-object v7, p0, LY2;->H:LG2;

    iget-object v8, p0, LY2;->I:LE2;

    iget-object v9, p0, LY2;->J:Lz2;

    .line 727
    iget-object v10, v2, Landroid/support/v4/app/FragmentState;->H:Lz2;

    if-nez v10, :cond_d

    .line 728
    iget-object v10, v7, LG2;->b:Landroid/content/Context;

    .line 729
    iget-object v11, v2, Landroid/support/v4/app/FragmentState;->E:Landroid/os/Bundle;

    if-eqz v11, :cond_a

    .line 730
    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_a
    if-eqz v8, :cond_b

    .line 731
    iget-object v11, v2, Landroid/support/v4/app/FragmentState;->w:Ljava/lang/String;

    iget-object v12, v2, Landroid/support/v4/app/FragmentState;->E:Landroid/os/Bundle;

    invoke-virtual {v8, v10, v11, v12}, LE2;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lz2;

    move-result-object v8

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->H:Lz2;

    goto :goto_5

    .line 732
    :cond_b
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->w:Ljava/lang/String;

    iget-object v11, v2, Landroid/support/v4/app/FragmentState;->E:Landroid/os/Bundle;

    invoke-static {v10, v8, v11}, Lz2;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lz2;

    move-result-object v8

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->H:Lz2;

    .line 733
    :goto_5
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->G:Landroid/os/Bundle;

    if-eqz v8, :cond_c

    .line 734
    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 735
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->H:Lz2;

    iget-object v10, v2, Landroid/support/v4/app/FragmentState;->G:Landroid/os/Bundle;

    iput-object v10, v8, Lz2;->x:Landroid/os/Bundle;

    .line 736
    :cond_c
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->H:Lz2;

    iget v10, v2, Landroid/support/v4/app/FragmentState;->x:I

    invoke-virtual {v8, v10, v9}, Lz2;->a(ILz2;)V

    .line 737
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->H:Lz2;

    iget-boolean v9, v2, Landroid/support/v4/app/FragmentState;->y:Z

    iput-boolean v9, v8, Lz2;->I:Z

    .line 738
    iput-boolean v6, v8, Lz2;->K:Z

    .line 739
    iget v6, v2, Landroid/support/v4/app/FragmentState;->z:I

    iput v6, v8, Lz2;->T:I

    .line 740
    iget v6, v2, Landroid/support/v4/app/FragmentState;->A:I

    iput v6, v8, Lz2;->U:I

    .line 741
    iget-object v6, v2, Landroid/support/v4/app/FragmentState;->B:Ljava/lang/String;

    iput-object v6, v8, Lz2;->V:Ljava/lang/String;

    .line 742
    iget-boolean v6, v2, Landroid/support/v4/app/FragmentState;->C:Z

    iput-boolean v6, v8, Lz2;->Y:Z

    .line 743
    iget-boolean v6, v2, Landroid/support/v4/app/FragmentState;->D:Z

    iput-boolean v6, v8, Lz2;->X:Z

    .line 744
    iget-boolean v6, v2, Landroid/support/v4/app/FragmentState;->F:Z

    iput-boolean v6, v8, Lz2;->W:Z

    .line 745
    iget-object v6, v7, LG2;->d:LY2;

    iput-object v6, v8, Lz2;->N:LY2;

    .line 746
    :cond_d
    iget-object v6, v2, Landroid/support/v4/app/FragmentState;->H:Lz2;

    iput-object v5, v6, Lz2;->Q:LZ2;

    .line 747
    iput-object v0, v6, Lz2;->R:Lw;

    .line 748
    iget-object v0, p0, LY2;->A:Landroid/util/SparseArray;

    iget v5, v6, Lz2;->A:I

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 749
    iput-object v0, v2, Landroid/support/v4/app/FragmentState;->H:Lz2;

    :cond_e
    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_f
    if-eqz p2, :cond_12

    .line 750
    iget-object p2, p2, LZ2;->a:Ljava/util/List;

    if-eqz p2, :cond_10

    .line 751
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_12

    .line 752
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2;

    .line 753
    iget v3, v2, Lz2;->E:I

    if-ltz v3, :cond_11

    .line 754
    iget-object v4, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz2;

    iput-object v3, v2, Lz2;->D:Lz2;

    if-nez v3, :cond_11

    .line 755
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-attaching retained fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " target no longer exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lz2;->E:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 756
    :cond_12
    iget-object p2, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 757
    iget-object p2, p1, Landroid/support/v4/app/FragmentManagerState;->x:[I

    if-eqz p2, :cond_15

    const/4 p2, 0x0

    .line 758
    :goto_8
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->x:[I

    array-length v1, v0

    if-ge p2, v1, :cond_15

    .line 759
    iget-object v1, p0, LY2;->A:Landroid/util/SparseArray;

    aget v0, v0, p2

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2;

    if-eqz v0, :cond_14

    .line 760
    iput-boolean v6, v0, Lz2;->G:Z

    .line 761
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 762
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    monitor-enter v1

    .line 763
    :try_start_0
    iget-object v2, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    monitor-exit v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 765
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already added!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 766
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instantiated fragment for index #"

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/support/v4/app/FragmentManagerState;->x:[I

    aget p1, p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LY2;->a(Ljava/lang/RuntimeException;)V

    const/4 p1, 0x0

    throw p1

    .line 767
    :cond_15
    iget-object p2, p1, Landroid/support/v4/app/FragmentManagerState;->y:[Landroid/support/v4/app/BackStackState;

    if-eqz p2, :cond_1a

    .line 768
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->y:[Landroid/support/v4/app/BackStackState;

    array-length v0, v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, LY2;->B:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 769
    :goto_9
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->y:[Landroid/support/v4/app/BackStackState;

    array-length v1, v0

    if-ge p2, v1, :cond_1b

    .line 770
    aget-object v0, v0, p2

    if-eqz v0, :cond_19

    .line 771
    new-instance v1, Lq2;

    invoke-direct {v1, p0}, Lq2;-><init>(LY2;)V

    const/4 v2, 0x0

    .line 772
    :goto_a
    iget-object v3, v0, Landroid/support/v4/app/BackStackState;->w:[I

    array-length v3, v3

    if-ge v2, v3, :cond_17

    .line 773
    new-instance v3, Lp2;

    invoke-direct {v3}, Lp2;-><init>()V

    .line 774
    iget-object v4, v0, Landroid/support/v4/app/BackStackState;->w:[I

    add-int/lit8 v5, v2, 0x1

    aget v2, v4, v2

    iput v2, v3, Lp2;->a:I

    add-int/lit8 v2, v5, 0x1

    .line 775
    aget v4, v4, v5

    if-ltz v4, :cond_16

    .line 776
    iget-object v5, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz2;

    .line 777
    iput-object v4, v3, Lp2;->b:Lz2;

    goto :goto_b

    :cond_16
    const/4 v4, 0x0

    .line 778
    iput-object v4, v3, Lp2;->b:Lz2;

    .line 779
    :goto_b
    iget-object v4, v0, Landroid/support/v4/app/BackStackState;->w:[I

    add-int/lit8 v5, v2, 0x1

    aget v2, v4, v2

    iput v2, v3, Lp2;->c:I

    add-int/lit8 v7, v5, 0x1

    .line 780
    aget v5, v4, v5

    iput v5, v3, Lp2;->d:I

    add-int/lit8 v8, v7, 0x1

    .line 781
    aget v7, v4, v7

    iput v7, v3, Lp2;->e:I

    add-int/lit8 v9, v8, 0x1

    .line 782
    aget v4, v4, v8

    iput v4, v3, Lp2;->f:I

    .line 783
    iput v2, v1, Lq2;->c:I

    .line 784
    iput v5, v1, Lq2;->d:I

    .line 785
    iput v7, v1, Lq2;->e:I

    .line 786
    iput v4, v1, Lq2;->f:I

    .line 787
    invoke-virtual {v1, v3}, Lq2;->a(Lp2;)V

    move v2, v9

    goto :goto_a

    .line 788
    :cond_17
    iget v2, v0, Landroid/support/v4/app/BackStackState;->x:I

    iput v2, v1, Lq2;->g:I

    .line 789
    iget v2, v0, Landroid/support/v4/app/BackStackState;->y:I

    iput v2, v1, Lq2;->h:I

    .line 790
    iget-object v2, v0, Landroid/support/v4/app/BackStackState;->z:Ljava/lang/String;

    iput-object v2, v1, Lq2;->k:Ljava/lang/String;

    .line 791
    iget v2, v0, Landroid/support/v4/app/BackStackState;->A:I

    iput v2, v1, Lq2;->m:I

    .line 792
    iput-boolean v6, v1, Lq2;->i:Z

    .line 793
    iget v2, v0, Landroid/support/v4/app/BackStackState;->B:I

    iput v2, v1, Lq2;->n:I

    .line 794
    iget-object v2, v0, Landroid/support/v4/app/BackStackState;->C:Ljava/lang/CharSequence;

    iput-object v2, v1, Lq2;->o:Ljava/lang/CharSequence;

    .line 795
    iget v2, v0, Landroid/support/v4/app/BackStackState;->D:I

    iput v2, v1, Lq2;->p:I

    .line 796
    iget-object v2, v0, Landroid/support/v4/app/BackStackState;->E:Ljava/lang/CharSequence;

    iput-object v2, v1, Lq2;->q:Ljava/lang/CharSequence;

    .line 797
    iget-object v2, v0, Landroid/support/v4/app/BackStackState;->F:Ljava/util/ArrayList;

    iput-object v2, v1, Lq2;->r:Ljava/util/ArrayList;

    .line 798
    iget-object v2, v0, Landroid/support/v4/app/BackStackState;->G:Ljava/util/ArrayList;

    iput-object v2, v1, Lq2;->s:Ljava/util/ArrayList;

    .line 799
    iget-boolean v0, v0, Landroid/support/v4/app/BackStackState;->H:Z

    iput-boolean v0, v1, Lq2;->t:Z

    .line 800
    invoke-virtual {v1, v6}, Lq2;->a(I)V

    .line 801
    iget-object v0, p0, LY2;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    iget v0, v1, Lq2;->m:I

    if-ltz v0, :cond_18

    .line 803
    invoke-virtual {p0, v0, v1}, LY2;->a(ILq2;)V

    :cond_18
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_9

    :cond_19
    const/4 p1, 0x0

    .line 804
    throw p1

    :cond_1a
    const/4 p2, 0x0

    .line 805
    iput-object p2, p0, LY2;->B:Ljava/util/ArrayList;

    .line 806
    :cond_1b
    iget p2, p1, Landroid/support/v4/app/FragmentManagerState;->z:I

    if-ltz p2, :cond_1c

    .line 807
    iget-object v0, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz2;

    iput-object p2, p0, LY2;->K:Lz2;

    .line 808
    :cond_1c
    iget p1, p1, Landroid/support/v4/app/FragmentManagerState;->A:I

    iput p1, p0, LY2;->y:I

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 3

    .line 845
    iget v0, p0, LY2;->G:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 846
    :goto_0
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 847
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2;

    if-eqz v1, :cond_2

    .line 848
    iget-boolean v2, v1, Lz2;->W:Z

    if-nez v2, :cond_2

    .line 849
    iget-boolean v2, v1, Lz2;->a0:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lz2;->b0:Z

    .line 850
    :cond_1
    iget-object v1, v1, Lz2;->P:LY2;

    if-eqz v1, :cond_2

    .line 851
    invoke-virtual {v1, p1}, LY2;->a(Landroid/view/Menu;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/RuntimeException;)V
    .locals 7

    .line 29
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, LP6;

    invoke-direct {v0, v1}, LP6;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 33
    iget-object v0, p0, LY2;->H:LG2;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 34
    check-cast v0, LB2;

    .line 35
    iget-object v0, v0, LB2;->e:LD2;

    invoke-virtual {v0, v6, v5, v2, v4}, LD2;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 36
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    .line 37
    invoke-virtual {p0, v6, v5, v2, v0}, LY2;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 38
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :goto_0
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string v0, "    "

    .line 45
    invoke-static {p1, v0}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, LY2;->A:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 48
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    .line 50
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 51
    iget-object v4, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz2;

    .line 52
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    .line 53
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v4, :cond_0

    .line 54
    invoke-virtual {v4, v0, p2, p3, p4}, Lz2;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_1
    iget-object p2, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 56
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Added Fragments:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p2, :cond_2

    .line 57
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2;

    .line 58
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 59
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 61
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Lz2;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 63
    :cond_2
    iget-object p2, p0, LY2;->C:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    .line 64
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 65
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Fragments Created Menus:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_2
    if-ge p4, p2, :cond_3

    .line 66
    iget-object v1, p0, LY2;->C:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2;

    .line 67
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 68
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lz2;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 69
    :cond_3
    iget-object p2, p0, LY2;->B:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    .line 70
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 71
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_3
    if-ge p4, p2, :cond_4

    .line 72
    iget-object v1, p0, LY2;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq2;

    .line 73
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 74
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lq2;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 75
    invoke-virtual {v1, v0, p3, v3}, Lq2;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 76
    :cond_4
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object p2, p0, LY2;->D:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    .line 78
    iget-object p2, p0, LY2;->D:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 79
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack Indices:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_4
    if-ge p4, p2, :cond_5

    .line 80
    iget-object v0, p0, LY2;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq2;

    .line 81
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    .line 82
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 83
    :cond_5
    iget-object p2, p0, LY2;->E:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    iget-object p2, p0, LY2;->E:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 84
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, LY2;->E:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object p2, p0, LY2;->w:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    .line 88
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 89
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Pending Actions:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    if-ge v2, p2, :cond_7

    .line 90
    iget-object p4, p0, LY2;->w:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, LV2;

    .line 91
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    .line 92
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 93
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, LY2;->H:LG2;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, LY2;->I:LE2;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 96
    iget-object p2, p0, LY2;->J:Lz2;

    if-eqz p2, :cond_8

    .line 97
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, LY2;->J:Lz2;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 98
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, LY2;->G:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    .line 99
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, LY2;->M:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    .line 100
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, LY2;->N:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    .line 101
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, LY2;->O:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 102
    iget-boolean p2, p0, LY2;->L:Z

    if-eqz p2, :cond_9

    .line 103
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    iget-boolean p1, p0, LY2;->L:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    .line 105
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8

    .line 550
    iget-object v0, p0, LY2;->V:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    move v2, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_6

    .line 551
    iget-object v3, p0, LY2;->V:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX2;

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_1

    .line 552
    iget-boolean v6, v3, LX2;->a:Z

    if-nez v6, :cond_1

    .line 553
    iget-object v6, v3, LX2;->b:Lq2;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_1

    .line 554
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 555
    iget-object v5, v3, LX2;->b:Lq2;

    iget-object v6, v5, Lq2;->a:LY2;

    iget-boolean v3, v3, LX2;->a:Z

    invoke-virtual {v6, v5, v3, v1, v1}, LY2;->a(Lq2;ZZZ)V

    goto :goto_3

    .line 556
    :cond_1
    iget v6, v3, LX2;->c:I

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    if-eqz p1, :cond_5

    .line 557
    iget-object v6, v3, LX2;->b:Lq2;

    .line 558
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, p1, v1, v7}, Lq2;->a(Ljava/util/ArrayList;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 559
    :cond_3
    iget-object v6, p0, LY2;->V:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    if-eqz p1, :cond_4

    .line 560
    iget-boolean v6, v3, LX2;->a:Z

    if-nez v6, :cond_4

    iget-object v6, v3, LX2;->b:Lq2;

    .line 561
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_4

    .line 562
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 563
    iget-object v5, v3, LX2;->b:Lq2;

    iget-object v6, v5, Lq2;->a:LY2;

    iget-boolean v3, v3, LX2;->a:Z

    invoke-virtual {v6, v5, v3, v1, v1}, LY2;->a(Lq2;ZZZ)V

    goto :goto_3

    .line 564
    :cond_4
    invoke-virtual {v3}, LX2;->a()V

    :cond_5
    :goto_3
    add-int/2addr v0, v4

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 565
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq2;

    iget-boolean v11, v0, Lq2;->t:Z

    .line 566
    iget-object v0, v6, LY2;->S:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, LY2;->S:Ljava/util/ArrayList;

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 569
    :goto_0
    iget-object v0, v6, LY2;->S:Ljava/util/ArrayList;

    iget-object v1, v6, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 570
    iget-object v0, v6, LY2;->K:Lz2;

    move-object v1, v0

    move v0, v9

    const/4 v13, 0x0

    :goto_1
    const/4 v15, 0x1

    if-ge v0, v10, :cond_12

    .line 571
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq2;

    .line 572
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_c

    .line 573
    iget-object v3, v6, LY2;->S:Ljava/util/ArrayList;

    move-object v5, v1

    const/4 v1, 0x0

    .line 574
    :goto_2
    iget-object v14, v2, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v1, v14, :cond_b

    .line 575
    iget-object v14, v2, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lp2;

    .line 576
    iget v12, v14, Lp2;->a:I

    if-eq v12, v15, :cond_a

    const/4 v15, 0x2

    const/16 v9, 0x9

    if-eq v12, v15, :cond_4

    if-eq v12, v4, :cond_2

    const/4 v15, 0x6

    if-eq v12, v15, :cond_2

    const/4 v15, 0x7

    if-eq v12, v15, :cond_a

    const/16 v15, 0x8

    if-eq v12, v15, :cond_1

    goto :goto_3

    .line 577
    :cond_1
    iget-object v12, v2, Lq2;->b:Ljava/util/ArrayList;

    new-instance v15, Lp2;

    invoke-direct {v15, v9, v5}, Lp2;-><init>(ILz2;)V

    invoke-virtual {v12, v1, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    .line 578
    iget-object v5, v14, Lp2;->b:Lz2;

    goto :goto_3

    .line 579
    :cond_2
    iget-object v12, v14, Lp2;->b:Lz2;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 580
    iget-object v12, v14, Lp2;->b:Lz2;

    if-ne v12, v5, :cond_3

    .line 581
    iget-object v5, v2, Lq2;->b:Ljava/util/ArrayList;

    new-instance v14, Lp2;

    invoke-direct {v14, v9, v12}, Lp2;-><init>(ILz2;)V

    invoke-virtual {v5, v1, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x0

    :cond_3
    :goto_3
    const/4 v7, 0x1

    goto/16 :goto_8

    .line 582
    :cond_4
    iget-object v12, v14, Lp2;->b:Lz2;

    .line 583
    iget v15, v12, Lz2;->U:I

    .line 584
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, 0x1

    add-int/lit8 v17, v17, -0x1

    move v4, v1

    move-object v9, v5

    move/from16 v1, v17

    const/4 v5, 0x0

    :goto_4
    if-ltz v1, :cond_8

    .line 585
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v8, v18

    check-cast v8, Lz2;

    .line 586
    iget v7, v8, Lz2;->U:I

    if-ne v7, v15, :cond_7

    if-ne v8, v12, :cond_5

    move/from16 v18, v15

    const/4 v5, 0x1

    goto :goto_6

    :cond_5
    if-ne v8, v9, :cond_6

    .line 587
    iget-object v7, v2, Lq2;->b:Ljava/util/ArrayList;

    new-instance v9, Lp2;

    move/from16 v18, v15

    const/16 v15, 0x9

    invoke-direct {v9, v15, v8}, Lp2;-><init>(ILz2;)V

    invoke-virtual {v7, v4, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x0

    goto :goto_5

    :cond_6
    move/from16 v18, v15

    const/16 v15, 0x9

    .line 588
    :goto_5
    new-instance v7, Lp2;

    const/4 v15, 0x3

    invoke-direct {v7, v15, v8}, Lp2;-><init>(ILz2;)V

    .line 589
    iget v15, v14, Lp2;->c:I

    iput v15, v7, Lp2;->c:I

    .line 590
    iget v15, v14, Lp2;->e:I

    iput v15, v7, Lp2;->e:I

    .line 591
    iget v15, v14, Lp2;->d:I

    iput v15, v7, Lp2;->d:I

    .line 592
    iget v15, v14, Lp2;->f:I

    iput v15, v7, Lp2;->f:I

    .line 593
    iget-object v15, v2, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v15, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 594
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    add-int/2addr v4, v7

    goto :goto_6

    :cond_7
    move/from16 v18, v15

    :goto_6
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v15, v18

    goto :goto_4

    :cond_8
    if-eqz v5, :cond_9

    .line 595
    iget-object v1, v2, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    move v1, v4

    const/4 v7, 0x1

    goto :goto_7

    :cond_9
    const/4 v7, 0x1

    .line 596
    iput v7, v14, Lp2;->a:I

    .line 597
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v4

    :goto_7
    move-object v5, v9

    goto :goto_8

    :cond_a
    const/4 v7, 0x1

    .line 598
    iget-object v4, v14, Lp2;->b:Lz2;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v1, v7

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    const/4 v4, 0x3

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_b
    move-object v1, v5

    goto :goto_b

    .line 599
    :cond_c
    iget-object v3, v6, LY2;->S:Ljava/util/ArrayList;

    move-object v4, v1

    const/4 v1, 0x0

    .line 600
    :goto_9
    iget-object v5, v2, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_f

    .line 601
    iget-object v5, v2, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp2;

    .line 602
    iget v7, v5, Lp2;->a:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_e

    const/4 v8, 0x3

    if-eq v7, v8, :cond_d

    packed-switch v7, :pswitch_data_0

    goto :goto_a

    .line 603
    :pswitch_0
    iget-object v4, v5, Lp2;->b:Lz2;

    goto :goto_a

    :pswitch_1
    const/4 v4, 0x0

    goto :goto_a

    .line 604
    :cond_d
    :pswitch_2
    iget-object v5, v5, Lp2;->b:Lz2;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_e
    const/4 v8, 0x3

    .line 605
    :pswitch_3
    iget-object v5, v5, Lp2;->b:Lz2;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    move-object v1, v4

    :goto_b
    if-nez v13, :cond_11

    .line 606
    iget-boolean v2, v2, Lq2;->i:Z

    if-eqz v2, :cond_10

    goto :goto_c

    :cond_10
    const/4 v13, 0x0

    goto :goto_d

    :cond_11
    :goto_c
    const/4 v13, 0x1

    :goto_d
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    goto/16 :goto_1

    .line 607
    :cond_12
    iget-object v0, v6, LY2;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v11, :cond_13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 608
    invoke-static/range {v0 .. v5}, Lj3;->a(LY2;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_13
    move/from16 v0, p3

    :goto_e
    const/4 v7, -0x1

    if-ge v0, v10, :cond_16

    move-object/from16 v8, p1

    .line 609
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq2;

    move-object/from16 v9, p2

    .line 610
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 611
    invoke-virtual {v1, v7}, Lq2;->a(I)V

    add-int/lit8 v2, v10, -0x1

    if-ne v0, v2, :cond_14

    const/4 v2, 0x1

    goto :goto_f

    :cond_14
    const/4 v2, 0x0

    .line 612
    :goto_f
    invoke-virtual {v1, v2}, Lq2;->b(Z)V

    goto :goto_10

    :cond_15
    const/4 v2, 0x1

    .line 613
    invoke-virtual {v1, v2}, Lq2;->a(I)V

    .line 614
    invoke-virtual {v1}, Lq2;->c()V

    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_16
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    if-eqz v11, :cond_23

    .line 615
    new-instance v0, LL6;

    invoke-direct {v0}, LL6;-><init>()V

    .line 616
    invoke-virtual {v6, v0}, LY2;->a(LL6;)V

    add-int/lit8 v1, v10, -0x1

    move/from16 v12, p3

    move v2, v10

    :goto_11
    if-lt v1, v12, :cond_20

    .line 617
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq2;

    .line 618
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    .line 619
    :goto_12
    iget-object v14, v3, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_18

    .line 620
    iget-object v14, v3, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lp2;

    .line 621
    invoke-static {v14}, Lq2;->b(Lp2;)Z

    move-result v14

    if-eqz v14, :cond_17

    const/4 v5, 0x1

    goto :goto_13

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_18
    const/4 v5, 0x0

    :goto_13
    if-eqz v5, :cond_19

    add-int/lit8 v5, v1, 0x1

    .line 622
    invoke-virtual {v3, v8, v5, v10}, Lq2;->a(Ljava/util/ArrayList;II)Z

    move-result v5

    if-nez v5, :cond_19

    const/4 v5, 0x1

    goto :goto_14

    :cond_19
    const/4 v5, 0x0

    :goto_14
    if-eqz v5, :cond_1f

    .line 623
    iget-object v5, v6, LY2;->V:Ljava/util/ArrayList;

    if-nez v5, :cond_1a

    .line 624
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v6, LY2;->V:Ljava/util/ArrayList;

    .line 625
    :cond_1a
    new-instance v5, LX2;

    invoke-direct {v5, v3, v4}, LX2;-><init>(Lq2;Z)V

    .line 626
    iget-object v14, v6, LY2;->V:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    .line 627
    :goto_15
    iget-object v15, v3, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_1c

    .line 628
    iget-object v15, v3, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lp2;

    .line 629
    invoke-static {v15}, Lq2;->b(Lp2;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 630
    iget-object v15, v15, Lp2;->b:Lz2;

    invoke-virtual {v15, v5}, Lz2;->a(Ly2;)V

    :cond_1b
    add-int/lit8 v14, v14, 0x1

    goto :goto_15

    :cond_1c
    if-eqz v4, :cond_1d

    .line 631
    invoke-virtual {v3}, Lq2;->c()V

    const/4 v14, 0x0

    goto :goto_16

    :cond_1d
    const/4 v14, 0x0

    .line 632
    invoke-virtual {v3, v14}, Lq2;->b(Z)V

    :goto_16
    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 633
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 634
    invoke-virtual {v8, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 635
    :cond_1e
    invoke-virtual {v6, v0}, LY2;->a(LL6;)V

    goto :goto_17

    :cond_1f
    const/4 v14, 0x0

    :goto_17
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_11

    :cond_20
    const/4 v14, 0x0

    .line 636
    iget v1, v0, LL6;->y:I

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v1, :cond_22

    .line 637
    iget-object v4, v0, LL6;->x:[Ljava/lang/Object;

    aget-object v4, v4, v3

    .line 638
    check-cast v4, Lz2;

    .line 639
    iget-boolean v5, v4, Lz2;->G:Z

    if-nez v5, :cond_21

    .line 640
    iget-object v5, v4, Lz2;->e0:Landroid/view/View;

    .line 641
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v15

    iput v15, v4, Lz2;->l0:F

    const/4 v4, 0x0

    .line 642
    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_22
    move v4, v2

    goto :goto_19

    :cond_23
    move/from16 v12, p3

    const/4 v14, 0x0

    move v4, v10

    :goto_19
    if-eq v4, v12, :cond_24

    if-eqz v11, :cond_24

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 643
    invoke-static/range {v0 .. v5}, Lj3;->a(LY2;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 644
    iget v0, v6, LY2;->G:I

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, LY2;->a(IZ)V

    :cond_24
    :goto_1a
    if-ge v12, v10, :cond_28

    .line 645
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq2;

    .line 646
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 647
    iget v1, v0, Lq2;->m:I

    if-ltz v1, :cond_25

    .line 648
    invoke-virtual {v6, v1}, LY2;->c(I)V

    .line 649
    iput v7, v0, Lq2;->m:I

    .line 650
    :cond_25
    iget-object v1, v0, Lq2;->u:Ljava/util/ArrayList;

    if-eqz v1, :cond_27

    .line 651
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_26

    .line 652
    iget-object v3, v0, Lq2;->u:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_26
    const/4 v2, 0x0

    .line 653
    iput-object v2, v0, Lq2;->u:Ljava/util/ArrayList;

    goto :goto_1c

    :cond_27
    const/4 v2, 0x0

    :goto_1c
    add-int/lit8 v12, v12, 0x1

    goto :goto_1a

    :cond_28
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lq2;ZZZ)V
    .locals 7

    if-eqz p2, :cond_0

    .line 654
    invoke-virtual {p1, p4}, Lq2;->b(Z)V

    goto :goto_0

    .line 655
    :cond_0
    invoke-virtual {p1}, Lq2;->c()V

    .line 656
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 657
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 658
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    .line 660
    invoke-static/range {v0 .. v5}, Lj3;->a(LY2;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_1
    if-eqz p4, :cond_2

    .line 661
    iget p2, p0, LY2;->G:I

    invoke-virtual {p0, p2, v6}, LY2;->a(IZ)V

    .line 662
    :cond_2
    iget-object p2, p0, LY2;->A:Landroid/util/SparseArray;

    if-eqz p2, :cond_6

    .line 663
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_6

    .line 664
    iget-object v1, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2;

    if-eqz v1, :cond_5

    .line 665
    iget-object v2, v1, Lz2;->e0:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lz2;->j0:Z

    if-eqz v2, :cond_5

    iget v2, v1, Lz2;->U:I

    .line 666
    invoke-virtual {p1, v2}, Lq2;->b(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 667
    iget v2, v1, Lz2;->l0:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_3

    .line 668
    iget-object v4, v1, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    if-eqz p4, :cond_4

    .line 669
    iput v3, v1, Lz2;->l0:F

    goto :goto_2

    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    .line 670
    iput v2, v1, Lz2;->l0:F

    .line 671
    iput-boolean p3, v1, Lz2;->j0:Z

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public a(Lz2;)V
    .locals 3

    .line 498
    iget-boolean v0, p1, Lz2;->X:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 499
    iput-boolean v0, p1, Lz2;->X:Z

    .line 500
    iget-boolean v0, p1, Lz2;->G:Z

    if-nez v0, :cond_1

    .line 501
    iget-object v0, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, LY2;->z:Ljava/util/ArrayList;

    monitor-enter v0

    .line 503
    :try_start_0
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p1, Lz2;->G:Z

    .line 506
    iget-boolean v1, p1, Lz2;->a0:Z

    if-eqz v1, :cond_1

    iget-boolean p1, p1, Lz2;->b0:Z

    if-eqz p1, :cond_1

    .line 507
    iput-boolean v0, p0, LY2;->L:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 508
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lz2;IIIZ)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 171
    iget-boolean v0, v7, Lz2;->G:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v7, Lz2;->X:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v0, p2

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v0, p2

    if-le v0, v8, :cond_2

    const/4 v0, 0x1

    .line 172
    :cond_2
    :goto_1
    iget-boolean v1, v7, Lz2;->H:Z

    if-eqz v1, :cond_4

    iget v1, v7, Lz2;->w:I

    if-le v0, v1, :cond_4

    if-nez v1, :cond_3

    .line 173
    invoke-virtual/range {p1 .. p1}, Lz2;->D()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    .line 174
    :cond_3
    iget v0, v7, Lz2;->w:I

    .line 175
    :cond_4
    :goto_2
    iget-boolean v1, v7, Lz2;->g0:Z

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v1, :cond_5

    iget v1, v7, Lz2;->w:I

    if-ge v1, v9, :cond_5

    if-le v0, v10, :cond_5

    const/4 v0, 0x2

    const/4 v11, 0x2

    goto :goto_3

    :cond_5
    move v11, v0

    .line 176
    :goto_3
    iget v0, v7, Lz2;->w:I

    const/4 v12, -0x1

    const-string v13, "Fragment "

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-gt v0, v11, :cond_34

    .line 177
    iget-boolean v0, v7, Lz2;->I:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v7, Lz2;->J:Z

    if-nez v0, :cond_6

    return-void

    .line 178
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lz2;->m()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lz2;->n()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 179
    :cond_7
    invoke-virtual {v7, v15}, Lz2;->a(Landroid/view/View;)V

    .line 180
    invoke-virtual {v7, v15}, Lz2;->a(Landroid/animation/Animator;)V

    .line 181
    invoke-virtual/range {p1 .. p1}, Lz2;->y()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, LY2;->a(Lz2;IIIZ)V

    .line 182
    :cond_8
    iget v0, v7, Lz2;->w:I

    if-eqz v0, :cond_9

    if-eq v0, v8, :cond_18

    if-eq v0, v10, :cond_2a

    if-eq v0, v9, :cond_2f

    goto/16 :goto_1c

    :cond_9
    if-lez v11, :cond_18

    .line 183
    iget-object v0, v7, Lz2;->x:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    .line 184
    iget-object v1, v6, LY2;->H:LG2;

    .line 185
    iget-object v1, v1, LG2;->b:Landroid/content/Context;

    .line 186
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 188
    iget-object v0, v7, Lz2;->x:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, v7, Lz2;->y:Landroid/util/SparseArray;

    .line 189
    iget-object v0, v7, Lz2;->x:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    .line 190
    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v12, :cond_a

    move-object v2, v15

    goto :goto_4

    .line 191
    :cond_a
    iget-object v2, v6, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2;

    if-eqz v2, :cond_d

    .line 192
    :goto_4
    iput-object v2, v7, Lz2;->D:Lz2;

    if-eqz v2, :cond_b

    .line 193
    iget-object v0, v7, Lz2;->x:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v7, Lz2;->F:I

    .line 194
    :cond_b
    iget-object v0, v7, Lz2;->z:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 195
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v7, Lz2;->h0:Z

    .line 196
    iput-object v15, v7, Lz2;->z:Ljava/lang/Boolean;

    goto :goto_5

    .line 197
    :cond_c
    iget-object v0, v7, Lz2;->x:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v7, Lz2;->h0:Z

    .line 198
    :goto_5
    iget-boolean v0, v7, Lz2;->h0:Z

    if-nez v0, :cond_e

    .line 199
    iput-boolean v8, v7, Lz2;->g0:Z

    if-le v11, v10, :cond_e

    const/4 v0, 0x2

    const/4 v11, 0x2

    goto :goto_6

    .line 200
    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": index "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, LY2;->a(Ljava/lang/RuntimeException;)V

    throw v15

    .line 201
    :cond_e
    :goto_6
    iget-object v0, v6, LY2;->H:LG2;

    iput-object v0, v7, Lz2;->O:LG2;

    .line 202
    iget-object v1, v6, LY2;->J:Lz2;

    iput-object v1, v7, Lz2;->S:Lz2;

    if-eqz v1, :cond_f

    .line 203
    iget-object v0, v1, Lz2;->P:LY2;

    goto :goto_7

    .line 204
    :cond_f
    iget-object v0, v0, LG2;->d:LY2;

    .line 205
    :goto_7
    iput-object v0, v7, Lz2;->N:LY2;

    .line 206
    iget-object v0, v7, Lz2;->D:Lz2;

    if-eqz v0, :cond_11

    .line 207
    iget-object v1, v6, LY2;->A:Landroid/util/SparseArray;

    iget v0, v0, Lz2;->A:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v7, Lz2;->D:Lz2;

    if-ne v0, v1, :cond_10

    .line 208
    iget v0, v1, Lz2;->w:I

    if-ge v0, v8, :cond_11

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    .line 209
    invoke-virtual/range {v0 .. v5}, LY2;->a(Lz2;IIIZ)V

    goto :goto_8

    .line 210
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lz2;->D:Lz2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_11
    :goto_8
    iget-object v0, v6, LY2;->H:LG2;

    .line 212
    iget-object v0, v0, LG2;->b:Landroid/content/Context;

    .line 213
    invoke-virtual {v6, v7, v0, v14}, LY2;->b(Lz2;Landroid/content/Context;Z)V

    .line 214
    iput-boolean v14, v7, Lz2;->c0:Z

    .line 215
    iget-object v0, v6, LY2;->H:LG2;

    .line 216
    iget-object v0, v0, LG2;->b:Landroid/content/Context;

    .line 217
    invoke-virtual {v7, v0}, Lz2;->a(Landroid/content/Context;)V

    .line 218
    iget-boolean v0, v7, Lz2;->c0:Z

    if-eqz v0, :cond_17

    .line 219
    iget-object v0, v7, Lz2;->S:Lz2;

    if-nez v0, :cond_13

    .line 220
    iget-object v0, v6, LY2;->H:LG2;

    check-cast v0, LB2;

    .line 221
    iget-object v0, v0, LB2;->e:LD2;

    if-eqz v0, :cond_12

    goto :goto_9

    .line 222
    :cond_12
    throw v15

    .line 223
    :cond_13
    :goto_9
    iget-object v0, v6, LY2;->H:LG2;

    .line 224
    iget-object v0, v0, LG2;->b:Landroid/content/Context;

    .line 225
    invoke-virtual {v6, v7, v0, v14}, LY2;->a(Lz2;Landroid/content/Context;Z)V

    .line 226
    iget-boolean v0, v7, Lz2;->n0:Z

    if-nez v0, :cond_16

    .line 227
    iget-object v0, v7, Lz2;->x:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v14}, LY2;->c(Lz2;Landroid/os/Bundle;Z)V

    .line 228
    iget-object v0, v7, Lz2;->x:Landroid/os/Bundle;

    .line 229
    iget-object v1, v7, Lz2;->P:LY2;

    if-eqz v1, :cond_14

    .line 230
    invoke-virtual {v1}, LY2;->p()V

    .line 231
    :cond_14
    iput v8, v7, Lz2;->w:I

    .line 232
    iput-boolean v14, v7, Lz2;->c0:Z

    .line 233
    invoke-virtual {v7, v0}, Lz2;->b(Landroid/os/Bundle;)V

    .line 234
    iput-boolean v8, v7, Lz2;->n0:Z

    .line 235
    iget-boolean v0, v7, Lz2;->c0:Z

    if-eqz v0, :cond_15

    .line 236
    iget-object v0, v7, Lz2;->o0:Lo;

    sget-object v1, Lk;->w:Lk;

    invoke-virtual {v0, v1}, Lo;->a(Lk;)V

    .line 237
    iget-object v0, v7, Lz2;->x:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v14}, LY2;->b(Lz2;Landroid/os/Bundle;Z)V

    goto :goto_a

    .line 238
    :cond_15
    new-instance v0, LO3;

    const-string v1, " did not call through to super.onCreate()"

    invoke-static {v13, v7, v1}, LZi;->a(Ljava/lang/String;Lz2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LO3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_16
    iget-object v0, v7, Lz2;->x:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Lz2;->f(Landroid/os/Bundle;)V

    .line 240
    iput v8, v7, Lz2;->w:I

    .line 241
    :goto_a
    iput-boolean v14, v7, Lz2;->Z:Z

    goto :goto_b

    .line 242
    :cond_17
    new-instance v0, LO3;

    const-string v1, " did not call through to super.onAttach()"

    invoke-static {v13, v7, v1}, LZi;->a(Ljava/lang/String;Lz2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LO3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_18
    :goto_b
    iget-boolean v0, v7, Lz2;->I:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1b

    iget-boolean v0, v7, Lz2;->L:Z

    if-nez v0, :cond_1b

    .line 244
    iget-object v0, v7, Lz2;->x:Landroid/os/Bundle;

    .line 245
    invoke-virtual {v7, v0}, Lz2;->c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 246
    iput-object v0, v7, Lz2;->m0:Landroid/view/LayoutInflater;

    .line 247
    iget-object v2, v7, Lz2;->x:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v15, v2}, Lz2;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 248
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 249
    iput-object v0, v7, Lz2;->f0:Landroid/view/View;

    .line 250
    invoke-virtual {v0, v14}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 251
    iget-boolean v0, v7, Lz2;->W:Z

    if-eqz v0, :cond_19

    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :cond_19
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    iget-object v2, v7, Lz2;->x:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v2}, Lz2;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 253
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    iget-object v2, v7, Lz2;->x:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v2, v14}, LY2;->a(Lz2;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_c

    .line 254
    :cond_1a
    iput-object v15, v7, Lz2;->f0:Landroid/view/View;

    :cond_1b
    :goto_c
    if-le v11, v8, :cond_2a

    .line 255
    iget-boolean v0, v7, Lz2;->I:Z

    if-nez v0, :cond_24

    .line 256
    iget v0, v7, Lz2;->U:I

    if-eqz v0, :cond_1e

    if-eq v0, v12, :cond_1d

    .line 257
    iget-object v2, v6, LY2;->I:LE2;

    invoke-virtual {v2, v0}, LE2;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1f

    .line 258
    iget-boolean v2, v7, Lz2;->K:Z

    if-eqz v2, :cond_1c

    goto :goto_e

    .line 259
    :cond_1c
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v7, Lz2;->U:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    const-string v0, "unknown"

    .line 260
    :goto_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No view found for id 0x"

    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lz2;->U:I

    .line 261
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v6, v1}, LY2;->a(Ljava/lang/RuntimeException;)V

    throw v15

    .line 263
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create fragment "

    const-string v2, " for a container view with no id"

    invoke-static {v1, v7, v2}, LZi;->a(Ljava/lang/String;Lz2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, LY2;->a(Ljava/lang/RuntimeException;)V

    throw v15

    :cond_1e
    move-object v0, v15

    .line 264
    :cond_1f
    :goto_e
    iput-object v0, v7, Lz2;->d0:Landroid/view/ViewGroup;

    .line 265
    iget-object v2, v7, Lz2;->x:Landroid/os/Bundle;

    .line 266
    invoke-virtual {v7, v2}, Lz2;->c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 267
    iput-object v2, v7, Lz2;->m0:Landroid/view/LayoutInflater;

    .line 268
    iget-object v3, v7, Lz2;->x:Landroid/os/Bundle;

    invoke-virtual {v7, v2, v0, v3}, Lz2;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 269
    iget-object v2, v7, Lz2;->e0:Landroid/view/View;

    if-eqz v2, :cond_23

    .line 270
    iput-object v2, v7, Lz2;->f0:Landroid/view/View;

    .line 271
    invoke-virtual {v2, v14}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    if-eqz v0, :cond_20

    .line 272
    iget-object v2, v7, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 273
    :cond_20
    iget-boolean v0, v7, Lz2;->W:Z

    if-eqz v0, :cond_21

    .line 274
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    :cond_21
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    iget-object v1, v7, Lz2;->x:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v1}, Lz2;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 276
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    iget-object v1, v7, Lz2;->x:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v1, v14}, LY2;->a(Lz2;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 277
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v7, Lz2;->d0:Landroid/view/ViewGroup;

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_f

    :cond_22
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, v7, Lz2;->j0:Z

    goto :goto_10

    .line 278
    :cond_23
    iput-object v15, v7, Lz2;->f0:Landroid/view/View;

    .line 279
    :cond_24
    :goto_10
    iget-object v0, v7, Lz2;->x:Landroid/os/Bundle;

    .line 280
    iget-object v1, v7, Lz2;->P:LY2;

    if-eqz v1, :cond_25

    .line 281
    invoke-virtual {v1}, LY2;->p()V

    .line 282
    :cond_25
    iput v10, v7, Lz2;->w:I

    .line 283
    iput-boolean v14, v7, Lz2;->c0:Z

    .line 284
    invoke-virtual {v7, v0}, Lz2;->a(Landroid/os/Bundle;)V

    .line 285
    iget-boolean v0, v7, Lz2;->c0:Z

    if-eqz v0, :cond_29

    .line 286
    iget-object v0, v7, Lz2;->P:LY2;

    if-eqz v0, :cond_26

    .line 287
    invoke-virtual {v0}, LY2;->g()V

    .line 288
    :cond_26
    iget-object v0, v7, Lz2;->x:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v14}, LY2;->a(Lz2;Landroid/os/Bundle;Z)V

    .line 289
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    if-eqz v0, :cond_28

    .line 290
    iget-object v0, v7, Lz2;->x:Landroid/os/Bundle;

    .line 291
    iget-object v0, v7, Lz2;->y:Landroid/util/SparseArray;

    if-eqz v0, :cond_27

    .line 292
    iget-object v1, v7, Lz2;->f0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 293
    iput-object v15, v7, Lz2;->y:Landroid/util/SparseArray;

    .line 294
    :cond_27
    iput-boolean v14, v7, Lz2;->c0:Z

    .line 295
    iput-boolean v8, v7, Lz2;->c0:Z

    .line 296
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    if-eqz v0, :cond_28

    .line 297
    iget-object v0, v7, Lz2;->p0:Lo;

    sget-object v1, Lk;->w:Lk;

    invoke-virtual {v0, v1}, Lo;->a(Lk;)V

    .line 298
    :cond_28
    iput-object v15, v7, Lz2;->x:Landroid/os/Bundle;

    goto :goto_11

    .line 299
    :cond_29
    new-instance v0, LO3;

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-static {v13, v7, v1}, LZi;->a(Ljava/lang/String;Lz2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LO3;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_11
    if-le v11, v10, :cond_2f

    .line 300
    iget-object v0, v7, Lz2;->P:LY2;

    if-eqz v0, :cond_2b

    .line 301
    invoke-virtual {v0}, LY2;->p()V

    .line 302
    iget-object v0, v7, Lz2;->P:LY2;

    invoke-virtual {v0}, LY2;->n()Z

    .line 303
    :cond_2b
    iput v9, v7, Lz2;->w:I

    .line 304
    iput-boolean v14, v7, Lz2;->c0:Z

    .line 305
    invoke-virtual/range {p1 .. p1}, Lz2;->M()V

    .line 306
    iget-boolean v0, v7, Lz2;->c0:Z

    if-eqz v0, :cond_2e

    .line 307
    iget-object v0, v7, Lz2;->P:LY2;

    if-eqz v0, :cond_2c

    .line 308
    invoke-virtual {v0}, LY2;->l()V

    .line 309
    :cond_2c
    iget-object v0, v7, Lz2;->o0:Lo;

    sget-object v1, Lk;->x:Lk;

    invoke-virtual {v0, v1}, Lo;->a(Lk;)V

    .line 310
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    if-eqz v0, :cond_2d

    .line 311
    iget-object v0, v7, Lz2;->p0:Lo;

    sget-object v1, Lk;->x:Lk;

    invoke-virtual {v0, v1}, Lo;->a(Lk;)V

    .line 312
    :cond_2d
    invoke-virtual {v6, v7, v14}, LY2;->f(Lz2;Z)V

    goto :goto_12

    .line 313
    :cond_2e
    new-instance v0, LO3;

    const-string v1, " did not call through to super.onStart()"

    invoke-static {v13, v7, v1}, LZi;->a(Ljava/lang/String;Lz2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LO3;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_12
    if-le v11, v9, :cond_54

    .line 314
    iget-object v0, v7, Lz2;->P:LY2;

    if-eqz v0, :cond_30

    .line 315
    invoke-virtual {v0}, LY2;->p()V

    .line 316
    iget-object v0, v7, Lz2;->P:LY2;

    invoke-virtual {v0}, LY2;->n()Z

    :cond_30
    const/4 v0, 0x4

    .line 317
    iput v0, v7, Lz2;->w:I

    .line 318
    iput-boolean v14, v7, Lz2;->c0:Z

    .line 319
    invoke-virtual/range {p1 .. p1}, Lz2;->L()V

    .line 320
    iget-boolean v0, v7, Lz2;->c0:Z

    if-eqz v0, :cond_33

    .line 321
    iget-object v0, v7, Lz2;->P:LY2;

    if-eqz v0, :cond_31

    .line 322
    invoke-virtual {v0}, LY2;->k()V

    .line 323
    iget-object v0, v7, Lz2;->P:LY2;

    invoke-virtual {v0}, LY2;->n()Z

    .line 324
    :cond_31
    iget-object v0, v7, Lz2;->o0:Lo;

    sget-object v1, Lk;->y:Lk;

    invoke-virtual {v0, v1}, Lo;->a(Lk;)V

    .line 325
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    if-eqz v0, :cond_32

    .line 326
    iget-object v0, v7, Lz2;->p0:Lo;

    sget-object v1, Lk;->y:Lk;

    invoke-virtual {v0, v1}, Lo;->a(Lk;)V

    .line 327
    :cond_32
    invoke-virtual {v6, v7, v14}, LY2;->e(Lz2;Z)V

    .line 328
    iput-object v15, v7, Lz2;->x:Landroid/os/Bundle;

    .line 329
    iput-object v15, v7, Lz2;->y:Landroid/util/SparseArray;

    goto/16 :goto_1c

    .line 330
    :cond_33
    new-instance v0, LO3;

    const-string v1, " did not call through to super.onResume()"

    invoke-static {v13, v7, v1}, LZi;->a(Ljava/lang/String;Lz2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LO3;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    if-le v0, v11, :cond_54

    if-eq v0, v8, :cond_47

    if-eq v0, v10, :cond_3d

    if-eq v0, v9, :cond_39

    const/4 v1, 0x4

    if-eq v0, v1, :cond_35

    goto/16 :goto_1c

    :cond_35
    if-ge v11, v1, :cond_39

    .line 331
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    if-eqz v0, :cond_36

    .line 332
    iget-object v0, v7, Lz2;->p0:Lo;

    sget-object v1, Lk;->z:Lk;

    invoke-virtual {v0, v1}, Lo;->a(Lk;)V

    .line 333
    :cond_36
    iget-object v0, v7, Lz2;->o0:Lo;

    sget-object v1, Lk;->z:Lk;

    invoke-virtual {v0, v1}, Lo;->a(Lk;)V

    .line 334
    iget-object v0, v7, Lz2;->P:LY2;

    if-eqz v0, :cond_37

    .line 335
    invoke-virtual {v0, v9}, LY2;->a(I)V

    .line 336
    :cond_37
    iput v9, v7, Lz2;->w:I

    .line 337
    iput-boolean v14, v7, Lz2;->c0:Z

    .line 338
    invoke-virtual/range {p1 .. p1}, Lz2;->K()V

    .line 339
    iget-boolean v0, v7, Lz2;->c0:Z

    if-eqz v0, :cond_38

    .line 340
    invoke-virtual {v6, v7, v14}, LY2;->d(Lz2;Z)V

    goto :goto_13

    .line 341
    :cond_38
    new-instance v0, LO3;

    const-string v1, " did not call through to super.onPause()"

    invoke-static {v13, v7, v1}, LZi;->a(Ljava/lang/String;Lz2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LO3;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    :goto_13
    if-ge v11, v9, :cond_3d

    .line 342
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    if-eqz v0, :cond_3a

    .line 343
    iget-object v0, v7, Lz2;->p0:Lo;

    sget-object v1, Lk;->A:Lk;

    invoke-virtual {v0, v1}, Lo;->a(Lk;)V

    .line 344
    :cond_3a
    iget-object v0, v7, Lz2;->o0:Lo;

    sget-object v1, Lk;->A:Lk;

    invoke-virtual {v0, v1}, Lo;->a(Lk;)V

    .line 345
    iget-object v0, v7, Lz2;->P:LY2;

    if-eqz v0, :cond_3b

    .line 346
    iput-boolean v8, v0, LY2;->N:Z

    .line 347
    invoke-virtual {v0, v10}, LY2;->a(I)V

    .line 348
    :cond_3b
    iput v10, v7, Lz2;->w:I

    .line 349
    iput-boolean v14, v7, Lz2;->c0:Z

    .line 350
    invoke-virtual/range {p1 .. p1}, Lz2;->N()V

    .line 351
    iget-boolean v0, v7, Lz2;->c0:Z

    if-eqz v0, :cond_3c

    .line 352
    invoke-virtual {v6, v7, v14}, LY2;->g(Lz2;Z)V

    goto :goto_14

    .line 353
    :cond_3c
    new-instance v0, LO3;

    const-string v1, " did not call through to super.onStop()"

    invoke-static {v13, v7, v1}, LZi;->a(Ljava/lang/String;Lz2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LO3;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    :goto_14
    if-ge v11, v10, :cond_47

    .line 354
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    if-eqz v0, :cond_3e

    .line 355
    iget-object v0, v6, LY2;->H:LG2;

    check-cast v0, LB2;

    .line 356
    iget-object v0, v0, LB2;->e:LD2;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/2addr v0, v8

    if-eqz v0, :cond_3e

    .line 357
    iget-object v0, v7, Lz2;->y:Landroid/util/SparseArray;

    if-nez v0, :cond_3e

    .line 358
    invoke-virtual/range {p0 .. p1}, LY2;->g(Lz2;)V

    .line 359
    :cond_3e
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    if-eqz v0, :cond_3f

    .line 360
    iget-object v0, v7, Lz2;->p0:Lo;

    sget-object v1, Lk;->B:Lk;

    invoke-virtual {v0, v1}, Lo;->a(Lk;)V

    .line 361
    :cond_3f
    iget-object v0, v7, Lz2;->P:LY2;

    if-eqz v0, :cond_40

    .line 362
    invoke-virtual {v0, v8}, LY2;->a(I)V

    .line 363
    :cond_40
    iput v8, v7, Lz2;->w:I

    .line 364
    iput-boolean v14, v7, Lz2;->c0:Z

    .line 365
    invoke-virtual/range {p1 .. p1}, Lz2;->I()V

    .line 366
    iget-boolean v0, v7, Lz2;->c0:Z

    if-eqz v0, :cond_46

    .line 367
    invoke-static/range {p1 .. p1}, Lw3;->a(Ln;)Lw3;

    move-result-object v0

    check-cast v0, LA3;

    .line 368
    iget-object v0, v0, LA3;->b:Lz3;

    .line 369
    iget-object v1, v0, Lz3;->a:Le7;

    invoke-virtual {v1}, Le7;->c()I

    move-result v1

    if-gtz v1, :cond_45

    .line 370
    iput-boolean v14, v7, Lz2;->L:Z

    .line 371
    invoke-virtual {v6, v7, v14}, LY2;->h(Lz2;Z)V

    .line 372
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    if-eqz v0, :cond_44

    iget-object v1, v7, Lz2;->d0:Landroid/view/ViewGroup;

    if-eqz v1, :cond_44

    .line 373
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 374
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 375
    iget v0, v6, LY2;->G:I

    const/4 v1, 0x0

    if-lez v0, :cond_41

    iget-boolean v0, v6, LY2;->O:Z

    if-nez v0, :cond_41

    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    .line 376
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_41

    iget v0, v7, Lz2;->l0:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_41

    move/from16 v0, p3

    move/from16 v2, p4

    .line 377
    invoke-virtual {v6, v7, v0, v14, v2}, LY2;->a(Lz2;IZI)LQ2;

    move-result-object v0

    goto :goto_15

    :cond_41
    move-object v0, v15

    .line 378
    :goto_15
    iput v1, v7, Lz2;->l0:F

    if-eqz v0, :cond_43

    .line 379
    iget-object v1, v7, Lz2;->e0:Landroid/view/View;

    .line 380
    iget-object v2, v7, Lz2;->d0:Landroid/view/ViewGroup;

    .line 381
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 382
    invoke-virtual/range {p1 .. p1}, Lz2;->k()Lw2;

    move-result-object v3

    iput v11, v3, Lw2;->c:I

    .line 383
    iget-object v3, v0, LQ2;->a:Landroid/view/animation/Animation;

    if-eqz v3, :cond_42

    .line 384
    new-instance v3, LS2;

    iget-object v4, v0, LQ2;->a:Landroid/view/animation/Animation;

    invoke-direct {v3, v4, v2, v1}, LS2;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 385
    iget-object v4, v7, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v7, v4}, Lz2;->a(Landroid/view/View;)V

    .line 386
    invoke-static {v3}, LY2;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v4

    .line 387
    new-instance v5, LK2;

    invoke-direct {v5, v6, v4, v2, v7}, LK2;-><init>(LY2;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Lz2;)V

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 388
    invoke-static {v1, v0}, LY2;->a(Landroid/view/View;LQ2;)V

    .line 389
    iget-object v0, v7, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_16

    .line 390
    :cond_42
    iget-object v3, v0, LQ2;->b:Landroid/animation/Animator;

    .line 391
    invoke-virtual {v7, v3}, Lz2;->a(Landroid/animation/Animator;)V

    .line 392
    new-instance v4, LL2;

    invoke-direct {v4, v6, v2, v1, v7}, LL2;-><init>(LY2;Landroid/view/ViewGroup;Landroid/view/View;Lz2;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 393
    iget-object v1, v7, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 394
    iget-object v1, v7, Lz2;->e0:Landroid/view/View;

    invoke-static {v1, v0}, LY2;->a(Landroid/view/View;LQ2;)V

    .line 395
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 396
    :cond_43
    :goto_16
    iget-object v0, v7, Lz2;->d0:Landroid/view/ViewGroup;

    iget-object v1, v7, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 397
    :cond_44
    iput-object v15, v7, Lz2;->d0:Landroid/view/ViewGroup;

    .line 398
    iput-object v15, v7, Lz2;->e0:Landroid/view/View;

    .line 399
    iput-object v15, v7, Lz2;->q0:Ln;

    .line 400
    iget-object v0, v7, Lz2;->r0:Lr;

    invoke-virtual {v0, v15}, Lr;->a(Ljava/lang/Object;)V

    .line 401
    iput-object v15, v7, Lz2;->f0:Landroid/view/View;

    .line 402
    iput-boolean v14, v7, Lz2;->J:Z

    goto :goto_17

    .line 403
    :cond_45
    iget-object v0, v0, Lz3;->a:Le7;

    invoke-virtual {v0, v14}, Le7;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx3;

    .line 404
    throw v15

    .line 405
    :cond_46
    new-instance v0, LO3;

    const-string v1, " did not call through to super.onDestroyView()"

    invoke-static {v13, v7, v1}, LZi;->a(Ljava/lang/String;Lz2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LO3;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    :goto_17
    if-ge v11, v8, :cond_54

    .line 406
    iget-boolean v0, v6, LY2;->O:Z

    if-eqz v0, :cond_49

    .line 407
    invoke-virtual/range {p1 .. p1}, Lz2;->m()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 408
    invoke-virtual/range {p1 .. p1}, Lz2;->m()Landroid/view/View;

    move-result-object v0

    .line 409
    invoke-virtual {v7, v15}, Lz2;->a(Landroid/view/View;)V

    .line 410
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_18

    .line 411
    :cond_48
    invoke-virtual/range {p1 .. p1}, Lz2;->n()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 412
    invoke-virtual/range {p1 .. p1}, Lz2;->n()Landroid/animation/Animator;

    move-result-object v0

    .line 413
    invoke-virtual {v7, v15}, Lz2;->a(Landroid/animation/Animator;)V

    .line 414
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 415
    :cond_49
    :goto_18
    invoke-virtual/range {p1 .. p1}, Lz2;->m()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_53

    invoke-virtual/range {p1 .. p1}, Lz2;->n()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_4a

    goto/16 :goto_1b

    .line 416
    :cond_4a
    iget-boolean v0, v7, Lz2;->Z:Z

    if-nez v0, :cond_4d

    .line 417
    iget-object v0, v7, Lz2;->o0:Lo;

    sget-object v1, Lk;->B:Lk;

    invoke-virtual {v0, v1}, Lo;->a(Lk;)V

    .line 418
    iget-object v0, v7, Lz2;->P:LY2;

    if-eqz v0, :cond_4b

    .line 419
    invoke-virtual {v0}, LY2;->i()V

    .line 420
    :cond_4b
    iput v14, v7, Lz2;->w:I

    .line 421
    iput-boolean v14, v7, Lz2;->c0:Z

    .line 422
    iput-boolean v14, v7, Lz2;->n0:Z

    .line 423
    invoke-virtual/range {p1 .. p1}, Lz2;->H()V

    .line 424
    iget-boolean v0, v7, Lz2;->c0:Z

    if-eqz v0, :cond_4c

    .line 425
    iput-object v15, v7, Lz2;->P:LY2;

    .line 426
    invoke-virtual {v6, v7, v14}, LY2;->b(Lz2;Z)V

    goto :goto_19

    .line 427
    :cond_4c
    new-instance v0, LO3;

    const-string v1, " did not call through to super.onDestroy()"

    invoke-static {v13, v7, v1}, LZi;->a(Ljava/lang/String;Lz2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LO3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_4d
    iput v14, v7, Lz2;->w:I

    .line 429
    :goto_19
    iput-boolean v14, v7, Lz2;->c0:Z

    .line 430
    invoke-virtual/range {p1 .. p1}, Lz2;->J()V

    .line 431
    iput-object v15, v7, Lz2;->m0:Landroid/view/LayoutInflater;

    .line 432
    iget-boolean v0, v7, Lz2;->c0:Z

    if-eqz v0, :cond_52

    .line 433
    iget-object v0, v7, Lz2;->P:LY2;

    if-eqz v0, :cond_4f

    .line 434
    iget-boolean v1, v7, Lz2;->Z:Z

    if-eqz v1, :cond_4e

    .line 435
    invoke-virtual {v0}, LY2;->i()V

    .line 436
    iput-object v15, v7, Lz2;->P:LY2;

    goto :goto_1a

    .line 437
    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_4f
    :goto_1a
    invoke-virtual {v6, v7, v14}, LY2;->c(Lz2;Z)V

    if-nez p5, :cond_54

    .line 439
    iget-boolean v0, v7, Lz2;->Z:Z

    if-nez v0, :cond_51

    .line 440
    iget v0, v7, Lz2;->A:I

    if-gez v0, :cond_50

    goto :goto_1c

    .line 441
    :cond_50
    iget-object v1, v6, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    iput v12, v7, Lz2;->A:I

    .line 443
    iput-object v15, v7, Lz2;->B:Ljava/lang/String;

    .line 444
    iput-boolean v14, v7, Lz2;->G:Z

    .line 445
    iput-boolean v14, v7, Lz2;->H:Z

    .line 446
    iput-boolean v14, v7, Lz2;->I:Z

    .line 447
    iput-boolean v14, v7, Lz2;->J:Z

    .line 448
    iput-boolean v14, v7, Lz2;->K:Z

    .line 449
    iput v14, v7, Lz2;->M:I

    .line 450
    iput-object v15, v7, Lz2;->N:LY2;

    .line 451
    iput-object v15, v7, Lz2;->P:LY2;

    .line 452
    iput-object v15, v7, Lz2;->O:LG2;

    .line 453
    iput v14, v7, Lz2;->T:I

    .line 454
    iput v14, v7, Lz2;->U:I

    .line 455
    iput-object v15, v7, Lz2;->V:Ljava/lang/String;

    .line 456
    iput-boolean v14, v7, Lz2;->W:Z

    .line 457
    iput-boolean v14, v7, Lz2;->X:Z

    .line 458
    iput-boolean v14, v7, Lz2;->Z:Z

    goto :goto_1c

    .line 459
    :cond_51
    iput-object v15, v7, Lz2;->O:LG2;

    .line 460
    iput-object v15, v7, Lz2;->S:Lz2;

    .line 461
    iput-object v15, v7, Lz2;->N:LY2;

    goto :goto_1c

    .line 462
    :cond_52
    new-instance v0, LO3;

    const-string v1, " did not call through to super.onDetach()"

    invoke-static {v13, v7, v1}, LZi;->a(Ljava/lang/String;Lz2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LO3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_53
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Lz2;->k()Lw2;

    move-result-object v0

    iput v11, v0, Lw2;->c:I

    goto :goto_1d

    :cond_54
    :goto_1c
    move v8, v11

    .line 464
    :goto_1d
    iget v0, v7, Lz2;->w:I

    if-eq v0, v8, :cond_55

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToState: Fragment state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not updated inline; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "expected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lz2;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iput v8, v7, Lz2;->w:I

    :cond_55
    return-void
.end method

.method public a(Lz2;Landroid/content/Context;Z)V
    .locals 2

    .line 852
    iget-object v0, p0, LY2;->J:Lz2;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, v0, Lz2;->N:LY2;

    .line 854
    instance-of v1, v0, LY2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 855
    invoke-virtual {v0, p1, p2, v1}, LY2;->a(Lz2;Landroid/content/Context;Z)V

    .line 856
    :cond_0
    iget-object p1, p0, LY2;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT2;

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 857
    throw p1

    .line 858
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public a(Lz2;Landroid/os/Bundle;Z)V
    .locals 2

    .line 859
    iget-object v0, p0, LY2;->J:Lz2;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, v0, Lz2;->N:LY2;

    .line 861
    instance-of v1, v0, LY2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 862
    invoke-virtual {v0, p1, p2, v1}, LY2;->a(Lz2;Landroid/os/Bundle;Z)V

    .line 863
    :cond_0
    iget-object p1, p0, LY2;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT2;

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 864
    throw p1

    .line 865
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public a(Lz2;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 2

    .line 866
    iget-object v0, p0, LY2;->J:Lz2;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, v0, Lz2;->N:LY2;

    .line 868
    instance-of v1, v0, LY2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 869
    invoke-virtual {v0, p1, p2, p3, v1}, LY2;->a(Lz2;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 870
    :cond_0
    iget-object p1, p0, LY2;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT2;

    const/4 p1, 0x0

    if-eqz p4, :cond_1

    .line 871
    throw p1

    .line 872
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public a(Lz2;Z)V
    .locals 8

    .line 483
    invoke-virtual {p0, p1}, LY2;->c(Lz2;)V

    .line 484
    iget-boolean v0, p1, Lz2;->X:Z

    if-nez v0, :cond_3

    .line 485
    iget-object v0, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 486
    iget-object v0, p0, LY2;->z:Ljava/util/ArrayList;

    monitor-enter v0

    .line 487
    :try_start_0
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 489
    iput-boolean v0, p1, Lz2;->G:Z

    const/4 v1, 0x0

    .line 490
    iput-boolean v1, p1, Lz2;->H:Z

    .line 491
    iget-object v2, p1, Lz2;->e0:Landroid/view/View;

    if-nez v2, :cond_0

    .line 492
    iput-boolean v1, p1, Lz2;->k0:Z

    .line 493
    :cond_0
    iget-boolean v1, p1, Lz2;->a0:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lz2;->b0:Z

    if-eqz v1, :cond_1

    .line 494
    iput-boolean v0, p0, LY2;->L:Z

    :cond_1
    if-eqz p2, :cond_3

    .line 495
    iget v4, p0, LY2;->G:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, LY2;->a(Lz2;IIIZ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 496
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 497
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment already added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 814
    iget-object v0, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 815
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2;

    if-eqz v1, :cond_0

    .line 816
    iget-object v1, v1, Lz2;->P:LY2;

    if-eqz v1, :cond_0

    .line 817
    invoke-virtual {v1, p1}, LY2;->a(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 9

    .line 823
    iget v0, p0, LY2;->G:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move-object v4, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 824
    :goto_0
    iget-object v6, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 825
    iget-object v6, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz2;

    if-eqz v6, :cond_5

    .line 826
    iget-boolean v7, v6, Lz2;->W:Z

    if-nez v7, :cond_2

    .line 827
    iget-boolean v7, v6, Lz2;->a0:Z

    if-eqz v7, :cond_1

    iget-boolean v7, v6, Lz2;->b0:Z

    if-eqz v7, :cond_1

    .line 828
    invoke-virtual {v6, p1, p2}, Lz2;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 829
    :goto_1
    iget-object v8, v6, Lz2;->P:LY2;

    if-eqz v8, :cond_3

    .line 830
    invoke-virtual {v8, p1, p2}, LY2;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v8

    or-int/2addr v7, v8

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :cond_3
    :goto_2
    if-eqz v7, :cond_5

    if-nez v4, :cond_4

    .line 831
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 832
    :cond_4
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 833
    :cond_6
    iget-object p1, p0, LY2;->C:Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    .line 834
    :goto_3
    iget-object p1, p0, LY2;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_a

    .line 835
    iget-object p1, p0, LY2;->C:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2;

    if-eqz v4, :cond_7

    .line 836
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    :cond_7
    if-eqz p1, :cond_9

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 837
    :cond_9
    throw v0

    .line 838
    :cond_a
    iput-object v4, p0, LY2;->C:Ljava/util/ArrayList;

    return v5
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 5

    .line 839
    iget v0, p0, LY2;->G:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 840
    :goto_0
    iget-object v3, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 841
    iget-object v3, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz2;

    if-eqz v3, :cond_2

    .line 842
    iget-boolean v4, v3, Lz2;->W:Z

    if-nez v4, :cond_1

    .line 843
    iget-object v3, v3, Lz2;->P:LY2;

    if-eqz v3, :cond_1

    .line 844
    invoke-virtual {v3, p1}, LY2;->a(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 6

    .line 680
    iget-object v0, p0, LY2;->B:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_2

    .line 681
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_1

    return v1

    .line 682
    :cond_1
    iget-object p4, p0, LY2;->B:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2
    const/4 v0, -0x1

    if-nez p3, :cond_4

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    goto :goto_4

    .line 684
    :cond_4
    :goto_0
    iget-object v3, p0, LY2;->B:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_7

    .line 685
    iget-object v4, p0, LY2;->B:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq2;

    if-eqz p3, :cond_5

    .line 686
    iget-object v5, v4, Lq2;->k:Ljava/lang/String;

    .line 687
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    if-ltz p4, :cond_6

    .line 688
    iget v4, v4, Lq2;->m:I

    if-ne p4, v4, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-gez v3, :cond_8

    return v1

    :cond_8
    and-int/2addr p5, v2

    if-eqz p5, :cond_b

    :cond_9
    :goto_3
    add-int/2addr v3, v0

    if-ltz v3, :cond_b

    .line 689
    iget-object p5, p0, LY2;->B:Ljava/util/ArrayList;

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lq2;

    if-eqz p3, :cond_a

    .line 690
    iget-object v4, p5, Lq2;->k:Ljava/lang/String;

    .line 691
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_a
    if-ltz p4, :cond_b

    iget p5, p5, Lq2;->m:I

    if-ne p4, p5, :cond_b

    goto :goto_3

    .line 692
    :cond_b
    :goto_4
    iget-object p3, p0, LY2;->B:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-ne v3, p3, :cond_c

    return v1

    .line 693
    :cond_c
    iget-object p3, p0, LY2;->B:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_5
    if-le p3, v3, :cond_d

    .line 694
    iget-object p4, p0, LY2;->B:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_d
    :goto_6
    return v2
.end method

.method public b(I)Lz2;
    .locals 3

    .line 11
    iget-object v0, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 12
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2;

    if-eqz v1, :cond_0

    .line 13
    iget v2, v1, Lz2;->T:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, LY2;->A:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 16
    iget-object v1, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2;

    if-eqz v1, :cond_2

    .line 17
    iget v2, v1, Lz2;->T:I

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lz2;
    .locals 4

    .line 18
    iget-object v0, p0, LY2;->A:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 20
    iget-object v2, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2;

    if-eqz v2, :cond_2

    .line 21
    iget-object v3, v2, Lz2;->B:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    iget-object v2, v2, Lz2;->P:LY2;

    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {v2, p1}, LY2;->b(Ljava/lang/String;)Lz2;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public b(Lz2;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lz2;->X:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lz2;->X:Z

    .line 3
    iget-boolean v1, p1, Lz2;->G:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-boolean v1, p1, Lz2;->a0:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lz2;->b0:Z

    if-eqz v1, :cond_0

    .line 8
    iput-boolean v0, p0, LY2;->L:Z

    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p1, Lz2;->G:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lz2;Landroid/content/Context;Z)V
    .locals 2

    .line 56
    iget-object v0, p0, LY2;->J:Lz2;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, v0, Lz2;->N:LY2;

    .line 58
    instance-of v1, v0, LY2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, p1, p2, v1}, LY2;->b(Lz2;Landroid/content/Context;Z)V

    .line 60
    :cond_0
    iget-object p1, p0, LY2;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT2;

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 61
    throw p1

    .line 62
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public b(Lz2;Landroid/os/Bundle;Z)V
    .locals 2

    .line 63
    iget-object v0, p0, LY2;->J:Lz2;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, v0, Lz2;->N:LY2;

    .line 65
    instance-of v1, v0, LY2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, p1, p2, v1}, LY2;->b(Lz2;Landroid/os/Bundle;Z)V

    .line 67
    :cond_0
    iget-object p1, p0, LY2;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT2;

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 68
    throw p1

    .line 69
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public b(Lz2;Z)V
    .locals 2

    .line 70
    iget-object v0, p0, LY2;->J:Lz2;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, v0, Lz2;->N:LY2;

    .line 72
    instance-of v1, v0, LY2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, p1, v1}, LY2;->b(Lz2;Z)V

    .line 74
    :cond_0
    iget-object p1, p0, LY2;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT2;

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 75
    throw p1

    .line 76
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 36
    iget-object v0, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 37
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, v1, Lz2;->P:LY2;

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1, p1}, LY2;->b(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, LY2;->M:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, LY2;->N:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 6

    .line 40
    iget v0, p0, LY2;->G:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 41
    :goto_0
    iget-object v4, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 42
    iget-object v4, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz2;

    if-eqz v4, :cond_4

    .line 43
    iget-boolean v5, v4, Lz2;->W:Z

    if-nez v5, :cond_3

    .line 44
    iget-boolean v5, v4, Lz2;->a0:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Lz2;->b0:Z

    if-eqz v5, :cond_1

    .line 45
    invoke-virtual {v4, p1}, Lz2;->a(Landroid/view/Menu;)V

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 46
    :goto_1
    iget-object v4, v4, Lz2;->P:LY2;

    if-eqz v4, :cond_2

    .line 47
    invoke-virtual {v4, p1}, LY2;->b(Landroid/view/Menu;)Z

    move-result v4

    or-int/2addr v4, v5

    goto :goto_2

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 5

    .line 48
    iget v0, p0, LY2;->G:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    iget-object v3, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 50
    iget-object v3, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz2;

    if-eqz v3, :cond_3

    .line 51
    iget-boolean v4, v3, Lz2;->W:Z

    if-nez v4, :cond_2

    .line 52
    iget-boolean v4, v3, Lz2;->a0:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lz2;->b0:Z

    if-eqz v4, :cond_1

    .line 53
    invoke-virtual {v3, p1}, Lz2;->a(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    iget-object v3, v3, Lz2;->P:LY2;

    if-eqz v3, :cond_2

    .line 55
    invoke-virtual {v3, p1}, LY2;->b(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public final b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4

    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, LY2;->w:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, LY2;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    iget-object v0, p0, LY2;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 28
    iget-object v3, p0, LY2;->w:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LV2;

    invoke-interface {v3, p1, p2}, LV2;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, LY2;->w:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 30
    iget-object p1, p0, LY2;->H:LG2;

    .line 31
    iget-object p1, p1, LG2;->c:Landroid/os/Handler;

    .line 32
    iget-object p2, p0, LY2;->X:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    monitor-exit p0

    return v2

    .line 34
    :cond_2
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(I)V
    .locals 2

    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, LY2;->D:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, LY2;->E:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LY2;->E:Ljava/util/ArrayList;

    .line 22
    :cond_0
    iget-object v0, p0, LY2;->E:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    if-eqz p1, :cond_7

    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_6

    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 41
    invoke-virtual {p0, p1, p2}, LY2;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 43
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq2;

    iget-boolean v3, v3, Lq2;->t:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    .line 44
    invoke-virtual {p0, p1, p2, v2, v1}, LY2;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 45
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 46
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq2;

    iget-boolean v3, v3, Lq2;->t:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, LY2;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    .line 49
    invoke-virtual {p0, p1, p2, v2, v0}, LY2;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    .line 50
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    return-void
.end method

.method public c(Lz2;)V
    .locals 2

    .line 13
    iget v0, p1, Lz2;->A:I

    if-ltz v0, :cond_0

    return-void

    .line 14
    :cond_0
    iget v0, p0, LY2;->y:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LY2;->y:I

    iget-object v1, p0, LY2;->J:Lz2;

    invoke-virtual {p1, v0, v1}, Lz2;->a(ILz2;)V

    .line 15
    iget-object v0, p0, LY2;->A:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LY2;->A:Landroid/util/SparseArray;

    .line 17
    :cond_1
    iget-object v0, p0, LY2;->A:Landroid/util/SparseArray;

    iget v1, p1, Lz2;->A:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public c(Lz2;Landroid/os/Bundle;Z)V
    .locals 2

    .line 51
    iget-object v0, p0, LY2;->J:Lz2;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, v0, Lz2;->N:LY2;

    .line 53
    instance-of v1, v0, LY2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, p1, p2, v1}, LY2;->c(Lz2;Landroid/os/Bundle;Z)V

    .line 55
    :cond_0
    iget-object p1, p0, LY2;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT2;

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 56
    throw p1

    .line 57
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public c(Lz2;Z)V
    .locals 2

    .line 58
    iget-object v0, p0, LY2;->J:Lz2;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, v0, Lz2;->N:LY2;

    .line 60
    instance-of v1, v0, LY2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, p1, v1}, LY2;->c(Lz2;Z)V

    .line 62
    :cond_0
    iget-object p1, p0, LY2;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT2;

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 63
    throw p1

    .line 64
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 24
    iget-boolean v0, p0, LY2;->x:Z

    if-nez v0, :cond_4

    .line 25
    iget-object v0, p0, LY2;->H:LG2;

    if-eqz v0, :cond_3

    .line 26
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, LY2;->H:LG2;

    .line 27
    iget-object v1, v1, LG2;->c:Landroid/os/Handler;

    .line 28
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_0

    .line 29
    invoke-virtual {p0}, LY2;->e()V

    .line 30
    :cond_0
    iget-object p1, p0, LY2;->Q:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LY2;->Q:Ljava/util/ArrayList;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LY2;->R:Ljava/util/ArrayList;

    :cond_1
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, LY2;->x:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 34
    :try_start_0
    invoke-virtual {p0, v0, v0}, LY2;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iput-boolean p1, p0, LY2;->x:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, p0, LY2;->x:Z

    throw v0

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment host has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, LY2;->e()V

    .line 2
    invoke-virtual {p0}, LY2;->n()Z

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, LY2;->c(Z)V

    .line 4
    iget-object v1, p0, LY2;->K:Lz2;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v1, Lz2;->P:LY2;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, LH2;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v3, p0, LY2;->Q:Ljava/util/ArrayList;

    iget-object v4, p0, LY2;->R:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, LY2;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iput-boolean v0, p0, LY2;->x:Z

    .line 9
    :try_start_0
    iget-object v0, p0, LY2;->Q:Ljava/util/ArrayList;

    iget-object v2, p0, LY2;->R:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, LY2;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0}, LY2;->f()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, LY2;->f()V

    throw v0

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0}, LY2;->m()V

    .line 12
    invoke-virtual {p0}, LY2;->d()V

    move v0, v1

    :goto_1
    return v0
.end method

.method public final d()V
    .locals 3

    .line 59
    iget-object v0, p0, LY2;->A:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 61
    iget-object v1, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Lz2;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, LY2;->G:I

    .line 2
    iget-boolean v1, p1, Lz2;->H:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lz2;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    :goto_0
    move v6, v0

    .line 6
    invoke-virtual {p1}, Lz2;->t()I

    move-result v7

    invoke-virtual {p1}, Lz2;->u()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, LY2;->a(Lz2;IIIZ)V

    .line 7
    iget-object v0, p1, Lz2;->e0:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 8
    iget-object v1, p1, Lz2;->d0:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    if-nez v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    .line 10
    iget-object v5, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz2;

    .line 11
    iget-object v6, v5, Lz2;->d0:Landroid/view/ViewGroup;

    if-ne v6, v1, :cond_4

    iget-object v6, v5, Lz2;->e0:Landroid/view/View;

    if-eqz v6, :cond_4

    move-object v4, v5

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    .line 12
    iget-object v0, v4, Lz2;->e0:Landroid/view/View;

    .line 13
    iget-object v1, p1, Lz2;->d0:Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 15
    iget-object v4, p1, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ge v4, v0, :cond_6

    .line 16
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 17
    iget-object v4, p1, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 18
    :cond_6
    iget-boolean v0, p1, Lz2;->j0:Z

    if-eqz v0, :cond_9

    iget-object v0, p1, Lz2;->d0:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 19
    iget v0, p1, Lz2;->l0:F

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_7

    .line 20
    iget-object v4, p1, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 21
    :cond_7
    iput v1, p1, Lz2;->l0:F

    .line 22
    iput-boolean v3, p1, Lz2;->j0:Z

    .line 23
    invoke-virtual {p1}, Lz2;->t()I

    move-result v0

    .line 24
    invoke-virtual {p1}, Lz2;->u()I

    move-result v1

    .line 25
    invoke-virtual {p0, p1, v0, v2, v1}, LY2;->a(Lz2;IZI)LQ2;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 26
    iget-object v1, p1, Lz2;->e0:Landroid/view/View;

    invoke-static {v1, v0}, LY2;->a(Landroid/view/View;LQ2;)V

    .line 27
    iget-object v1, v0, LQ2;->a:Landroid/view/animation/Animation;

    if-eqz v1, :cond_8

    .line 28
    iget-object v0, p1, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 29
    :cond_8
    iget-object v1, v0, LQ2;->b:Landroid/animation/Animator;

    iget-object v4, p1, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 30
    iget-object v0, v0, LQ2;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 31
    :cond_9
    :goto_2
    iget-boolean v0, p1, Lz2;->k0:Z

    if-eqz v0, :cond_11

    .line 32
    iget-object v0, p1, Lz2;->e0:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 33
    invoke-virtual {p1}, Lz2;->t()I

    move-result v0

    iget-boolean v1, p1, Lz2;->W:Z

    xor-int/2addr v1, v2

    .line 34
    invoke-virtual {p1}, Lz2;->u()I

    move-result v4

    .line 35
    invoke-virtual {p0, p1, v0, v1, v4}, LY2;->a(Lz2;IZI)LQ2;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 36
    iget-object v1, v0, LQ2;->b:Landroid/animation/Animator;

    if-eqz v1, :cond_c

    .line 37
    iget-object v4, p1, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 38
    iget-boolean v1, p1, Lz2;->W:Z

    if-eqz v1, :cond_b

    .line 39
    invoke-virtual {p1}, Lz2;->C()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 40
    invoke-virtual {p1, v3}, Lz2;->d(Z)V

    goto :goto_3

    .line 41
    :cond_a
    iget-object v1, p1, Lz2;->d0:Landroid/view/ViewGroup;

    .line 42
    iget-object v4, p1, Lz2;->e0:Landroid/view/View;

    .line 43
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 44
    iget-object v5, v0, LQ2;->b:Landroid/animation/Animator;

    new-instance v6, LM2;

    invoke-direct {v6, p0, v1, v4, p1}, LM2;-><init>(LY2;Landroid/view/ViewGroup;Landroid/view/View;Lz2;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    .line 45
    :cond_b
    iget-object v1, p1, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :goto_3
    iget-object v1, p1, Lz2;->e0:Landroid/view/View;

    invoke-static {v1, v0}, LY2;->a(Landroid/view/View;LQ2;)V

    .line 47
    iget-object v0, v0, LQ2;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_5

    :cond_c
    if-eqz v0, :cond_d

    .line 48
    iget-object v1, p1, Lz2;->e0:Landroid/view/View;

    invoke-static {v1, v0}, LY2;->a(Landroid/view/View;LQ2;)V

    .line 49
    iget-object v1, p1, Lz2;->e0:Landroid/view/View;

    iget-object v4, v0, LQ2;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 50
    iget-object v0, v0, LQ2;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 51
    :cond_d
    iget-boolean v0, p1, Lz2;->W:Z

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lz2;->C()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x8

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    .line 52
    :goto_4
    iget-object v1, p1, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 53
    invoke-virtual {p1}, Lz2;->C()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 54
    invoke-virtual {p1, v3}, Lz2;->d(Z)V

    .line 55
    :cond_f
    :goto_5
    iget-boolean v0, p1, Lz2;->G:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lz2;->a0:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lz2;->b0:Z

    if-eqz v0, :cond_10

    .line 56
    iput-boolean v2, p0, LY2;->L:Z

    .line 57
    :cond_10
    iput-boolean v3, p1, Lz2;->k0:Z

    .line 58
    iget-boolean p1, p1, Lz2;->W:Z

    :cond_11
    return-void
.end method

.method public d(Lz2;Landroid/os/Bundle;Z)V
    .locals 2

    .line 70
    iget-object v0, p0, LY2;->J:Lz2;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, v0, Lz2;->N:LY2;

    .line 72
    instance-of v1, v0, LY2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, p1, p2, v1}, LY2;->d(Lz2;Landroid/os/Bundle;Z)V

    .line 74
    :cond_0
    iget-object p1, p0, LY2;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT2;

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 75
    throw p1

    .line 76
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public d(Lz2;Z)V
    .locals 2

    .line 63
    iget-object v0, p0, LY2;->J:Lz2;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, v0, Lz2;->N:LY2;

    .line 65
    instance-of v1, v0, LY2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, p1, v1}, LY2;->d(Lz2;Z)V

    .line 67
    :cond_0
    iget-object p1, p0, LY2;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT2;

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 68
    throw p1

    .line 69
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 2

    .line 6
    invoke-virtual {p0}, LY2;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Lz2;)V
    .locals 7

    .line 1
    iget-boolean v0, p1, Lz2;->g0:Z

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, LY2;->x:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, LY2;->P:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lz2;->g0:Z

    .line 5
    iget v3, p0, LY2;->G:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, LY2;->a(Lz2;IIIZ)V

    :cond_1
    return-void
.end method

.method public e(Lz2;Z)V
    .locals 2

    .line 8
    iget-object v0, p0, LY2;->J:Lz2;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, v0, Lz2;->N:LY2;

    .line 10
    instance-of v1, v0, LY2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, p1, v1}, LY2;->e(Lz2;Z)V

    .line 12
    :cond_0
    iget-object p1, p0, LY2;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT2;

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 13
    throw p1

    .line 14
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, LY2;->x:Z

    .line 12
    iget-object v0, p0, LY2;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    iget-object v0, p0, LY2;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public f(Lz2;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lz2;->D()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2
    iget-boolean v2, p1, Lz2;->X:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    iget-object v0, p0, LY2;->z:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-boolean v0, p1, Lz2;->a0:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lz2;->b0:Z

    if-eqz v0, :cond_1

    .line 7
    iput-boolean v1, p0, LY2;->L:Z

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p1, Lz2;->G:Z

    .line 9
    iput-boolean v1, p1, Lz2;->H:Z

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f(Lz2;Z)V
    .locals 2

    .line 14
    iget-object v0, p0, LY2;->J:Lz2;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, v0, Lz2;->N:LY2;

    .line 16
    instance-of v1, v0, LY2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, p1, v1}, LY2;->f(Lz2;Z)V

    .line 18
    :cond_0
    iget-object p1, p0, LY2;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT2;

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 19
    throw p1

    .line 20
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, LY2;->M:Z

    .line 10
    iput-boolean v0, p0, LY2;->N:Z

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, v0}, LY2;->a(I)V

    return-void
.end method

.method public g(Lz2;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lz2;->f0:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LY2;->U:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LY2;->U:Landroid/util/SparseArray;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 5
    :goto_0
    iget-object v0, p1, Lz2;->f0:Landroid/view/View;

    iget-object v1, p0, LY2;->U:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 6
    iget-object v0, p0, LY2;->U:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 7
    iget-object v0, p0, LY2;->U:Landroid/util/SparseArray;

    iput-object v0, p1, Lz2;->y:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, LY2;->U:Landroid/util/SparseArray;

    :cond_2
    return-void
.end method

.method public g(Lz2;Z)V
    .locals 2

    .line 12
    iget-object v0, p0, LY2;->J:Lz2;

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, v0, Lz2;->N:LY2;

    .line 14
    instance-of v1, v0, LY2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, p1, v1}, LY2;->g(Lz2;Z)V

    .line 16
    :cond_0
    iget-object p1, p0, LY2;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT2;

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 17
    throw p1

    .line 18
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, LY2;->M:Z

    .line 2
    iput-boolean v0, p0, LY2;->N:Z

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, LY2;->a(I)V

    return-void
.end method

.method public h(Lz2;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, LY2;->A:Landroid/util/SparseArray;

    iget v1, p1, Lz2;->A:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Lz2;->O:LG2;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Lz2;->N:LY2;

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    :goto_0
    iput-object p1, p0, LY2;->K:Lz2;

    return-void
.end method

.method public h(Lz2;Z)V
    .locals 2

    .line 8
    iget-object v0, p0, LY2;->J:Lz2;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, v0, Lz2;->N:LY2;

    .line 10
    instance-of v1, v0, LY2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, p1, v1}, LY2;->h(Lz2;Z)V

    .line 12
    :cond_0
    iget-object p1, p0, LY2;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT2;

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 13
    throw p1

    .line 14
    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, LY2;->O:Z

    .line 2
    invoke-virtual {p0}, LY2;->n()Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, LY2;->a(I)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LY2;->H:LG2;

    .line 5
    iput-object v0, p0, LY2;->I:LE2;

    .line 6
    iput-object v0, p0, LY2;->J:Lz2;

    return-void
.end method

.method public j()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Lz2;->c0:Z

    .line 4
    iget-object v1, v1, Lz2;->P:LY2;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, LY2;->j()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, LY2;->M:Z

    .line 2
    iput-boolean v0, p0, LY2;->N:Z

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, LY2;->a(I)V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, LY2;->M:Z

    .line 2
    iput-boolean v0, p0, LY2;->N:Z

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, LY2;->a(I)V

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LY2;->P:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LY2;->P:Z

    .line 3
    invoke-virtual {p0}, LY2;->t()V

    :cond_0
    return-void
.end method

.method public n()Z
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, LY2;->c(Z)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, LY2;->Q:Ljava/util/ArrayList;

    iget-object v3, p0, LY2;->R:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, LY2;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iput-boolean v0, p0, LY2;->x:Z

    .line 4
    :try_start_0
    iget-object v1, p0, LY2;->Q:Ljava/util/ArrayList;

    iget-object v2, p0, LY2;->R:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, LY2;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, LY2;->f()V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, LY2;->f()V

    throw v0

    .line 6
    :cond_0
    invoke-virtual {p0}, LY2;->m()V

    .line 7
    invoke-virtual {p0}, LY2;->d()V

    return v1
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, LY2;->V:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    :goto_0
    iget-object v0, p0, LY2;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, LY2;->V:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX2;

    invoke-virtual {v0}, LX2;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 12

    move-object v6, p0

    move-object v0, p3

    move-object/from16 v1, p4

    const-string v2, "fragment"

    move-object v3, p2

    .line 1
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const-string v2, "class"

    .line 2
    invoke-interface {v1, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    sget-object v4, LU2;->a:[I

    invoke-virtual {p3, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v7, v2

    const/4 v2, -0x1

    const/4 v8, 0x1

    .line 5
    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v10, 0x2

    .line 6
    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 7
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    iget-object v4, v6, LY2;->H:LG2;

    .line 9
    iget-object v4, v4, LG2;->b:Landroid/content/Context;

    .line 10
    invoke-static {v4, v7}, Lz2;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v3

    :cond_2
    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    :cond_3
    if-ne v5, v2, :cond_5

    if-ne v9, v2, :cond_5

    if-eqz v10, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-eq v9, v2, :cond_6

    .line 13
    invoke-virtual {p0, v9}, LY2;->b(I)Lz2;

    move-result-object v4

    goto :goto_1

    :cond_6
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_7

    if-eqz v10, :cond_7

    .line 14
    invoke-virtual {p0, v10}, LY2;->a(Ljava/lang/String;)Lz2;

    move-result-object v4

    :cond_7
    if-nez v4, :cond_8

    if-eq v5, v2, :cond_8

    .line 15
    invoke-virtual {p0, v5}, LY2;->b(I)Lz2;

    move-result-object v4

    :cond_8
    if-nez v4, :cond_a

    .line 16
    iget-object v2, v6, LY2;->I:LE2;

    invoke-virtual {v2, p3, v7, v3}, LE2;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lz2;

    move-result-object v0

    .line 17
    iput-boolean v8, v0, Lz2;->I:Z

    if-eqz v9, :cond_9

    move v2, v9

    goto :goto_2

    :cond_9
    move v2, v5

    .line 18
    :goto_2
    iput v2, v0, Lz2;->T:I

    .line 19
    iput v5, v0, Lz2;->U:I

    .line 20
    iput-object v10, v0, Lz2;->V:Ljava/lang/String;

    .line 21
    iput-boolean v8, v0, Lz2;->J:Z

    .line 22
    iput-object v6, v0, Lz2;->N:LY2;

    .line 23
    iget-object v2, v6, LY2;->H:LG2;

    iput-object v2, v0, Lz2;->O:LG2;

    .line 24
    iget-object v2, v2, LG2;->b:Landroid/content/Context;

    .line 25
    iget-object v2, v0, Lz2;->x:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lz2;->a(Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0, v0, v8}, LY2;->a(Lz2;Z)V

    move-object v11, v0

    goto :goto_3

    .line 27
    :cond_a
    iget-boolean v0, v4, Lz2;->J:Z

    if-nez v0, :cond_10

    .line 28
    iput-boolean v8, v4, Lz2;->J:Z

    .line 29
    iget-object v0, v6, LY2;->H:LG2;

    iput-object v0, v4, Lz2;->O:LG2;

    .line 30
    iget-boolean v2, v4, Lz2;->Z:Z

    if-nez v2, :cond_b

    .line 31
    iget-object v0, v0, LG2;->b:Landroid/content/Context;

    .line 32
    iget-object v0, v4, Lz2;->x:Landroid/os/Bundle;

    invoke-virtual {v4, v1, v0}, Lz2;->a(Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_b
    move-object v11, v4

    .line 33
    :goto_3
    iget v0, v6, LY2;->G:I

    if-ge v0, v8, :cond_c

    iget-boolean v0, v11, Lz2;->I:Z

    if-eqz v0, :cond_c

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v11

    .line 34
    invoke-virtual/range {v0 .. v5}, LY2;->a(Lz2;IIIZ)V

    goto :goto_4

    .line 35
    :cond_c
    iget v2, v6, LY2;->G:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, LY2;->a(Lz2;IIIZ)V

    .line 36
    :goto_4
    iget-object v0, v11, Lz2;->e0:Landroid/view/View;

    if-eqz v0, :cond_f

    if-eqz v9, :cond_d

    .line 37
    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 38
    :cond_d
    iget-object v0, v11, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    .line 39
    iget-object v0, v11, Lz2;->e0:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 40
    :cond_e
    iget-object v0, v11, Lz2;->e0:Landroid/view/View;

    return-object v0

    .line 41
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " did not create a view."

    invoke-static {v1, v7, v2}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Duplicate id 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", or parent id 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with another fragment for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0, p1, p2, p3}, LY2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public p()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, LY2;->W:LZ2;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LY2;->M:Z

    .line 3
    iput-boolean v0, p0, LY2;->N:Z

    .line 4
    iget-object v1, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 5
    iget-object v2, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2;

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, v2, Lz2;->P:LY2;

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v2}, LY2;->p()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public q()Landroid/os/Parcelable;
    .locals 11

    .line 1
    invoke-virtual {p0}, LY2;->o()V

    .line 2
    iget-object v0, p0, LY2;->A:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v0, v2, :cond_4

    .line 3
    iget-object v4, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lz2;

    if-eqz v6, :cond_3

    .line 4
    invoke-virtual {v6}, Lz2;->m()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v6}, Lz2;->y()I

    move-result v7

    .line 6
    invoke-virtual {v6}, Lz2;->m()Landroid/view/View;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v5}, Landroid/view/animation/Animation;->cancel()V

    .line 9
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 10
    :cond_1
    invoke-virtual {v6, v3}, Lz2;->a(Landroid/view/View;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    .line 11
    invoke-virtual/range {v5 .. v10}, LY2;->a(Lz2;IIIZ)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v6}, Lz2;->n()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {v6}, Lz2;->n()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p0}, LY2;->n()Z

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, LY2;->M:Z

    .line 16
    iput-object v3, p0, LY2;->W:LZ2;

    .line 17
    iget-object v0, p0, LY2;->A:Landroid/util/SparseArray;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_5

    goto/16 :goto_8

    .line 18
    :cond_5
    iget-object v0, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 19
    new-array v2, v0, [Landroid/support/v4/app/FragmentState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    const-string v6, " has cleared index: "

    const-string v7, "Failure saving state: active "

    if-ge v4, v0, :cond_14

    .line 20
    iget-object v8, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lz2;

    if-eqz v8, :cond_13

    .line 21
    iget v5, v8, Lz2;->A:I

    if-ltz v5, :cond_12

    .line 22
    new-instance v5, Landroid/support/v4/app/FragmentState;

    invoke-direct {v5, v8}, Landroid/support/v4/app/FragmentState;-><init>(Lz2;)V

    .line 23
    aput-object v5, v2, v4

    .line 24
    iget v6, v8, Lz2;->w:I

    if-lez v6, :cond_10

    iget-object v6, v5, Landroid/support/v4/app/FragmentState;->G:Landroid/os/Bundle;

    if-nez v6, :cond_10

    .line 25
    iget-object v6, p0, LY2;->T:Landroid/os/Bundle;

    if-nez v6, :cond_6

    .line 26
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, LY2;->T:Landroid/os/Bundle;

    .line 27
    :cond_6
    iget-object v6, p0, LY2;->T:Landroid/os/Bundle;

    invoke-virtual {v8, v6}, Lz2;->e(Landroid/os/Bundle;)V

    .line 28
    iget-object v6, p0, LY2;->T:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v6, v1}, LY2;->d(Lz2;Landroid/os/Bundle;Z)V

    .line 29
    iget-object v6, p0, LY2;->T:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 30
    iget-object v6, p0, LY2;->T:Landroid/os/Bundle;

    .line 31
    iput-object v3, p0, LY2;->T:Landroid/os/Bundle;

    goto :goto_3

    :cond_7
    move-object v6, v3

    .line 32
    :goto_3
    iget-object v7, v8, Lz2;->e0:Landroid/view/View;

    if-eqz v7, :cond_8

    .line 33
    invoke-virtual {p0, v8}, LY2;->g(Lz2;)V

    .line 34
    :cond_8
    iget-object v7, v8, Lz2;->y:Landroid/util/SparseArray;

    if-eqz v7, :cond_a

    if-nez v6, :cond_9

    .line 35
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 36
    :cond_9
    iget-object v7, v8, Lz2;->y:Landroid/util/SparseArray;

    const-string v9, "android:view_state"

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 37
    :cond_a
    iget-boolean v7, v8, Lz2;->h0:Z

    if-nez v7, :cond_c

    if-nez v6, :cond_b

    .line 38
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 39
    :cond_b
    iget-boolean v7, v8, Lz2;->h0:Z

    const-string v9, "android:user_visible_hint"

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    :cond_c
    iput-object v6, v5, Landroid/support/v4/app/FragmentState;->G:Landroid/os/Bundle;

    .line 41
    iget-object v7, v8, Lz2;->D:Lz2;

    if-eqz v7, :cond_11

    .line 42
    iget v7, v7, Lz2;->A:I

    if-ltz v7, :cond_f

    if-nez v6, :cond_d

    .line 43
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, v5, Landroid/support/v4/app/FragmentState;->G:Landroid/os/Bundle;

    .line 44
    :cond_d
    iget-object v6, v5, Landroid/support/v4/app/FragmentState;->G:Landroid/os/Bundle;

    iget-object v7, v8, Lz2;->D:Lz2;

    .line 45
    iget v9, v7, Lz2;->A:I

    if-ltz v9, :cond_e

    const-string v7, "android:target_state"

    .line 46
    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    iget v6, v8, Lz2;->F:I

    if-eqz v6, :cond_11

    .line 48
    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->G:Landroid/os/Bundle;

    const-string v7, "android:target_req_state"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    .line 49
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " is not currently in the FragmentManager"

    invoke-static {v1, v7, v2}, LZi;->a(Ljava/lang/String;Lz2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LY2;->a(Ljava/lang/RuntimeException;)V

    throw v3

    .line 50
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure saving state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has target not in fragment manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lz2;->D:Lz2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LY2;->a(Ljava/lang/RuntimeException;)V

    throw v3

    .line 51
    :cond_10
    iget-object v6, v8, Lz2;->x:Landroid/os/Bundle;

    iput-object v6, v5, Landroid/support/v4/app/FragmentState;->G:Landroid/os/Bundle;

    :cond_11
    :goto_4
    const/4 v5, 0x1

    goto :goto_5

    .line 52
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lz2;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LY2;->a(Ljava/lang/RuntimeException;)V

    throw v3

    :cond_13
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_14
    if-nez v5, :cond_15

    return-object v3

    .line 53
    :cond_15
    iget-object v0, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 54
    new-array v4, v0, [I

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v0, :cond_18

    .line 55
    iget-object v8, p0, LY2;->z:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lz2;

    iget v8, v8, Lz2;->A:I

    aput v8, v4, v5

    .line 56
    aget v8, v4, v5

    if-ltz v8, :cond_16

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 57
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v7}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LY2;->z:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v4, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v0}, LY2;->a(Ljava/lang/RuntimeException;)V

    throw v3

    :cond_17
    move-object v4, v3

    .line 60
    :cond_18
    iget-object v0, p0, LY2;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 62
    new-array v3, v0, [Landroid/support/v4/app/BackStackState;

    :goto_7
    if-ge v1, v0, :cond_19

    .line 63
    new-instance v5, Landroid/support/v4/app/BackStackState;

    iget-object v6, p0, LY2;->B:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq2;

    invoke-direct {v5, v6}, Landroid/support/v4/app/BackStackState;-><init>(Lq2;)V

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 64
    :cond_19
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 65
    iput-object v2, v0, Landroid/support/v4/app/FragmentManagerState;->w:[Landroid/support/v4/app/FragmentState;

    .line 66
    iput-object v4, v0, Landroid/support/v4/app/FragmentManagerState;->x:[I

    .line 67
    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->y:[Landroid/support/v4/app/BackStackState;

    .line 68
    iget-object v1, p0, LY2;->K:Lz2;

    if-eqz v1, :cond_1a

    .line 69
    iget v1, v1, Lz2;->A:I

    iput v1, v0, Landroid/support/v4/app/FragmentManagerState;->z:I

    .line 70
    :cond_1a
    iget v1, p0, LY2;->y:I

    iput v1, v0, Landroid/support/v4/app/FragmentManagerState;->A:I

    .line 71
    invoke-virtual {p0}, LY2;->r()V

    return-object v0

    :cond_1b
    :goto_8
    return-object v3
.end method

.method public r()V
    .locals 9

    .line 1
    iget-object v0, p0, LY2;->A:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v6, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 3
    iget-object v6, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz2;

    if-eqz v6, :cond_7

    .line 4
    iget-boolean v7, v6, Lz2;->Y:Z

    if-eqz v7, :cond_2

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v7, v6, Lz2;->D:Lz2;

    if-eqz v7, :cond_1

    iget v7, v7, Lz2;->A:I

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    iput v7, v6, Lz2;->E:I

    .line 8
    :cond_2
    iget-object v7, v6, Lz2;->P:LY2;

    if-eqz v7, :cond_3

    .line 9
    invoke-virtual {v7}, LY2;->r()V

    .line 10
    iget-object v7, v6, Lz2;->P:LY2;

    iget-object v7, v7, LY2;->W:LZ2;

    goto :goto_2

    .line 11
    :cond_3
    iget-object v7, v6, Lz2;->Q:LZ2;

    :goto_2
    if-nez v4, :cond_4

    if-eqz v7, :cond_4

    .line 12
    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v2, :cond_4

    .line 13
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    .line 14
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v5, :cond_6

    .line 15
    iget-object v7, v6, Lz2;->R:Lw;

    if-eqz v7, :cond_6

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v2, :cond_6

    .line 17
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    .line 18
    iget-object v6, v6, Lz2;->R:Lw;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :cond_9
    if-nez v3, :cond_a

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    .line 19
    iput-object v1, p0, LY2;->W:LZ2;

    goto :goto_5

    .line 20
    :cond_a
    new-instance v0, LZ2;

    invoke-direct {v0, v3, v4, v5}, LZ2;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, LY2;->W:LZ2;

    :goto_5
    return-void
.end method

.method public s()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LY2;->V:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, LY2;->V:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, LY2;->w:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, LY2;->w:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, LY2;->H:LG2;

    .line 6
    iget-object v0, v0, LG2;->c:Landroid/os/Handler;

    .line 7
    iget-object v1, p0, LY2;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, LY2;->H:LG2;

    .line 9
    iget-object v0, v0, LG2;->c:Landroid/os/Handler;

    .line 10
    iget-object v1, p0, LY2;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, LY2;->A:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, LY2;->A:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v1}, LY2;->e(Lz2;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, LY2;->J:Lz2;

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v1, v0}, LO6;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, LY2;->H:LG2;

    invoke-static {v1, v0}, LO6;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    :goto_0
    const-string v1, "}}"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
