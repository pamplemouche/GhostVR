.class public abstract LNM0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/view/animation/DecelerateInterpolator;

.field public static final b:Lb8;

.field public static final c:Lc8;

.field public static final d:Landroid/view/animation/LinearInterpolator;

.field public static final e:Ld8;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, LNM0;->a:Landroid/view/animation/DecelerateInterpolator;

    .line 3
    new-instance v0, Lb8;

    invoke-direct {v0}, Lb8;-><init>()V

    sput-object v0, LNM0;->b:Lb8;

    .line 4
    new-instance v0, Lc8;

    invoke-direct {v0}, Lc8;-><init>()V

    sput-object v0, LNM0;->c:Lc8;

    .line 5
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, LNM0;->d:Landroid/view/animation/LinearInterpolator;

    .line 6
    new-instance v0, Ld8;

    invoke-direct {v0}, Ld8;-><init>()V

    sput-object v0, LNM0;->e:Ld8;

    return-void
.end method
