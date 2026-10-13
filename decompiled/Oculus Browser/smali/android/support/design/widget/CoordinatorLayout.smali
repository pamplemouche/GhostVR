.class public Landroid/support/design/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "PG"

# interfaces
.implements Ls7;


# static fields
.field public static final O:Ljava/lang/String;

.field public static final P:[Ljava/lang/Class;

.field public static final Q:Ljava/lang/ThreadLocal;

.field public static final R:Ljava/util/Comparator;

.field public static final S:LZ6;


# instance fields
.field public final A:[I

.field public B:Z

.field public C:Z

.field public D:[I

.field public E:Landroid/view/View;

.field public F:Landroid/view/View;

.field public G:Lh0;

.field public H:Z

.field public I:LV7;

.field public J:Z

.field public K:Landroid/graphics/drawable/Drawable;

.field public L:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field public M:Lu7;

.field public final N:Lt7;

.field public final w:Ljava/util/List;

.field public final x:Lo8;

.field public final y:Ljava/util/List;

.field public final z:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->O:Ljava/lang/String;

    .line 3
    new-instance v0, Lj0;

    invoke-direct {v0}, Lj0;-><init>()V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->R:Ljava/util/Comparator;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 4
    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->P:[Ljava/lang/Class;

    .line 5
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->Q:Ljava/lang/ThreadLocal;

    .line 6
    new-instance v0, Lb7;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->S:LZ6;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v0, 0x7f0400b1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->w:Ljava/util/List;

    .line 3
    new-instance v1, Lo8;

    invoke-direct {v1}, Lo8;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Lo8;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->y:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->z:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 6
    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->A:[I

    .line 7
    new-instance v1, Lt7;

    invoke-direct {v1, p0}, Lt7;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->N:Lt7;

    const/4 v1, 0x0

    .line 8
    sget-object v2, LeS;->N:[I

    .line 9
    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 10
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->D:[I

    .line 13
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 14
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->D:[I

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 15
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->D:[I

    aget v3, v2, v1

    int-to-float v3, v3

    mul-float v3, v3, p1

    float-to-int v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->K:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->a()V

    .line 19
    new-instance p1, Lf0;

    invoke-direct {p1, p0}, Lf0;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Ld0;
    .locals 4

    .line 50
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "."

    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/16 v0, 0x2e

    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    goto :goto_0

    .line 54
    :cond_2
    sget-object v1, Landroid/support/design/widget/CoordinatorLayout;->O:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/support/design/widget/CoordinatorLayout;->O:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 55
    :cond_3
    :goto_0
    :try_start_0
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->Q:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_4

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    sget-object v1, Landroid/support/design/widget/CoordinatorLayout;->Q:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 58
    :cond_4
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    if-nez v1, :cond_5

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 60
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 61
    sget-object v3, Landroid/support/design/widget/CoordinatorLayout;->P:[Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 63
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    aput-object p1, v0, v2

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 65
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not inflate Behavior subclass "

    invoke-static {v0, p2}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->S:LZ6;

    invoke-interface {v0, p0}, LZ6;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b()Landroid/graphics/Rect;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->S:LZ6;

    invoke-interface {v0}, LZ6;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    .line 45
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->D:[I

    const/4 v1, 0x0

    const-string v2, "CoordinatorLayout"

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No keylines defined for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - attempted index lookup "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-ltz p1, :cond_2

    .line 47
    array-length v3, v0

    if-lt p1, v3, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    aget p1, v0, p1

    return p1

    .line 49
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyline index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public a(Landroid/view/View;)Ljava/util/List;
    .locals 5

    .line 95
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Lo8;

    .line 96
    iget-object v1, v0, Lo8;->b:Ld7;

    .line 97
    iget v1, v1, Ld7;->y:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 98
    iget-object v4, v0, Lo8;->b:Ld7;

    invoke-virtual {v4, v3}, Ld7;->e(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 99
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_0

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    :cond_0
    iget-object v4, v0, Lo8;->b:Ld7;

    invoke-virtual {v4, v3}, Ld7;->c(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_2
    iget-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->z:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_3

    .line 103
    iget-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->z:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    :cond_3
    iget-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->z:Ljava/util/List;

    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 155
    invoke-static {p0}, LA7;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->M:Lu7;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lc0;

    invoke-direct {v0, p0}, Lc0;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->M:Lu7;

    .line 158
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->M:Lu7;

    invoke-static {p0, v0}, LA7;->a(Landroid/view/View;Lu7;)V

    const/16 v0, 0x500

    .line 159
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 160
    invoke-static {p0, v0}, LA7;->a(Landroid/view/View;Lu7;)V

    :goto_0
    return-void
.end method

.method public final a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Lg0;II)V
    .locals 6

    .line 71
    iget v0, p4, Lg0;->c:I

    if-nez v0, :cond_0

    const/16 v0, 0x11

    .line 72
    :cond_0
    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 73
    iget p4, p4, Lg0;->d:I

    and-int/lit8 v1, p4, 0x7

    if-nez v1, :cond_1

    const v1, 0x800003

    or-int/2addr p4, v1

    :cond_1
    and-int/lit8 v1, p4, 0x70

    if-nez v1, :cond_2

    or-int/lit8 p4, p4, 0x30

    .line 74
    :cond_2
    invoke-static {p4, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p4, v0, 0x7

    and-int/lit8 v0, v0, 0x70

    and-int/lit8 v1, p1, 0x7

    and-int/lit8 p1, p1, 0x70

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    .line 75
    iget v1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 76
    :cond_3
    iget v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 77
    :cond_4
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    :goto_0
    const/16 v4, 0x50

    const/16 v5, 0x10

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    .line 78
    iget p1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 79
    :cond_5
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 80
    :cond_6
    iget p1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    :goto_1
    if-eq p4, v3, :cond_7

    if-eq p4, v2, :cond_8

    sub-int/2addr v1, p5

    goto :goto_2

    .line 81
    :cond_7
    div-int/lit8 p2, p5, 0x2

    sub-int/2addr v1, p2

    :cond_8
    :goto_2
    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_a

    sub-int/2addr p1, p6

    goto :goto_3

    .line 82
    :cond_9
    div-int/lit8 p2, p6, 0x2

    sub-int/2addr p1, p2

    :cond_a
    :goto_3
    add-int/2addr p5, v1

    add-int/2addr p6, p1

    .line 83
    invoke-virtual {p3, v1, p1, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 6

    .line 121
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->N:Lt7;

    const/4 v1, 0x0

    .line 122
    iput v1, v0, Lt7;->a:I

    .line 123
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 124
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 125
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lg0;

    .line 126
    invoke-virtual {v4, p2}, Lg0;->a(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    iget-object v5, v4, Lg0;->a:Ld0;

    if-eqz v5, :cond_1

    .line 128
    invoke-virtual {v5, p0, v3, p1, p2}, Ld0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    .line 129
    :cond_1
    invoke-virtual {v4, p2, v1}, Lg0;->a(IZ)V

    .line 130
    iput-boolean v1, v4, Lg0;->p:Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->F:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    .line 66
    invoke-virtual/range {p0 .. p5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public a(Landroid/view/View;IIIII)V
    .locals 14

    move-object v9, p0

    .line 132
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x1

    if-ge v11, v10, :cond_3

    .line 133
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    move/from16 v13, p6

    goto :goto_1

    .line 135
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lg0;

    move/from16 v13, p6

    .line 136
    invoke-virtual {v1, v13}, Lg0;->a(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 137
    :cond_1
    iget-object v1, v1, Lg0;->a:Ld0;

    if-eqz v1, :cond_2

    move-object v0, v1

    move-object v1, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 138
    invoke-virtual/range {v0 .. v8}, Ld0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V

    const/4 v0, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 139
    invoke-virtual {p0, v12}, Landroid/support/design/widget/CoordinatorLayout;->b(I)V

    :cond_4
    return-void
.end method

.method public a(Landroid/view/View;II[II)V
    .locals 16

    move-object/from16 v8, p0

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x1

    if-ge v11, v9, :cond_5

    .line 141
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    move/from16 v15, p5

    goto :goto_3

    .line 143
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lg0;

    move/from16 v15, p5

    .line 144
    invoke-virtual {v1, v15}, Lg0;->a(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 145
    :cond_1
    iget-object v1, v1, Lg0;->a:Ld0;

    if-eqz v1, :cond_4

    .line 146
    iget-object v6, v8, Landroid/support/design/widget/CoordinatorLayout;->A:[I

    aput v10, v6, v14

    aput v10, v6, v10

    move-object v0, v1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    .line 147
    invoke-virtual/range {v0 .. v7}, Ld0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    .line 148
    iget-object v0, v8, Landroid/support/design/widget/CoordinatorLayout;->A:[I

    if-lez p2, :cond_2

    aget v0, v0, v10

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    aget v0, v0, v10

    .line 149
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 150
    :goto_1
    iget-object v1, v8, Landroid/support/design/widget/CoordinatorLayout;->A:[I

    if-lez p3, :cond_3

    aget v1, v1, v14

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_3
    aget v1, v1, v14

    .line 151
    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    move v12, v0

    move v13, v1

    const/4 v0, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 152
    :cond_5
    aput v12, p4, v10

    .line 153
    aput v13, p4, v14

    if-eqz v0, :cond_6

    .line 154
    invoke-virtual {v8, v14}, Landroid/support/design/widget/CoordinatorLayout;->b(I)V

    :cond_6
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .line 113
    iget-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->N:Lt7;

    .line 114
    iput p3, p1, Lt7;->a:I

    .line 115
    iput-object p2, p0, Landroid/support/design/widget/CoordinatorLayout;->F:Landroid/view/View;

    .line 116
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 117
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 118
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lg0;

    .line 119
    invoke-virtual {p3, p4}, Lg0;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    iget-object p3, p3, Lg0;->a:Ld0;

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 2

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 68
    invoke-static {p0, p1, p3}, Lx8;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    .line 70
    :cond_2
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public final a(Lg0;Landroid/graphics/Rect;II)V
    .locals 5

    .line 84
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 85
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 86
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 87
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, p3

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v4

    .line 88
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 89
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 90
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 91
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, p4

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    .line 92
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 93
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p3, v0

    add-int/2addr p4, p1

    .line 94
    invoke-virtual {p2, v0, p1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4

    .line 17
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v2

    .line 21
    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 22
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 23
    :cond_1
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->R:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    .line 24
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 13

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lg0;

    .line 6
    iget-object v4, v4, Lg0;->a:Ld0;

    if-eqz v4, :cond_1

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v5, v7

    .line 8
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v4, p0, v3, v5}, Ld0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v4, p0, v3, v5}, Ld0;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 11
    :goto_1
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-ge p1, v0, :cond_3

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lg0;

    .line 14
    iput-boolean v1, v2, Lg0;->m:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->E:Landroid/view/View;

    .line 16
    iput-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->B:Z

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;I)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 26
    iget-object v4, v0, Landroid/support/design/widget/CoordinatorLayout;->y:Ljava/util/List;

    .line 27
    invoke-virtual {v0, v4}, Landroid/support/design/widget/CoordinatorLayout;->a(Ljava/util/List;)V

    .line 28
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v10, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v7, v5, :cond_d

    .line 29
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 30
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lg0;

    .line 31
    iget-object v13, v12, Lg0;->a:Ld0;

    const/4 v14, 0x1

    if-nez v8, :cond_0

    if-eqz v9, :cond_4

    :cond_0
    if-eqz v3, :cond_4

    if-eqz v13, :cond_c

    if-nez v10, :cond_1

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-wide/from16 v15, v17

    .line 33
    invoke-static/range {v15 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    :cond_1
    if-eqz v2, :cond_3

    if-eq v2, v14, :cond_2

    goto :goto_4

    .line 34
    :cond_2
    invoke-virtual {v13, v0, v11, v10}, Ld0;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_4

    .line 35
    :cond_3
    invoke-virtual {v13, v0, v11, v10}, Ld0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_4

    :cond_4
    if-nez v8, :cond_7

    if-eqz v13, :cond_7

    if-eqz v2, :cond_6

    if-eq v2, v14, :cond_5

    goto :goto_1

    .line 36
    :cond_5
    invoke-virtual {v13, v0, v11, v1}, Ld0;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_1

    .line 37
    :cond_6
    invoke-virtual {v13, v0, v11, v1}, Ld0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_1
    if-eqz v8, :cond_7

    .line 38
    iput-object v11, v0, Landroid/support/design/widget/CoordinatorLayout;->E:Landroid/view/View;

    .line 39
    :cond_7
    iget-object v9, v12, Lg0;->a:Ld0;

    if-nez v9, :cond_8

    .line 40
    iput-boolean v6, v12, Lg0;->m:Z

    .line 41
    :cond_8
    iget-boolean v9, v12, Lg0;->m:Z

    if-eqz v9, :cond_9

    const/4 v11, 0x1

    goto :goto_2

    .line 42
    :cond_9
    iget-object v11, v12, Lg0;->a:Ld0;

    or-int/lit8 v11, v9, 0x0

    .line 43
    iput-boolean v11, v12, Lg0;->m:Z

    :goto_2
    if-eqz v11, :cond_a

    if-nez v9, :cond_a

    goto :goto_3

    :cond_a
    const/4 v14, 0x0

    :goto_3
    if-eqz v11, :cond_b

    if-nez v14, :cond_b

    goto :goto_5

    :cond_b
    move v9, v14

    :cond_c
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 44
    :cond_d
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->clear()V

    return v8
.end method

.method public a(Landroid/view/View;II)Z
    .locals 1

    .line 105
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->b()Landroid/graphics/Rect;

    move-result-object v0

    .line 106
    invoke-static {p0, p1, v0}, Lx8;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 107
    :try_start_0
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 109
    sget-object p2, Landroid/support/design/widget/CoordinatorLayout;->S:LZ6;

    invoke-interface {p2, v0}, LZ6;->a(Ljava/lang/Object;)Z

    return p1

    :catchall_0
    move-exception p1

    .line 110
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 111
    sget-object p2, Landroid/support/design/widget/CoordinatorLayout;->S:LZ6;

    invoke-interface {p2, v0}, LZ6;->a(Ljava/lang/Object;)Z

    .line 112
    throw p1
.end method

.method public b(Landroid/view/View;)Lg0;
    .locals 4

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg0;

    .line 4
    iget-boolean v1, v0, Lg0;->b:Z

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 6
    const-class v1, Le0;

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Le0;

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 9
    :try_start_0
    invoke-interface {v1}, Le0;->value()Ljava/lang/Class;

    move-result-object p1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld0;

    .line 10
    invoke-virtual {v0, p1}, Lg0;->a(Ld0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v2, "Default behavior class "

    .line 11
    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Le0;->value()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not be instantiated. Did you forget"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " a default constructor?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoordinatorLayout"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, v0, Lg0;->b:Z

    :cond_2
    return-object v0
.end method

.method public final b(I)V
    .locals 25

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 74
    invoke-static/range {p0 .. p0}, LA7;->i(Landroid/view/View;)I

    move-result v9

    .line 75
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 76
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->b()Landroid/graphics/Rect;

    move-result-object v11

    .line 77
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->b()Landroid/graphics/Rect;

    move-result-object v12

    .line 78
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->b()Landroid/graphics/Rect;

    move-result-object v13

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v10, :cond_1e

    .line 79
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->w:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/View;

    .line 80
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lg0;

    if-nez v8, :cond_1

    .line 81
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    move v1, v10

    move-object v2, v13

    move/from16 v18, v15

    :cond_0
    :goto_1
    const/4 v6, 0x0

    goto/16 :goto_f

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v15, :cond_8

    .line 82
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->w:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 83
    iget-object v1, v5, Lg0;->l:Landroid/view/View;

    if-ne v1, v0, :cond_7

    .line 84
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lg0;

    .line 85
    iget-object v0, v2, Lg0;->k:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 86
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->b()Landroid/graphics/Rect;

    move-result-object v1

    .line 87
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->b()Landroid/graphics/Rect;

    move-result-object v0

    .line 88
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->b()Landroid/graphics/Rect;

    move-result-object v14

    .line 89
    iget-object v3, v2, Lg0;->k:Landroid/view/View;

    .line 90
    invoke-static {v7, v3, v1}, Lx8;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    .line 91
    invoke-virtual {v7, v6, v3, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 92
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move/from16 v17, v10

    .line 93
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    move/from16 v18, v15

    move-object v15, v0

    move-object/from16 v0, p0

    move-object/from16 v19, v1

    move v1, v9

    move-object/from16 v20, v2

    move-object/from16 v2, v19

    move/from16 v21, v3

    move-object/from16 v16, v13

    const/4 v13, 0x1

    move-object v3, v14

    move/from16 v22, v4

    move-object/from16 v4, v20

    move-object/from16 v23, v5

    move/from16 v5, v21

    move-object v13, v6

    move v6, v10

    .line 94
    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Lg0;II)V

    .line 95
    iget v0, v14, Landroid/graphics/Rect;->left:I

    iget v1, v15, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_3

    iget v0, v14, Landroid/graphics/Rect;->top:I

    iget v1, v15, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v0, v20

    move/from16 v1, v21

    const/16 v24, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    move-object/from16 v0, v20

    move/from16 v1, v21

    const/16 v24, 0x1

    .line 96
    :goto_4
    invoke-virtual {v7, v0, v14, v1, v10}, Landroid/support/design/widget/CoordinatorLayout;->a(Lg0;Landroid/graphics/Rect;II)V

    .line 97
    iget v1, v14, Landroid/graphics/Rect;->left:I

    iget v2, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 98
    iget v2, v14, Landroid/graphics/Rect;->top:I

    iget v3, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-eqz v1, :cond_4

    .line 99
    invoke-static {v13, v1}, LA7;->c(Landroid/view/View;I)V

    :cond_4
    if-eqz v2, :cond_5

    .line 100
    invoke-static {v13, v2}, LA7;->d(Landroid/view/View;I)V

    :cond_5
    if-eqz v24, :cond_6

    .line 101
    iget-object v1, v0, Lg0;->a:Ld0;

    if-eqz v1, :cond_6

    .line 102
    iget-object v0, v0, Lg0;->k:Landroid/view/View;

    invoke-virtual {v1, v7, v13, v0}, Ld0;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 103
    :cond_6
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V

    .line 104
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->S:LZ6;

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, LZ6;->a(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v15}, Landroid/graphics/Rect;->setEmpty()V

    .line 106
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->S:LZ6;

    invoke-interface {v0, v15}, LZ6;->a(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 108
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->S:LZ6;

    invoke-interface {v0, v14}, LZ6;->a(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    move/from16 v22, v4

    move-object/from16 v23, v5

    move/from16 v17, v10

    move-object/from16 v16, v13

    move/from16 v18, v15

    move-object v13, v6

    :goto_5
    add-int/lit8 v4, v22, 0x1

    move-object v6, v13

    move-object/from16 v13, v16

    move/from16 v10, v17

    move/from16 v15, v18

    move-object/from16 v5, v23

    goto/16 :goto_2

    :cond_8
    move-object/from16 v23, v5

    move/from16 v17, v10

    move-object/from16 v16, v13

    move/from16 v18, v15

    const/4 v0, 0x1

    move-object v13, v6

    .line 109
    invoke-virtual {v7, v13, v0, v12}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    move-object/from16 v0, v23

    .line 110
    iget v1, v0, Lg0;->g:I

    const/16 v2, 0x30

    const/16 v3, 0x50

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eqz v1, :cond_d

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 111
    iget v1, v0, Lg0;->g:I

    .line 112
    invoke-static {v1, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v6, v1, 0x70

    if-eq v6, v2, :cond_a

    if-eq v6, v3, :cond_9

    goto :goto_6

    .line 113
    :cond_9
    iget v6, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    iget v14, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v14

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v11, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    .line 114
    :cond_a
    iget v6, v11, Landroid/graphics/Rect;->top:I

    iget v10, v12, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v11, Landroid/graphics/Rect;->top:I

    :goto_6
    and-int/lit8 v1, v1, 0x7

    if-eq v1, v4, :cond_c

    if-eq v1, v5, :cond_b

    goto :goto_7

    .line 115
    :cond_b
    iget v1, v11, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    iget v10, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v10

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v11, Landroid/graphics/Rect;->right:I

    goto :goto_7

    .line 116
    :cond_c
    iget v1, v11, Landroid/graphics/Rect;->left:I

    iget v6, v12, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v11, Landroid/graphics/Rect;->left:I

    .line 117
    :cond_d
    :goto_7
    iget v0, v0, Lg0;->h:I

    if-eqz v0, :cond_17

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    .line 118
    invoke-virtual {v13}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_a

    .line 119
    :cond_e
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_f

    goto/16 :goto_a

    .line 120
    :cond_f
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg0;

    .line 121
    iget-object v1, v0, Lg0;->a:Ld0;

    .line 122
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->b()Landroid/graphics/Rect;

    move-result-object v1

    .line 123
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->b()Landroid/graphics/Rect;

    move-result-object v6

    .line 124
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v6, v10, v14, v15, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 125
    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 126
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 127
    sget-object v5, Landroid/support/design/widget/CoordinatorLayout;->S:LZ6;

    invoke-interface {v5, v6}, LZ6;->a(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 129
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 130
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->S:LZ6;

    invoke-interface {v0, v1}, LZ6;->a(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 131
    :cond_10
    iget v5, v0, Lg0;->h:I

    .line 132
    invoke-static {v5, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v6, v5, 0x30

    if-ne v6, v2, :cond_11

    .line 133
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v6

    iget v6, v0, Lg0;->j:I

    sub-int/2addr v2, v6

    .line 134
    iget v6, v11, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_11

    sub-int/2addr v6, v2

    .line 135
    invoke-virtual {v7, v13, v6}, Landroid/support/design/widget/CoordinatorLayout;->d(Landroid/view/View;I)V

    const/4 v2, 0x1

    goto :goto_8

    :cond_11
    const/4 v2, 0x0

    :goto_8
    and-int/lit8 v6, v5, 0x50

    if-ne v6, v3, :cond_12

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v6

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v3, v6

    iget v6, v0, Lg0;->j:I

    add-int/2addr v3, v6

    .line 137
    iget v6, v11, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v6, :cond_12

    sub-int/2addr v3, v6

    .line 138
    invoke-virtual {v7, v13, v3}, Landroid/support/design/widget/CoordinatorLayout;->d(Landroid/view/View;I)V

    const/4 v2, 0x1

    :cond_12
    if-nez v2, :cond_13

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v7, v13, v2}, Landroid/support/design/widget/CoordinatorLayout;->d(Landroid/view/View;I)V

    :cond_13
    and-int/lit8 v2, v5, 0x3

    if-ne v2, v4, :cond_14

    .line 140
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    iget v3, v0, Lg0;->i:I

    sub-int/2addr v2, v3

    .line 141
    iget v3, v11, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_14

    sub-int/2addr v3, v2

    .line 142
    invoke-virtual {v7, v13, v3}, Landroid/support/design/widget/CoordinatorLayout;->c(Landroid/view/View;I)V

    const/4 v3, 0x1

    goto :goto_9

    :cond_14
    const/4 v3, 0x0

    :goto_9
    and-int/lit8 v2, v5, 0x5

    const/4 v4, 0x5

    if-ne v2, v4, :cond_15

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v4

    iget v0, v0, Lg0;->i:I

    add-int/2addr v2, v0

    .line 144
    iget v0, v11, Landroid/graphics/Rect;->right:I

    if-ge v2, v0, :cond_15

    sub-int/2addr v2, v0

    .line 145
    invoke-virtual {v7, v13, v2}, Landroid/support/design/widget/CoordinatorLayout;->c(Landroid/view/View;I)V

    const/4 v3, 0x1

    :cond_15
    if-nez v3, :cond_16

    const/4 v0, 0x0

    .line 146
    invoke-virtual {v7, v13, v0}, Landroid/support/design/widget/CoordinatorLayout;->c(Landroid/view/View;I)V

    .line 147
    :cond_16
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 148
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->S:LZ6;

    invoke-interface {v0, v1}, LZ6;->a(Ljava/lang/Object;)Z

    :cond_17
    :goto_a
    const/4 v0, 0x2

    if-eq v8, v0, :cond_19

    .line 149
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lg0;

    .line 150
    iget-object v1, v1, Lg0;->q:Landroid/graphics/Rect;

    move-object/from16 v2, v16

    .line 151
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 152
    invoke-virtual {v2, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move/from16 v1, v17

    goto/16 :goto_1

    .line 153
    :cond_18
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lg0;

    .line 154
    iget-object v1, v1, Lg0;->q:Landroid/graphics/Rect;

    invoke-virtual {v1, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b

    :cond_19
    move-object/from16 v2, v16

    :goto_b
    add-int/lit8 v15, v18, 0x1

    move/from16 v1, v17

    :goto_c
    if-ge v15, v1, :cond_0

    .line 155
    iget-object v3, v7, Landroid/support/design/widget/CoordinatorLayout;->w:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 156
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lg0;

    .line 157
    iget-object v5, v4, Lg0;->a:Ld0;

    if-eqz v5, :cond_1c

    .line 158
    invoke-virtual {v5, v7, v3, v13}, Ld0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1c

    if-nez v8, :cond_1a

    .line 159
    iget-boolean v6, v4, Lg0;->p:Z

    if-eqz v6, :cond_1a

    const/4 v6, 0x0

    .line 160
    iput-boolean v6, v4, Lg0;->p:Z

    const/4 v5, 0x1

    goto :goto_e

    :cond_1a
    const/4 v6, 0x0

    if-eq v8, v0, :cond_1b

    .line 161
    invoke-virtual {v5, v7, v3, v13}, Ld0;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    goto :goto_d

    :cond_1b
    const/4 v3, 0x1

    :goto_d
    const/4 v5, 0x1

    if-ne v8, v5, :cond_1d

    .line 162
    iput-boolean v3, v4, Lg0;->p:Z

    goto :goto_e

    :cond_1c
    const/4 v5, 0x1

    const/4 v6, 0x0

    :cond_1d
    :goto_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    :goto_f
    add-int/lit8 v15, v18, 0x1

    move v10, v1

    move-object v13, v2

    goto/16 :goto_0

    :cond_1e
    move-object v2, v13

    .line 163
    invoke-static {v11}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 164
    invoke-static {v12}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 165
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 12

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg0;

    .line 14
    iget-object v1, v0, Lg0;->k:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget v1, v0, Lg0;->f:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_c

    .line 15
    iget-object v1, v0, Lg0;->k:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 16
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->b()Landroid/graphics/Rect;

    move-result-object v0

    .line 17
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->b()Landroid/graphics/Rect;

    move-result-object v2

    .line 18
    :try_start_0
    invoke-static {p0, v1, v0}, Lx8;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lg0;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move-object v4, p0

    move v5, p2

    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    move v9, v3

    move v10, v11

    .line 22
    invoke-virtual/range {v4 .. v10}, Landroid/support/design/widget/CoordinatorLayout;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Lg0;II)V

    .line 23
    invoke-virtual {p0, v1, v2, v3, v11}, Landroid/support/design/widget/CoordinatorLayout;->a(Lg0;Landroid/graphics/Rect;II)V

    .line 24
    iget p2, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 26
    sget-object p1, Landroid/support/design/widget/CoordinatorLayout;->S:LZ6;

    invoke-interface {p1, v0}, LZ6;->a(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 28
    sget-object p1, Landroid/support/design/widget/CoordinatorLayout;->S:LZ6;

    invoke-interface {p1, v2}, LZ6;->a(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    .line 29
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 30
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    throw p1

    .line 31
    :cond_1
    iget v0, v0, Lg0;->e:I

    if-ltz v0, :cond_8

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lg0;

    .line 33
    iget v4, v1, Lg0;->c:I

    if-nez v4, :cond_2

    const v4, 0x800035

    .line 34
    :cond_2
    invoke-static {v4, p2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x7

    and-int/lit8 v4, v4, 0x70

    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    .line 36
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ne p2, v2, :cond_3

    sub-int v0, v6, v0

    .line 39
    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(I)I

    move-result p2

    sub-int/2addr p2, v8

    if-eq v5, v2, :cond_5

    const/4 v0, 0x5

    if-eq v5, v0, :cond_4

    goto :goto_1

    :cond_4
    add-int/2addr p2, v8

    goto :goto_1

    .line 40
    :cond_5
    div-int/lit8 v0, v8, 0x2

    add-int/2addr p2, v0

    :goto_1
    const/16 v0, 0x10

    if-eq v4, v0, :cond_7

    const/16 v0, 0x50

    if-eq v4, v0, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v9, 0x0

    goto :goto_2

    .line 41
    :cond_7
    div-int/lit8 v0, v9, 0x2

    add-int/2addr v3, v0

    .line 42
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v6, v2

    sub-int/2addr v6, v8

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v6, v2

    .line 44
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 45
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v2

    .line 47
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v7, v2

    sub-int/2addr v7, v9

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v7, v1

    .line 48
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v8, p2

    add-int/2addr v9, v0

    .line 50
    invoke-virtual {p1, p2, v0, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3

    .line 51
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg0;

    .line 52
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->b()Landroid/graphics/Rect;

    move-result-object v7

    .line 53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    .line 55
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    .line 56
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    .line 57
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 58
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->I:LV7;

    if-eqz v1, :cond_9

    invoke-static {p0}, LA7;->f(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    if-nez v1, :cond_9

    .line 60
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->I:LV7;

    invoke-virtual {v2}, LV7;->b()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v7, Landroid/graphics/Rect;->left:I

    .line 61
    iget v1, v7, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->I:LV7;

    invoke-virtual {v2}, LV7;->d()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 62
    iget v1, v7, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->I:LV7;

    invoke-virtual {v2}, LV7;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->right:I

    .line 63
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->I:LV7;

    invoke-virtual {v2}, LV7;->a()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 64
    :cond_9
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->b()Landroid/graphics/Rect;

    move-result-object v8

    .line 65
    iget v0, v0, Lg0;->c:I

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_a

    const v1, 0x800003

    or-int/2addr v0, v1

    :cond_a
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_b

    or-int/lit8 v0, v0, 0x30

    :cond_b
    move v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object v4, v7

    move-object v5, v8

    move v6, p2

    .line 67
    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 68
    iget p2, v8, Landroid/graphics/Rect;->left:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v1, v8, Landroid/graphics/Rect;->right:I

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 69
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 70
    sget-object p1, Landroid/support/design/widget/CoordinatorLayout;->S:LZ6;

    invoke-interface {p1, v7}, LZ6;->a(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 72
    sget-object p1, Landroid/support/design/widget/CoordinatorLayout;->S:LZ6;

    invoke-interface {p1, v8}, LZ6;->a(Ljava/lang/Object;)Z

    :goto_3
    return-void

    .line 73
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/view/View;Landroid/view/View;II)Z
    .locals 14

    move/from16 v7, p4

    .line 166
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v10, v8, :cond_2

    move-object v12, p0

    .line 167
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lg0;

    .line 170
    iget-object v0, v13, Lg0;->a:Ld0;

    if-eqz v0, :cond_1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 171
    invoke-virtual/range {v0 .. v6}, Ld0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    or-int v1, v11, v0

    .line 172
    invoke-virtual {v13, v7, v0}, Lg0;->a(IZ)V

    move v11, v1

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {v13, v7, v9}, Lg0;->a(IZ)V

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    move-object v12, p0

    return v11
.end method

.method public final c(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg0;

    .line 2
    iget v1, v0, Lg0;->i:I

    if-eq v1, p2, :cond_0

    sub-int v1, p2, v1

    .line 3
    invoke-static {p1, v1}, LA7;->c(Landroid/view/View;I)V

    .line 4
    iput p2, v0, Lg0;->i:I

    :cond_0
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lg0;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg0;

    .line 2
    iget v1, v0, Lg0;->j:I

    if-eq v1, p2, :cond_0

    sub-int v1, p2, v1

    .line 3
    invoke-static {p1, v1}, LA7;->d(Landroid/view/View;I)V

    .line 4
    iput p2, v0, Lg0;->j:I

    :cond_0
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg0;

    .line 2
    iget-object v0, v0, Lg0;->a:Ld0;

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->K:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_0
    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lg0;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lg0;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lg0;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lg0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    instance-of v0, p1, Lg0;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lg0;

    check-cast p1, Lg0;

    invoke-direct {v0, p1}, Lg0;-><init>(Lg0;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lg0;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lg0;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lg0;

    invoke-direct {v0, p1}, Lg0;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->N:Lt7;

    .line 2
    iget v0, v0, Lt7;->a:I

    return v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Z)V

    .line 3
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->H:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->G:Lh0;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lh0;

    invoke-direct {v0, p0}, Lh0;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->G:Lh0;

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->G:Lh0;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 8
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->I:LV7;

    if-nez v0, :cond_2

    invoke-static {p0}, LA7;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    :cond_2
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->C:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Z)V

    .line 3
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->H:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->G:Lh0;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 5
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->G:Lh0;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 6
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->F:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v1, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    .line 8
    :cond_1
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->C:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->J:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->K:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->I:LV7;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LV7;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 4
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Z)V

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, p1, v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;I)Z

    move-result p1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Z)V

    :cond_2
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-static {p0}, LA7;->i(Landroid/view/View;)I

    move-result p1

    .line 2
    iget-object p2, p0, Landroid/support/design/widget/CoordinatorLayout;->w:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_3

    .line 3
    iget-object p4, p0, Landroid/support/design/widget/CoordinatorLayout;->w:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 4
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-ne p5, v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lg0;

    .line 6
    iget-object p5, p5, Lg0;->a:Ld0;

    if-eqz p5, :cond_1

    .line 7
    invoke-virtual {p5, p0, p4, p1}, Ld0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p5

    if-nez p5, :cond_2

    .line 8
    :cond_1
    invoke-virtual {p0, p4, p1}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onMeasure(II)V
    .locals 30

    move-object/from16 v7, p0

    .line 1
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->x:Lo8;

    .line 3
    iget-object v1, v0, Lo8;->b:Ld7;

    .line 4
    iget v1, v1, Ld7;->y:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 5
    iget-object v4, v0, Lo8;->b:Ld7;

    invoke-virtual {v4, v3}, Ld7;->e(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object v5, v0, Lo8;->a:LZ6;

    invoke-interface {v5, v4}, LZ6;->a(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, v0, Lo8;->b:Ld7;

    invoke-virtual {v0}, Ld7;->clear()V

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x1

    if-ge v1, v0, :cond_1f

    .line 10
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 11
    invoke-virtual {v7, v3}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;)Lg0;

    move-result-object v4

    .line 12
    iget v5, v4, Lg0;->f:I

    const/4 v6, -0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_2

    .line 13
    iput-object v8, v4, Lg0;->l:Landroid/view/View;

    iput-object v8, v4, Lg0;->k:Landroid/view/View;

    goto/16 :goto_8

    .line 14
    :cond_2
    iget-object v5, v4, Lg0;->k:Landroid/view/View;

    if-eqz v5, :cond_8

    .line 15
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    iget v6, v4, Lg0;->f:I

    if-eq v5, v6, :cond_3

    goto :goto_4

    .line 16
    :cond_3
    iget-object v5, v4, Lg0;->k:Landroid/view/View;

    .line 17
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_2
    if-eq v6, v7, :cond_7

    if-eqz v6, :cond_6

    if-ne v6, v3, :cond_4

    goto :goto_3

    .line 18
    :cond_4
    instance-of v9, v6, Landroid/view/View;

    if-eqz v9, :cond_5

    .line 19
    move-object v5, v6

    check-cast v5, Landroid/view/View;

    .line 20
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_2

    .line 21
    :cond_6
    :goto_3
    iput-object v8, v4, Lg0;->l:Landroid/view/View;

    iput-object v8, v4, Lg0;->k:Landroid/view/View;

    :goto_4
    const/4 v5, 0x0

    goto :goto_5

    .line 22
    :cond_7
    iput-object v5, v4, Lg0;->l:Landroid/view/View;

    const/4 v5, 0x1

    :goto_5
    if-nez v5, :cond_10

    .line 23
    :cond_8
    iget v5, v4, Lg0;->f:I

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lg0;->k:Landroid/view/View;

    if-eqz v5, :cond_f

    if-ne v5, v7, :cond_a

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 25
    iput-object v8, v4, Lg0;->l:Landroid/view/View;

    iput-object v8, v4, Lg0;->k:Landroid/view/View;

    goto :goto_7

    .line 26
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_a
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_6
    if-eq v6, v7, :cond_e

    if-eqz v6, :cond_e

    if-ne v6, v3, :cond_c

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 29
    iput-object v8, v4, Lg0;->l:Landroid/view/View;

    iput-object v8, v4, Lg0;->k:Landroid/view/View;

    goto :goto_7

    .line 30
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_c
    instance-of v9, v6, Landroid/view/View;

    if-eqz v9, :cond_d

    .line 32
    move-object v5, v6

    check-cast v5, Landroid/view/View;

    .line 33
    :cond_d
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_6

    .line 34
    :cond_e
    iput-object v5, v4, Lg0;->l:Landroid/view/View;

    goto :goto_7

    .line 35
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 36
    iput-object v8, v4, Lg0;->l:Landroid/view/View;

    iput-object v8, v4, Lg0;->k:Landroid/view/View;

    .line 37
    :cond_10
    :goto_7
    iget-object v5, v4, Lg0;->k:Landroid/view/View;

    .line 38
    :goto_8
    iget-object v5, v7, Landroid/support/design/widget/CoordinatorLayout;->x:Lo8;

    invoke-virtual {v5, v3}, Lo8;->a(Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v0, :cond_1d

    if-ne v5, v1, :cond_11

    goto/16 :goto_10

    .line 39
    :cond_11
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 40
    iget-object v8, v4, Lg0;->l:Landroid/view/View;

    if-eq v6, v8, :cond_14

    .line 41
    invoke-static/range {p0 .. p0}, LA7;->i(Landroid/view/View;)I

    move-result v8

    .line 42
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lg0;

    .line 43
    iget v9, v9, Lg0;->g:I

    .line 44
    invoke-static {v9, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v9

    if-eqz v9, :cond_12

    .line 45
    iget v10, v4, Lg0;->h:I

    .line 46
    invoke-static {v10, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_12

    const/4 v8, 0x1

    goto :goto_a

    :cond_12
    const/4 v8, 0x0

    :goto_a
    if-nez v8, :cond_14

    .line 47
    iget-object v8, v4, Lg0;->a:Ld0;

    if-eqz v8, :cond_13

    .line 48
    invoke-virtual {v8, v7, v3, v6}, Ld0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_b

    :cond_13
    const/4 v8, 0x0

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v8, 0x1

    :goto_c
    if-eqz v8, :cond_1c

    .line 49
    iget-object v8, v7, Landroid/support/design/widget/CoordinatorLayout;->x:Lo8;

    .line 50
    iget-object v8, v8, Lo8;->b:Ld7;

    .line 51
    invoke-virtual {v8, v6}, Ld7;->a(Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_15

    const/4 v8, 0x1

    goto :goto_d

    :cond_15
    const/4 v8, 0x0

    :goto_d
    if-nez v8, :cond_16

    .line 52
    iget-object v8, v7, Landroid/support/design/widget/CoordinatorLayout;->x:Lo8;

    invoke-virtual {v8, v6}, Lo8;->a(Ljava/lang/Object;)V

    .line 53
    :cond_16
    iget-object v8, v7, Landroid/support/design/widget/CoordinatorLayout;->x:Lo8;

    .line 54
    iget-object v9, v8, Lo8;->b:Ld7;

    .line 55
    invoke-virtual {v9, v6}, Ld7;->a(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_17

    const/4 v9, 0x1

    goto :goto_e

    :cond_17
    const/4 v9, 0x0

    :goto_e
    if-eqz v9, :cond_1b

    .line 56
    iget-object v9, v8, Lo8;->b:Ld7;

    .line 57
    invoke-virtual {v9, v3}, Ld7;->a(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_18

    const/4 v9, 0x1

    goto :goto_f

    :cond_18
    const/4 v9, 0x0

    :goto_f
    if-eqz v9, :cond_1b

    .line 58
    iget-object v9, v8, Lo8;->b:Ld7;

    invoke-virtual {v9, v6}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_1a

    .line 59
    iget-object v9, v8, Lo8;->a:LZ6;

    invoke-interface {v9}, LZ6;->a()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_19

    .line 60
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 61
    :cond_19
    iget-object v8, v8, Lo8;->b:Ld7;

    invoke-virtual {v8, v6, v9}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_1a
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 63
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All nodes must be present in the graph before being added as an edge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 64
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find CoordinatorLayout descendant view with id "

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, v4, Lg0;->f:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1f
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->w:Ljava/util/List;

    iget-object v1, v7, Landroid/support/design/widget/CoordinatorLayout;->x:Lo8;

    .line 67
    iget-object v4, v1, Lo8;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 68
    iget-object v4, v1, Lo8;->d:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 69
    iget-object v4, v1, Lo8;->b:Ld7;

    .line 70
    iget v4, v4, Ld7;->y:I

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v4, :cond_20

    .line 71
    iget-object v6, v1, Lo8;->b:Ld7;

    invoke-virtual {v6, v5}, Ld7;->c(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v8, v1, Lo8;->c:Ljava/util/ArrayList;

    iget-object v9, v1, Lo8;->d:Ljava/util/HashSet;

    invoke-virtual {v1, v6, v8, v9}, Lo8;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 72
    :cond_20
    iget-object v1, v1, Lo8;->c:Ljava/util/ArrayList;

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->w:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_24

    .line 76
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 77
    iget-object v5, v7, Landroid/support/design/widget/CoordinatorLayout;->x:Lo8;

    .line 78
    iget-object v6, v5, Lo8;->b:Ld7;

    .line 79
    iget v6, v6, Ld7;->y:I

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v6, :cond_22

    .line 80
    iget-object v9, v5, Lo8;->b:Ld7;

    invoke-virtual {v9, v8}, Ld7;->e(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-eqz v9, :cond_21

    .line 81
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    const/4 v4, 0x1

    goto :goto_14

    :cond_21
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_22
    const/4 v4, 0x0

    :goto_14
    if-eqz v4, :cond_23

    const/4 v0, 0x1

    goto :goto_15

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_24
    const/4 v0, 0x0

    .line 82
    :goto_15
    iget-boolean v1, v7, Landroid/support/design/widget/CoordinatorLayout;->H:Z

    if-eq v0, v1, :cond_29

    if-eqz v0, :cond_27

    .line 83
    iget-boolean v0, v7, Landroid/support/design/widget/CoordinatorLayout;->C:Z

    if-eqz v0, :cond_26

    .line 84
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->G:Lh0;

    if-nez v0, :cond_25

    .line 85
    new-instance v0, Lh0;

    invoke-direct {v0, v7}, Lh0;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->G:Lh0;

    .line 86
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 87
    iget-object v1, v7, Landroid/support/design/widget/CoordinatorLayout;->G:Lh0;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 88
    :cond_26
    iput-boolean v3, v7, Landroid/support/design/widget/CoordinatorLayout;->H:Z

    goto :goto_16

    .line 89
    :cond_27
    iget-boolean v0, v7, Landroid/support/design/widget/CoordinatorLayout;->C:Z

    if-eqz v0, :cond_28

    .line 90
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->G:Lh0;

    if-eqz v0, :cond_28

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 92
    iget-object v1, v7, Landroid/support/design/widget/CoordinatorLayout;->G:Lh0;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 93
    :cond_28
    iput-boolean v2, v7, Landroid/support/design/widget/CoordinatorLayout;->H:Z

    .line 94
    :cond_29
    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    .line 98
    invoke-static/range {p0 .. p0}, LA7;->i(Landroid/view/View;)I

    move-result v10

    if-ne v10, v3, :cond_2a

    const/4 v2, 0x1

    const/4 v11, 0x1

    goto :goto_17

    :cond_2a
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 99
    :goto_17
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 100
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 101
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 102
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    add-int v16, v8, v9

    add-int v17, v0, v1

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v0

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v1

    .line 105
    iget-object v2, v7, Landroid/support/design/widget/CoordinatorLayout;->I:LV7;

    if-eqz v2, :cond_2b

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    const/16 v18, 0x1

    goto :goto_18

    :cond_2b
    const/4 v2, 0x0

    const/16 v18, 0x0

    .line 107
    :goto_18
    iget-object v2, v7, Landroid/support/design/widget/CoordinatorLayout;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v2, v0

    move v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v6, :cond_38

    .line 108
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->w:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/View;

    .line 109
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2c

    move/from16 v20, v5

    move/from16 v21, v6

    goto/16 :goto_1e

    .line 110
    :cond_2c
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lg0;

    .line 111
    iget v0, v1, Lg0;->e:I

    if-ltz v0, :cond_33

    if-eqz v12, :cond_33

    .line 112
    invoke-virtual {v7, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(I)I

    move-result v0

    move/from16 v20, v2

    .line 113
    iget v2, v1, Lg0;->c:I

    if-nez v2, :cond_2d

    const v2, 0x800035

    .line 114
    :cond_2d
    invoke-static {v2, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    move/from16 v21, v3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2e

    if-eqz v11, :cond_2f

    :cond_2e
    const/4 v3, 0x5

    if-ne v2, v3, :cond_30

    if-eqz v11, :cond_30

    :cond_2f
    sub-int v2, v13, v9

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    .line 115
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1a
    move/from16 v22, v0

    goto :goto_1b

    :cond_30
    if-ne v2, v3, :cond_31

    if-eqz v11, :cond_32

    :cond_31
    const/4 v3, 0x3

    if-ne v2, v3, :cond_34

    if-eqz v11, :cond_34

    :cond_32
    sub-int/2addr v0, v8

    const/4 v2, 0x0

    .line 116
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1a

    :cond_33
    move/from16 v20, v2

    move/from16 v21, v3

    :cond_34
    const/4 v0, 0x0

    const/16 v22, 0x0

    :goto_1b
    if-eqz v18, :cond_35

    .line 117
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    if-nez v0, :cond_35

    .line 118
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->I:LV7;

    invoke-virtual {v0}, LV7;->b()I

    move-result v0

    iget-object v2, v7, Landroid/support/design/widget/CoordinatorLayout;->I:LV7;

    .line 119
    invoke-virtual {v2}, LV7;->c()I

    move-result v2

    add-int/2addr v2, v0

    .line 120
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->I:LV7;

    invoke-virtual {v0}, LV7;->d()I

    move-result v0

    iget-object v3, v7, Landroid/support/design/widget/CoordinatorLayout;->I:LV7;

    .line 121
    invoke-virtual {v3}, LV7;->a()I

    move-result v3

    add-int/2addr v3, v0

    sub-int v0, v13, v2

    .line 122
    invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sub-int v2, v15, v3

    .line 123
    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move/from16 v23, v0

    move/from16 v24, v2

    goto :goto_1c

    :cond_35
    move/from16 v23, p1

    move/from16 v24, p2

    .line 124
    :goto_1c
    iget-object v0, v1, Lg0;->a:Ld0;

    if-eqz v0, :cond_36

    const/16 v25, 0x0

    move-object v3, v1

    move-object/from16 v1, p0

    move/from16 v26, v20

    move-object/from16 v2, v19

    move-object/from16 v28, v3

    move/from16 v27, v21

    move/from16 v3, v23

    move/from16 v29, v4

    move/from16 v4, v22

    move/from16 v20, v5

    move/from16 v5, v24

    move/from16 v21, v6

    move/from16 v6, v25

    .line 125
    invoke-virtual/range {v0 .. v6}, Ld0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_1d

    :cond_36
    move-object/from16 v28, v1

    move/from16 v29, v4

    move/from16 v26, v20

    move/from16 v27, v21

    move/from16 v20, v5

    move/from16 v21, v6

    :goto_1d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v22

    move/from16 v4, v24

    .line 126
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;IIII)V

    .line 127
    :cond_37
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v0, v0, v16

    move-object/from16 v1, v28

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    move/from16 v2, v26

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 128
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v2, v2, v17

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v1

    move/from16 v1, v27

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 129
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    move/from16 v3, v29

    invoke-static {v3, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v3, v1

    move v4, v2

    move v2, v0

    :goto_1e
    add-int/lit8 v5, v20, 0x1

    move/from16 v6, v21

    goto/16 :goto_19

    :cond_38
    move v1, v3

    move v3, v4

    const/high16 v0, -0x1000000

    and-int/2addr v0, v3

    move/from16 v4, p1

    .line 130
    invoke-static {v2, v4, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    shl-int/lit8 v2, v3, 0x10

    move/from16 v3, p2

    .line 131
    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 132
    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_2

    .line 2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 3
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lg0;

    .line 5
    invoke-virtual {p4, p2}, Lg0;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object p4, p4, Lg0;->a:Ld0;

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_2

    .line 2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg0;

    .line 5
    invoke-virtual {v0, p2}, Lg0;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, v0, Lg0;->a:Ld0;

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    .line 4
    iget-object v0, p1, Landroid/support/v4/view/AbsSavedState;->w:Landroid/os/Parcelable;

    .line 5
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    iget-object p1, p1, Landroid/support/design/widget/CoordinatorLayout$SavedState;->y:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 10
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;)Lg0;

    move-result-object v4

    .line 11
    iget-object v4, v4, Lg0;->a:Ld0;

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    if-eqz v3, :cond_1

    .line 13
    invoke-virtual {v4, p0, v2, v3}, Ld0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .line 1
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lg0;

    .line 7
    iget-object v6, v6, Lg0;->a:Ld0;

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    if-eqz v6, :cond_0

    .line 8
    invoke-virtual {v6, p0, v4}, Ld0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iput-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$SavedState;->y:Landroid/util/SparseArray;

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 2
    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->E:Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v4}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v6, v0, Landroid/support/design/widget/CoordinatorLayout;->E:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lg0;

    .line 4
    iget-object v6, v6, Lg0;->a:Ld0;

    if-eqz v6, :cond_1

    .line 5
    iget-object v7, v0, Landroid/support/design/widget/CoordinatorLayout;->E:Landroid/view/View;

    invoke-virtual {v6, v0, v7, v1}, Ld0;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 6
    :goto_1
    iget-object v7, v0, Landroid/support/design/widget/CoordinatorLayout;->E:Landroid/view/View;

    const/4 v8, 0x0

    if-nez v7, :cond_2

    .line 7
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v6, v1

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide v9, v11

    .line 9
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 10
    invoke-super {v0, v8}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    .line 11
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    if-eq v2, v4, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_6

    .line 12
    :cond_5
    invoke-virtual {v0, v5}, Landroid/support/design/widget/CoordinatorLayout;->a(Z)V

    :cond_6
    return v6
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg0;

    .line 2
    iget-object v0, v0, Lg0;->a:Ld0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Ld0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout;->B:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->a(Z)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout;->B:Z

    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->a()V

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->L:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->K:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 3
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->K:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
