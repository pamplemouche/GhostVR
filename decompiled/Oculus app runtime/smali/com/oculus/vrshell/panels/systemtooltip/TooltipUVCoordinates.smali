.class public final Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;
.super Ljava/lang/Object;
.source "TooltipUVCoordinates.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final U:F

.field public final V:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;->U:F

    .line 18
    iput p2, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;->V:F

    return-void
.end method

.method public static getTooltipUVCoordinates(IIIIIILcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;)Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;
    .locals 2

    int-to-float p0, p0

    int-to-float p1, p1

    .line 47
    sget-object v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates$1;->$SwitchMap$com$oculus$vrshell$panels$systemtooltip$TooltipPosition:[I

    invoke-virtual {p6}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->ordinal()I

    move-result p6

    aget p6, v0, p6

    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p6, v0, :cond_3

    const/4 v0, 0x2

    if-eq p6, v0, :cond_2

    const/4 v0, 0x3

    if-eq p6, v0, :cond_1

    const/4 v0, 0x4

    if-eq p6, v0, :cond_0

    goto :goto_1

    :cond_0
    int-to-float p2, p2

    add-float/2addr p0, p2

    :cond_1
    int-to-float p2, p3

    div-float/2addr p2, v1

    goto :goto_0

    :cond_2
    int-to-float p2, p2

    div-float/2addr p2, v1

    add-float/2addr p0, p2

    int-to-float p2, p3

    :goto_0
    add-float/2addr p1, p2

    goto :goto_1

    :cond_3
    int-to-float p2, p2

    div-float/2addr p2, v1

    add-float/2addr p0, p2

    :goto_1
    int-to-float p2, p4

    div-float/2addr p0, p2

    const/high16 p2, 0x3f800000    # 1.0f

    int-to-float p3, p5

    div-float/2addr p1, p3

    sub-float/2addr p2, p1

    .line 71
    new-instance p1, Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;

    invoke-direct {p1, p0, p2}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;-><init>(FF)V

    return-object p1
.end method

.method public static getTooltipUVCoordinates(Landroid/view/View;Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;)Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;
    .locals 8

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    if-eqz v5, :cond_1

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 94
    new-array v0, v0, [I

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 97
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    move-object v7, p1

    .line 97
    invoke-static/range {v1 .. v7}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;->getTooltipUVCoordinates(IIIIIILcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;)Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;

    move-result-object p0

    return-object p0

    .line 87
    :cond_1
    :goto_0
    sget-object p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;->TAG:Ljava/lang/String;

    const-string p1, "Unable to compute tooltip target UV coordinates: root view has not been initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
