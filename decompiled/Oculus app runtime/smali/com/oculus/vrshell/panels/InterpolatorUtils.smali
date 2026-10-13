.class public final Lcom/oculus/vrshell/panels/InterpolatorUtils;
.super Ljava/lang/Object;
.source "InterpolatorUtils.java"


# static fields
.field private static final sAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private static sLinearInterpolator:Landroid/view/animation/Interpolator;

.field private static sReverseAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private static sReverseLinearInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 98
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f03d70a    # 0.515f

    const v3, 0x3e3d70a4    # 0.185f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oculus/vrshell/panels/InterpolatorUtils;->sAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 102
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/panels/InterpolatorUtils;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 61
    sget-object v0, Lcom/oculus/vrshell/panels/InterpolatorUtils;->sAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private static getLinearInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 82
    sget-object v0, Lcom/oculus/vrshell/panels/InterpolatorUtils;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private static getReverseAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .line 70
    sget-object v0, Lcom/oculus/vrshell/panels/InterpolatorUtils;->sReverseAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/oculus/vrshell/panels/ReverseInterpolator;

    invoke-static {}, Lcom/oculus/vrshell/panels/InterpolatorUtils;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/vrshell/panels/ReverseInterpolator;-><init>(Landroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/oculus/vrshell/panels/InterpolatorUtils;->sReverseAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 73
    :cond_0
    sget-object v0, Lcom/oculus/vrshell/panels/InterpolatorUtils;->sReverseAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private static getReverseLinearInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .line 91
    sget-object v0, Lcom/oculus/vrshell/panels/InterpolatorUtils;->sReverseLinearInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/oculus/vrshell/panels/ReverseInterpolator;

    invoke-static {}, Lcom/oculus/vrshell/panels/InterpolatorUtils;->getLinearInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/vrshell/panels/ReverseInterpolator;-><init>(Landroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/oculus/vrshell/panels/InterpolatorUtils;->sReverseLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 94
    :cond_0
    sget-object v0, Lcom/oculus/vrshell/panels/InterpolatorUtils;->sReverseLinearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static setInterpolator(Landroid/view/animation/Animation;)V
    .locals 1

    .line 22
    invoke-static {}, Lcom/oculus/vrshell/panels/InterpolatorUtils;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static setInterpolator(Landroid/view/animation/Animation;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 42
    invoke-static {}, Lcom/oculus/vrshell/panels/InterpolatorUtils;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oculus/vrshell/panels/InterpolatorUtils;->getReverseAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    .line 41
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static setLinearInterpolator(Landroid/view/animation/Animation;)V
    .locals 1

    .line 31
    invoke-static {}, Lcom/oculus/vrshell/panels/InterpolatorUtils;->getLinearInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static setLinearInterpolator(Landroid/view/animation/Animation;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 52
    invoke-static {}, Lcom/oculus/vrshell/panels/InterpolatorUtils;->getLinearInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oculus/vrshell/panels/InterpolatorUtils;->getReverseLinearInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method
