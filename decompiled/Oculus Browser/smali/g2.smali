.class public abstract Lg2;
.super LE1;
.source "PG"


# static fields
.field public static final f0:[Ljava/lang/String;


# instance fields
.field public e0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg2;->f0:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LE1;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lg2;->e0:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;LO1;LO1;)Landroid/animation/Animator;
    .locals 9

    .line 2
    invoke-virtual {p0, p2, p3}, Lg2;->b(LO1;LO1;)Lf2;

    move-result-object v0

    .line 3
    iget-boolean v1, v0, Lf2;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    iget-object v1, v0, Lf2;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Lf2;->f:Landroid/view/ViewGroup;

    if-eqz v1, :cond_17

    .line 4
    :cond_0
    iget-boolean v1, v0, Lf2;->b:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    .line 5
    iget p1, v0, Lf2;->c:I

    iget p1, v0, Lf2;->d:I

    .line 6
    iget p1, p0, Lg2;->e0:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_5

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    .line 7
    iget-object p1, p3, LO1;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 8
    invoke-virtual {p0, p1, v3}, LE1;->b(Landroid/view/View;Z)LO1;

    move-result-object v0

    .line 9
    invoke-virtual {p0, p1, v3}, LE1;->c(Landroid/view/View;Z)LO1;

    move-result-object p1

    .line 10
    invoke-virtual {p0, v0, p1}, Lg2;->b(LO1;LO1;)Lf2;

    move-result-object p1

    .line 11
    iget-boolean p1, p1, Lf2;->a:Z

    if-eqz p1, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p3, LO1;->b:Landroid/view/View;

    move-object p3, p0

    check-cast p3, Lo1;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 13
    iget-object p2, p2, LO1;->a:Ljava/util/Map;

    const-string v1, "android:fade:transitionAlpha"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    if-eqz p2, :cond_3

    .line 14
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v1

    if-nez v2, :cond_4

    const/4 p2, 0x0

    .line 15
    :cond_4
    invoke-virtual {p3, p1, p2, v1}, Lo1;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v2

    :cond_5
    :goto_1
    return-object v2

    .line 16
    :cond_6
    iget v1, v0, Lf2;->c:I

    iget v0, v0, Lf2;->d:I

    .line 17
    iget v1, p0, Lg2;->e0:I

    const/4 v5, 0x2

    and-int/2addr v1, v5

    if-eq v1, v5, :cond_7

    goto/16 :goto_8

    :cond_7
    if-eqz p2, :cond_8

    .line 18
    iget-object v1, p2, LO1;->b:Landroid/view/View;

    goto :goto_2

    :cond_8
    move-object v1, v2

    :goto_2
    if-eqz p3, :cond_9

    .line 19
    iget-object v6, p3, LO1;->b:Landroid/view/View;

    goto :goto_3

    :cond_9
    move-object v6, v2

    :goto_3
    if-eqz v6, :cond_e

    .line 20
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_a

    goto :goto_5

    :cond_a
    const/4 v7, 0x4

    if-ne v0, v7, :cond_b

    goto :goto_4

    :cond_b
    if-ne v1, v6, :cond_c

    :goto_4
    move-object v1, v2

    goto/16 :goto_7

    .line 21
    :cond_c
    iget-boolean v6, p0, LE1;->R:Z

    if-eqz v6, :cond_d

    goto :goto_6

    .line 22
    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 23
    invoke-static {p1, v1, v6}, LN1;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_6

    :cond_e
    :goto_5
    if-eqz v6, :cond_f

    move-object v1, v6

    goto :goto_6

    :cond_f
    if-eqz v1, :cond_13

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_10

    goto :goto_6

    .line 25
    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_13

    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 27
    invoke-virtual {p0, v6, v4}, LE1;->c(Landroid/view/View;Z)LO1;

    move-result-object v7

    .line 28
    invoke-virtual {p0, v6, v4}, LE1;->b(Landroid/view/View;Z)LO1;

    move-result-object v8

    .line 29
    invoke-virtual {p0, v7, v8}, Lg2;->b(LO1;LO1;)Lf2;

    move-result-object v7

    .line 30
    iget-boolean v7, v7, Lf2;->a:Z

    if-nez v7, :cond_11

    .line 31
    invoke-static {p1, v1, v6}, LN1;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_6

    .line 32
    :cond_11
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_12

    .line 33
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_12

    .line 34
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_12

    iget-boolean v6, p0, LE1;->R:Z

    if-eqz v6, :cond_12

    goto :goto_6

    :cond_12
    move-object v1, v2

    :goto_6
    move-object v6, v2

    goto :goto_7

    :cond_13
    move-object v1, v2

    move-object v6, v1

    :goto_7
    if-eqz v1, :cond_15

    if-eqz p2, :cond_15

    .line 35
    iget-object v0, p2, LO1;->a:Ljava/util/Map;

    const-string v2, "android:visibility:screenLocation"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 36
    aget v2, v0, v3

    .line 37
    aget v0, v0, v4

    new-array v5, v5, [I

    .line 38
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 39
    aget v3, v5, v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 40
    aget v2, v5, v4

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 41
    new-instance v0, LQ1;

    invoke-direct {v0, p1}, LQ1;-><init>(Landroid/view/ViewGroup;)V

    .line 42
    iget-object v2, v0, LQ1;->a:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0, p1, v1, p2, p3}, Lg2;->a(Landroid/view/ViewGroup;Landroid/view/View;LO1;LO1;)Landroid/animation/Animator;

    move-result-object v2

    if-nez v2, :cond_14

    .line 44
    iget-object p1, v0, LQ1;->a:Landroid/view/ViewGroupOverlay;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_8

    .line 45
    :cond_14
    new-instance p1, Ld2;

    invoke-direct {p1, p0, v0, v1}, Ld2;-><init>(Lg2;LR1;Landroid/view/View;)V

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_8

    :cond_15
    if-eqz v6, :cond_17

    .line 46
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 47
    invoke-static {v6, v3}, LY1;->a(Landroid/view/View;I)V

    .line 48
    invoke-virtual {p0, p1, v6, p2, p3}, Lg2;->a(Landroid/view/ViewGroup;Landroid/view/View;LO1;LO1;)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 49
    new-instance p1, Le2;

    invoke-direct {p1, v6, v0, v4}, Le2;-><init>(Landroid/view/View;IZ)V

    .line 50
    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 52
    invoke-virtual {p0, p1}, LE1;->a(LD1;)LE1;

    goto :goto_8

    .line 53
    :cond_16
    invoke-static {v6, v1}, LY1;->a(Landroid/view/View;I)V

    :cond_17
    :goto_8
    return-object v2
.end method

.method public abstract a(Landroid/view/ViewGroup;Landroid/view/View;LO1;LO1;)Landroid/animation/Animator;
.end method

.method public a(LO1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg2;->d(LO1;)V

    return-void
.end method

.method public a(LO1;LO1;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 54
    iget-object v1, p2, LO1;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    .line 55
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, LO1;->a:Ljava/util/Map;

    .line 56
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 57
    :cond_1
    invoke-virtual {p0, p1, p2}, Lg2;->b(LO1;LO1;)Lf2;

    move-result-object p1

    .line 58
    iget-boolean p2, p1, Lf2;->a:Z

    if-eqz p2, :cond_3

    iget p2, p1, Lf2;->c:I

    if-eqz p2, :cond_2

    iget p1, p1, Lf2;->d:I

    if-nez p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public final b(LO1;LO1;)Lf2;
    .locals 7

    .line 2
    new-instance v0, Lf2;

    invoke-direct {v0}, Lf2;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lf2;->a:Z

    .line 4
    iput-boolean v1, v0, Lf2;->b:Z

    const-string v2, "android:visibility:parent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "android:visibility:visibility"

    if-eqz p1, :cond_0

    .line 5
    iget-object v6, p1, LO1;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    iget-object v6, p1, LO1;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lf2;->c:I

    .line 7
    iget-object v6, p1, LO1;->a:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Lf2;->e:Landroid/view/ViewGroup;

    goto :goto_0

    .line 8
    :cond_0
    iput v4, v0, Lf2;->c:I

    .line 9
    iput-object v3, v0, Lf2;->e:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p2, :cond_1

    .line 10
    iget-object v6, p2, LO1;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 11
    iget-object v3, p2, LO1;->a:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lf2;->d:I

    .line 12
    iget-object v3, p2, LO1;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lf2;->f:Landroid/view/ViewGroup;

    goto :goto_1

    .line 13
    :cond_1
    iput v4, v0, Lf2;->d:I

    .line 14
    iput-object v3, v0, Lf2;->f:Landroid/view/ViewGroup;

    :goto_1
    const/4 v2, 0x1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 15
    iget p1, v0, Lf2;->c:I

    iget p2, v0, Lf2;->d:I

    if-ne p1, p2, :cond_2

    iget-object p1, v0, Lf2;->e:Landroid/view/ViewGroup;

    iget-object p2, v0, Lf2;->f:Landroid/view/ViewGroup;

    if-ne p1, p2, :cond_2

    return-object v0

    .line 16
    :cond_2
    iget p1, v0, Lf2;->c:I

    iget p2, v0, Lf2;->d:I

    if-eq p1, p2, :cond_4

    if-nez p1, :cond_3

    .line 17
    iput-boolean v1, v0, Lf2;->b:Z

    .line 18
    iput-boolean v2, v0, Lf2;->a:Z

    goto :goto_2

    :cond_3
    if-nez p2, :cond_8

    .line 19
    iput-boolean v2, v0, Lf2;->b:Z

    .line 20
    iput-boolean v2, v0, Lf2;->a:Z

    goto :goto_2

    .line 21
    :cond_4
    iget-object p1, v0, Lf2;->f:Landroid/view/ViewGroup;

    if-nez p1, :cond_5

    .line 22
    iput-boolean v1, v0, Lf2;->b:Z

    .line 23
    iput-boolean v2, v0, Lf2;->a:Z

    goto :goto_2

    .line 24
    :cond_5
    iget-object p1, v0, Lf2;->e:Landroid/view/ViewGroup;

    if-nez p1, :cond_8

    .line 25
    iput-boolean v2, v0, Lf2;->b:Z

    .line 26
    iput-boolean v2, v0, Lf2;->a:Z

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    .line 27
    iget p1, v0, Lf2;->d:I

    if-nez p1, :cond_7

    .line 28
    iput-boolean v2, v0, Lf2;->b:Z

    .line 29
    iput-boolean v2, v0, Lf2;->a:Z

    goto :goto_2

    :cond_7
    if-nez p2, :cond_8

    .line 30
    iget p1, v0, Lf2;->c:I

    if-nez p1, :cond_8

    .line 31
    iput-boolean v1, v0, Lf2;->b:Z

    .line 32
    iput-boolean v2, v0, Lf2;->a:Z

    :cond_8
    :goto_2
    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg2;->f0:[Ljava/lang/String;

    return-object v0
.end method

.method public final d(LO1;)V
    .locals 3

    .line 1
    iget-object v0, p1, LO1;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 2
    iget-object v1, p1, LO1;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, LO1;->a:Ljava/util/Map;

    iget-object v1, p1, LO1;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "android:visibility:parent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4
    iget-object v1, p1, LO1;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    iget-object p1, p1, LO1;->a:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
