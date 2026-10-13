.class public abstract LJ;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/animation/TimeInterpolator;

.field public static final b:Landroid/animation/TimeInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 2
    new-instance v0, Lc8;

    invoke-direct {v0}, Lc8;-><init>()V

    sput-object v0, LJ;->a:Landroid/animation/TimeInterpolator;

    .line 3
    new-instance v0, Lb8;

    invoke-direct {v0}, Lb8;-><init>()V

    .line 4
    new-instance v0, Ld8;

    invoke-direct {v0}, Ld8;-><init>()V

    .line 5
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, LJ;->b:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static a(IIF)I
    .locals 0

    sub-int/2addr p1, p0

    int-to-float p1, p1

    mul-float p2, p2, p1

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method
