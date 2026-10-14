.class public Landroid/support/v7/widget/SeslProgressBar;
.super Landroid/view/View;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final a:Z

.field private static final b:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private A:Landroid/support/v7/widget/iz;

.field private B:Z

.field private C:Landroid/view/animation/Interpolator;

.field private D:Landroid/support/v7/widget/jb;

.field private E:J

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:F

.field private K:Z

.field private final L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/ja;",
            ">;"
        }
    .end annotation
.end field

.field private M:Landroid/support/v7/widget/iy;

.field private final N:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/support/v7/widget/SeslProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Z

.field protected i:I

.field protected j:F

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:Z

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Landroid/view/animation/Transformation;

.field private v:Landroid/view/animation/AlphaAnimation;

.field private w:Z

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/SeslProgressBar;->a:Z

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SeslProgressBar;->b:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->g:I

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->h:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->L:Ljava/util/ArrayList;

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->i:I

    new-instance v1, Landroid/support/v7/widget/ix;

    const-string v2, "visual_progress"

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/ix;-><init>(Landroid/support/v7/widget/SeslProgressBar;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->N:Landroid/util/FloatProperty;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v7/widget/SeslProgressBar;->E:J

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->a()V

    sget-object v1, Landroid/support/v7/b/l;->ProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroid/support/v7/widget/SeslProgressBar;->B:Z

    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_progressDrawable:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-static {p4}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_indeterminateDuration:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->r:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/SeslProgressBar;->r:I

    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_minWidth:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->c:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/SeslProgressBar;->c:I

    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_maxWidth:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->d:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/SeslProgressBar;->d:I

    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_minHeight:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->e:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/SeslProgressBar;->e:I

    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_maxHeight:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->f:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/SeslProgressBar;->f:I

    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_indeterminateBehavior:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->q:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/SeslProgressBar;->q:I

    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_interpolator:I

    const v1, 0x10a000b

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-lez p4, :cond_2

    invoke-virtual {p0, p1, p4}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/content/Context;I)V

    :cond_2
    sget p4, Landroid/support/v7/b/l;->ProgressBar_min:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->m:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslProgressBar;->setMin(I)V

    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_max:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->o:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslProgressBar;->setMax(I)V

    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_progress:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslProgressBar;->setProgress(I)V

    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_secondaryProgress:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->l:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslProgressBar;->setSecondaryProgress(I)V

    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_indeterminateDrawable:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-static {p4}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_indeterminateOnly:I

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->t:Z

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroid/support/v7/widget/SeslProgressBar;->t:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->B:Z

    iget-boolean p4, p0, Landroid/support/v7/widget/SeslProgressBar;->t:Z

    if-nez p4, :cond_5

    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_indeterminate:I

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    if-eqz p4, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->setIndeterminate(Z)V

    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_mirrorForRtl:I

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->h:Z

    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroid/support/v7/widget/SeslProgressBar;->h:Z

    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_progressTintMode:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_8

    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-nez p4, :cond_7

    new-instance p4, Landroid/support/v7/widget/iz;

    invoke-direct {p4, v1}, Landroid/support/v7/widget/iz;-><init>(Landroid/support/v7/widget/ix;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    :cond_7
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    sget v2, Landroid/support/v7/b/l;->ProgressBar_android_progressTintMode:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2, v1}, Landroid/support/v7/widget/ch;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p4, Landroid/support/v7/widget/iz;->f:Landroid/graphics/PorterDuff$Mode;

    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iput-boolean p3, p4, Landroid/support/v7/widget/iz;->h:Z

    :cond_8
    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_progressTint:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_a

    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-nez p4, :cond_9

    new-instance p4, Landroid/support/v7/widget/iz;

    invoke-direct {p4, v1}, Landroid/support/v7/widget/iz;-><init>(Landroid/support/v7/widget/ix;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    :cond_9
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    sget v2, Landroid/support/v7/b/l;->ProgressBar_android_progressTint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p4, Landroid/support/v7/widget/iz;->e:Landroid/content/res/ColorStateList;

    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iput-boolean p3, p4, Landroid/support/v7/widget/iz;->g:Z

    :cond_a
    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_progressBackgroundTintMode:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_c

    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-nez p4, :cond_b

    new-instance p4, Landroid/support/v7/widget/iz;

    invoke-direct {p4, v1}, Landroid/support/v7/widget/iz;-><init>(Landroid/support/v7/widget/ix;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    :cond_b
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    sget v2, Landroid/support/v7/b/l;->ProgressBar_android_progressBackgroundTintMode:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2, v1}, Landroid/support/v7/widget/ch;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p4, Landroid/support/v7/widget/iz;->j:Landroid/graphics/PorterDuff$Mode;

    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iput-boolean p3, p4, Landroid/support/v7/widget/iz;->l:Z

    :cond_c
    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_progressBackgroundTint:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_e

    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-nez p4, :cond_d

    new-instance p4, Landroid/support/v7/widget/iz;

    invoke-direct {p4, v1}, Landroid/support/v7/widget/iz;-><init>(Landroid/support/v7/widget/ix;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    :cond_d
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    sget v2, Landroid/support/v7/b/l;->ProgressBar_android_progressBackgroundTint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p4, Landroid/support/v7/widget/iz;->i:Landroid/content/res/ColorStateList;

    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iput-boolean p3, p4, Landroid/support/v7/widget/iz;->k:Z

    :cond_e
    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_secondaryProgressTintMode:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_10

    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-nez p4, :cond_f

    new-instance p4, Landroid/support/v7/widget/iz;

    invoke-direct {p4, v1}, Landroid/support/v7/widget/iz;-><init>(Landroid/support/v7/widget/ix;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    :cond_f
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    sget v2, Landroid/support/v7/b/l;->ProgressBar_android_secondaryProgressTintMode:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2, v1}, Landroid/support/v7/widget/ch;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p4, Landroid/support/v7/widget/iz;->n:Landroid/graphics/PorterDuff$Mode;

    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iput-boolean p3, p4, Landroid/support/v7/widget/iz;->p:Z

    :cond_10
    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_secondaryProgressTint:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_12

    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-nez p4, :cond_11

    new-instance p4, Landroid/support/v7/widget/iz;

    invoke-direct {p4, v1}, Landroid/support/v7/widget/iz;-><init>(Landroid/support/v7/widget/ix;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    :cond_11
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    sget v2, Landroid/support/v7/b/l;->ProgressBar_android_secondaryProgressTint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p4, Landroid/support/v7/widget/iz;->m:Landroid/content/res/ColorStateList;

    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iput-boolean p3, p4, Landroid/support/v7/widget/iz;->o:Z

    :cond_12
    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_indeterminateTintMode:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_14

    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-nez p4, :cond_13

    new-instance p4, Landroid/support/v7/widget/iz;

    invoke-direct {p4, v1}, Landroid/support/v7/widget/iz;-><init>(Landroid/support/v7/widget/ix;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    :cond_13
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    sget v2, Landroid/support/v7/b/l;->ProgressBar_android_indeterminateTintMode:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ch;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p4, Landroid/support/v7/widget/iz;->b:Landroid/graphics/PorterDuff$Mode;

    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iput-boolean p3, p4, Landroid/support/v7/widget/iz;->d:Z

    :cond_14
    sget p4, Landroid/support/v7/b/l;->ProgressBar_android_indeterminateTint:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_16

    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-nez p4, :cond_15

    new-instance p4, Landroid/support/v7/widget/iz;

    invoke-direct {p4, v1}, Landroid/support/v7/widget/iz;-><init>(Landroid/support/v7/widget/ix;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    :cond_15
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    sget v0, Landroid/support/v7/b/l;->ProgressBar_android_indeterminateTint:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p4, Landroid/support/v7/widget/iz;->a:Landroid/content/res/ColorStateList;

    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iput-boolean p3, p4, Landroid/support/v7/widget/iz;->c:Z

    :cond_16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->c()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->b()V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_17

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/SeslProgressBar;->setImportantForAccessibility(I)V

    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->j:F

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslProgressBar;F)F
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->J:F

    return p1
.end method

.method private static a(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/SeslProgressBar;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/c/a/j;->a(Landroid/graphics/drawable/StateListDrawable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_1

    :cond_1
    move-object p1, v1

    :cond_2
    :goto_1
    return-object p1
.end method

.method private a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p2

    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_2

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget v6, Landroid/support/v7/b/g;->progress:I

    if-eq v4, v6, :cond_1

    sget v6, Landroid/support/v7/b/g;->secondaryProgress:I

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-direct {p0, v5, v4}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_3
    if-ge v1, p2, :cond_4

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-object v2

    :cond_5
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_8

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-static {p1}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_7

    invoke-direct {p0, p1, v1}, Landroid/support/v7/widget/SeslProgressBar;->b(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v3

    invoke-static {p1, v1}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v4, p2}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-object v0

    :cond_8
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->g:I

    if-gtz v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->g:I

    :cond_9
    if-eqz p2, :cond_a

    new-instance p2, Landroid/graphics/drawable/ClipDrawable;

    const/4 v0, 0x3

    invoke-direct {p2, p1, v0, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object p2

    :cond_a
    return-object p1
.end method

.method private static a(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/SeslProgressBar;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/support/v4/c/a/j;->a(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslProgressBar;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslProgressBar;->L:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->m:I

    const/16 v1, 0x64

    iput v1, p0, Landroid/support/v7/widget/SeslProgressBar;->o:I

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->l:I

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->t:Z

    const/16 v0, 0xfa0

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->r:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->q:I

    const/16 v0, 0x18

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->c:I

    const/16 v1, 0x30

    iput v1, p0, Landroid/support/v7/widget/SeslProgressBar;->d:I

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->e:I

    iput v1, p0, Landroid/support/v7/widget/SeslProgressBar;->f:I

    return-void
.end method

.method private declared-synchronized a(IIZZ)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/support/v7/widget/SeslProgressBar;->E:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v9, 0x1

    move-object v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v10, p4

    invoke-direct/range {v5 .. v10}, Landroid/support/v7/widget/SeslProgressBar;->a(IIZZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->D:Landroid/support/v7/widget/jb;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v7/widget/jb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/jb;-><init>(Landroid/support/v7/widget/SeslProgressBar;Landroid/support/v7/widget/ix;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->D:Landroid/support/v7/widget/jb;

    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/ja;->a(IIZZ)Landroid/support/v7/widget/ja;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v7/widget/SeslProgressBar;->L:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->H:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->I:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->D:Landroid/support/v7/widget/jb;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->I:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(IIZZZ)V
    .locals 14

    move-object v1, p0

    move v0, p1

    move/from16 v2, p2

    monitor-enter p0

    :try_start_0
    iget v3, v1, Landroid/support/v7/widget/SeslProgressBar;->o:I

    iget v4, v1, Landroid/support/v7/widget/SeslProgressBar;->m:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_0

    iget v4, v1, Landroid/support/v7/widget/SeslProgressBar;->m:I

    sub-int v4, v2, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sget v3, Landroid/support/v7/b/g;->progress:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const v7, 0x461c4000    # 10000.0f

    mul-float v7, v7, v4

    float-to-int v7, v7

    iget-object v8, v1, Landroid/support/v7/widget/SeslProgressBar;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_9

    instance-of v9, v8, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v9, :cond_4

    move-object v9, v8

    check-cast v9, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->canResolveLayoutDirection()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v10

    invoke-static {v9, v10}, Landroid/support/v4/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    :cond_2
    if-eqz v9, :cond_3

    move-object v8, v9

    :cond_3
    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_5

    :cond_4
    instance-of v9, v8, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v9, :cond_3

    move-object v9, v8

    check-cast v9, Landroid/graphics/drawable/StateListDrawable;

    invoke-static {v9}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_a

    move-object v11, v8

    check-cast v11, Landroid/graphics/drawable/StateListDrawable;

    invoke-static {v11, v10}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x0

    if-nez v11, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    instance-of v13, v11, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v13, :cond_6

    check-cast v11, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->canResolveLayoutDirection()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v12

    invoke-static {v11, v12}, Landroid/support/v4/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    goto :goto_3

    :cond_6
    move-object v11, v12

    :cond_7
    :goto_3
    if-eqz v11, :cond_8

    goto :goto_4

    :cond_8
    move-object v11, v8

    :goto_4
    invoke-virtual {v11, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->invalidate()V

    :cond_a
    :goto_5
    if-eqz v3, :cond_b

    if-eqz p5, :cond_b

    iget-object v0, v1, Landroid/support/v7/widget/SeslProgressBar;->N:Landroid/util/FloatProperty;

    new-array v7, v6, [F

    aput v4, v7, v5

    invoke-static {p0, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v5, 0x50

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Landroid/support/v7/widget/SeslProgressBar;->b:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_6

    :cond_b
    invoke-direct {p0, p1, v4}, Landroid/support/v7/widget/SeslProgressBar;->b(IF)V

    :goto_6
    if-eqz v3, :cond_c

    if-eqz p4, :cond_c

    move/from16 v0, p3

    invoke-virtual {p0, v4, v0, v2}, Landroid/support/v7/widget/SeslProgressBar;->a(FZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslProgressBar;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->b(IF)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslProgressBar;IIZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/support/v7/widget/SeslProgressBar;->a(IIZZZ)V

    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_5

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-static {p0}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    invoke-static {p0, v3}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v4}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    instance-of p0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslProgressBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->I:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/SeslProgressBar;)F
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslProgressBar;->J:F

    return p0
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x2710

    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object p1, v1

    :cond_1
    return-object p1
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Landroid/support/v7/widget/iz;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/support/v7/widget/iz;->d:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, v0, Landroid/support/v7/widget/iz;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/support/v7/widget/iz;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v1, v0, Landroid/support/v7/widget/iz;->d:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Landroid/support/v7/widget/iz;->b:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private b(IF)V
    .locals 2

    iput p2, p0, Landroid/support/v7/widget/SeslProgressBar;->J:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->z:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->z:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz v0, :cond_1

    const v1, 0x461c4000    # 10000.0f

    mul-float v1, v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->invalidate()V

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->a(IF)V

    return-void
.end method

.method private b(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/SeslProgressBar;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/support/v4/c/a/j;->b(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->d()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->e()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->f()V

    :cond_0
    return-void
.end method

.method private c(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->z:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->z:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->z:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-boolean v0, v0, Landroid/support/v7/widget/iz;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-boolean v0, v0, Landroid/support/v7/widget/iz;->h:Z

    if-eqz v0, :cond_3

    :cond_0
    sget v0, Landroid/support/v7/b/g;->progress:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-boolean v1, v1, Landroid/support/v7/widget/iz;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-object v1, v1, Landroid/support/v7/widget/iz;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-boolean v1, v1, Landroid/support/v7/widget/iz;->h:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-object v1, v1, Landroid/support/v7/widget/iz;->f:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-boolean v0, v0, Landroid/support/v7/widget/iz;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-boolean v0, v0, Landroid/support/v7/widget/iz;->l:Z

    if-eqz v0, :cond_3

    :cond_0
    sget v0, Landroid/support/v7/b/g;->background:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-boolean v1, v1, Landroid/support/v7/widget/iz;->k:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-object v1, v1, Landroid/support/v7/widget/iz;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-boolean v1, v1, Landroid/support/v7/widget/iz;->l:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-object v1, v1, Landroid/support/v7/widget/iz;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-boolean v0, v0, Landroid/support/v7/widget/iz;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-boolean v0, v0, Landroid/support/v7/widget/iz;->p:Z

    if-eqz v0, :cond_3

    :cond_0
    sget v0, Landroid/support/v7/b/g;->secondaryProgress:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-boolean v1, v1, Landroid/support/v7/widget/iz;->o:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-object v1, v1, Landroid/support/v7/widget/iz;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-boolean v1, v1, Landroid/support/v7/widget/iz;->p:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iget-object v1, v1, Landroid/support/v7/widget/iz;->n:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private g()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->invalidate()V

    :cond_2
    return-void
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->M:Landroid/support/v7/widget/iy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/iy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/iy;-><init>(Landroid/support/v7/widget/SeslProgressBar;Landroid/support/v7/widget/ix;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->M:Landroid/support/v7/widget/iy;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->M:Landroid/support/v7/widget/iy;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/SeslProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method a(FZI)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "accessibility"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->h()V

    :cond_0
    iget p1, p0, Landroid/support/v7/widget/SeslProgressBar;->l:I

    iget p3, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I

    if-le p1, p3, :cond_1

    if-nez p2, :cond_1

    sget p1, Landroid/support/v7/b/g;->secondaryProgress:I

    iget p2, p0, Landroid/support/v7/widget/SeslProgressBar;->l:I

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3, p3}, Landroid/support/v7/widget/SeslProgressBar;->a(IIZZ)V

    :cond_1
    return-void
.end method

.method protected a(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Landroid/support/v7/b/g;->progress:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    return-void
.end method

.method a(IF)V
    .locals 0

    return-void
.end method

.method protected a(II)V
    .locals 10

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Landroid/support/v7/widget/SeslProgressBar;->t:Z

    if-eqz v2, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, p1

    int-to-float v3, p2

    div-float v4, v2, v3

    sub-float v5, v0, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v9, v5, v7

    if-gez v9, :cond_1

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    mul-float v3, v3, v0

    float-to-int v0, v3

    sub-int v2, p1, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v0

    mul-float v2, v2, v3

    float-to-int v0, v2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    move v3, p2

    move p2, v0

    const/4 v2, 0x0

    move v0, p1

    goto :goto_1

    :cond_1
    move v0, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslProgressBar;->h:Z

    if-eqz v4, :cond_2

    invoke-static {p0}, Landroid/support/v7/widget/ly;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    sub-int v0, p1, v0

    sub-int/2addr p1, v2

    goto :goto_2

    :cond_2
    move p1, v0

    move v0, v2

    :goto_2
    iget-object v2, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method a(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/SeslProgressBar;->i:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/support/v7/widget/SeslProgressBar;->h:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/support/v7/widget/ly;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawingTime()J

    move-result-wide v2

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslProgressBar;->w:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/SeslProgressBar;->v:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Landroid/support/v7/widget/SeslProgressBar;->u:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object v2, p0, Landroid/support/v7/widget/SeslProgressBar;->u:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroid/support/v7/widget/SeslProgressBar;->G:Z

    const v3, 0x461c4000    # 10000.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v5, p0, Landroid/support/v7/widget/SeslProgressBar;->G:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidateOnAnimation()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v5, p0, Landroid/support/v7/widget/SeslProgressBar;->G:Z

    throw p1

    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->F:Z

    if-eqz p1, :cond_2

    instance-of p1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_2

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    iput-boolean v5, p0, Landroid/support/v7/widget/SeslProgressBar;->F:Z

    :cond_2
    return-void
.end method

.method declared-synchronized a(IZZ)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->m:I

    iget v2, p0, Landroid/support/v7/widget/SeslProgressBar;->o:I

    invoke-static {p1, v0, v2}, Landroid/support/v4/g/a;->a(III)I

    move-result p1

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I

    sget p1, Landroid/support/v7/b/g;->progress:I

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/support/v7/widget/SeslProgressBar;->a(IIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->l:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->g()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->z:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/iz;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/iz;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->C:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMin()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMirrorForRtl()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->h:Z

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    invoke-static {p0}, Landroid/support/v4/view/aw;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    invoke-static {p0}, Landroid/support/v4/view/aw;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/iz;->i:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/iz;->j:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/iz;->e:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/iz;->f:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/iz;->m:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/iz;->n:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->G:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-virtual {p0, v2, v3, v4, p1}, Landroid/support/v7/widget/SeslProgressBar;->invalidate(IIII)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized j()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method k()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Landroid/support/v7/widget/SeslProgressBar;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->F:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->w:Z

    goto :goto_2

    :cond_1
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->w:Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->C:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->C:Landroid/view/animation/Interpolator;

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->u:Landroid/view/animation/Transformation;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->u:Landroid/view/animation/Transformation;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->v:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->v:Landroid/view/animation/AlphaAnimation;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->v:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->q:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->v:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->v:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->r:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->v:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->C:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->v:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    :cond_5
    :goto_3
    return-void
.end method

.method l()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->w:Z

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->F:Z

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 9

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->k()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->L:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/SeslProgressBar;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ja;

    iget v4, v2, Landroid/support/v7/widget/ja;->a:I

    iget v5, v2, Landroid/support/v7/widget/ja;->b:I

    iget-boolean v6, v2, Landroid/support/v7/widget/ja;->c:Z

    const/4 v7, 0x1

    iget-boolean v8, v2, Landroid/support/v7/widget/ja;->d:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/widget/SeslProgressBar;->a(IIZZZ)V

    invoke-virtual {v2}, Landroid/support/v7/widget/ja;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->H:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->l()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->D:Landroid/support/v7/widget/jb;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->I:Z

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->M:Landroid/support/v7/widget/iy;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->H:Z

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->o:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->m:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->z:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Landroid/support/v7/widget/SeslProgressBar;->c:I

    iget v3, p0, Landroid/support/v7/widget/SeslProgressBar;->d:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/SeslProgressBar;->e:I

    iget v4, p0, Landroid/support/v7/widget/SeslProgressBar;->f:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->g()V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-static {v2, p1, v1}, Landroid/support/v7/widget/SeslProgressBar;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/SeslProgressBar;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/support/v7/widget/SeslProgressBar$SavedState;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroid/support/v7/widget/SeslProgressBar$SavedState;->a:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->setProgress(I)V

    iget p1, p1, Landroid/support/v7/widget/SeslProgressBar$SavedState;->b:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/SeslProgressBar$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SeslProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I

    iput v0, v1, Landroid/support/v7/widget/SeslProgressBar$SavedState;->a:I

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->l:I

    iput v0, v1, Landroid/support/v7/widget/SeslProgressBar$SavedState;->b:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->a(II)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->K:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->K:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->k()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->l()V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->k()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->l()V

    :cond_2
    :goto_1
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->B:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->t:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->c(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->k()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->c(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->b()V

    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->c(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    :cond_3
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/iz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/iz;-><init>(Landroid/support/v7/widget/ix;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iput-object p1, v0, Landroid/support/v7/widget/iz;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/widget/iz;->c:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->b()V

    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/iz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/iz;-><init>(Landroid/support/v7/widget/ix;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iput-object p1, v0, Landroid/support/v7/widget/iz;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/widget/iz;->d:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->b()V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->C:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->n:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->m:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Landroid/support/v7/widget/SeslProgressBar;->m:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->p:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->n:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->o:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->o:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I

    if-le v0, p1, :cond_1

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I

    :cond_1
    sget p1, Landroid/support/v7/b/g;->progress:I

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/support/v7/widget/SeslProgressBar;->a(IIZZ)V

    goto :goto_0

    :cond_2
    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMin(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->p:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->o:I

    if-le p1, v0, :cond_0

    iget p1, p0, Landroid/support/v7/widget/SeslProgressBar;->o:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->n:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->p:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->m:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->m:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I

    if-ge v0, p1, :cond_1

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I

    :cond_1
    sget p1, Landroid/support/v7/b/g;->progress:I

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/support/v7/widget/SeslProgressBar;->a(IIZZ)V

    goto :goto_0

    :cond_2
    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMode(I)V
    .locals 1

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->i:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Landroid/support/v7/b/f;->sesl_split_seekbar_background_progress:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Landroid/support/v7/b/f;->sesl_scrubber_progress_vertical:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Landroid/support/v7/widget/SeslProgressBar;->a(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/iz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/iz;-><init>(Landroid/support/v7/widget/ix;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iput-object p1, v0, Landroid/support/v7/widget/iz;->i:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/widget/iz;->k:Z

    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->e()V

    :cond_1
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/iz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/iz;-><init>(Landroid/support/v7/widget/ix;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iput-object p1, v0, Landroid/support/v7/widget/iz;->j:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/widget/iz;->l:Z

    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->e()V

    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 13

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_6

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->d:I

    if-ge v1, v0, :cond_3

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->d:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->f:I

    if-ge v1, v0, :cond_3

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->f:I

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->requestLayout()V

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->c()V

    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->c(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/SeslProgressBar;->a(II)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->g()V

    sget v2, Landroid/support/v7/b/g;->progress:I

    iget v3, p0, Landroid/support/v7/widget/SeslProgressBar;->k:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/SeslProgressBar;->a(IIZZZ)V

    sget v8, Landroid/support/v7/b/g;->secondaryProgress:I

    iget v9, p0, Landroid/support/v7/widget/SeslProgressBar;->l:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Landroid/support/v7/widget/SeslProgressBar;->a(IIZZZ)V

    :cond_6
    return-void
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/iz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/iz;-><init>(Landroid/support/v7/widget/ix;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iput-object p1, v0, Landroid/support/v7/widget/iz;->e:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/widget/iz;->g:Z

    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->d()V

    :cond_1
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/iz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/iz;-><init>(Landroid/support/v7/widget/ix;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iput-object p1, v0, Landroid/support/v7/widget/iz;->f:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/widget/iz;->h:Z

    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->d()V

    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->m:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Landroid/support/v7/widget/SeslProgressBar;->m:I

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->o:I

    if-le p1, v0, :cond_2

    iget p1, p0, Landroid/support/v7/widget/SeslProgressBar;->o:I

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->l:I

    if-eq p1, v0, :cond_3

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->l:I

    sget p1, Landroid/support/v7/b/g;->secondaryProgress:I

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->l:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/support/v7/widget/SeslProgressBar;->a(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/iz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/iz;-><init>(Landroid/support/v7/widget/ix;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iput-object p1, v0, Landroid/support/v7/widget/iz;->m:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/widget/iz;->o:Z

    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->f()V

    :cond_1
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/iz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/iz;-><init>(Landroid/support/v7/widget/ix;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->A:Landroid/support/v7/widget/iz;

    iput-object p1, v0, Landroid/support/v7/widget/iz;->n:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/widget/iz;->p:Z

    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->f()V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->s:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->k()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->l()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->y:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->x:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

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
