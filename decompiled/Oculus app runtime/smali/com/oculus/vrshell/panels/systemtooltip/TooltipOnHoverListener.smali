.class public final Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;
.super Ljava/lang/Object;
.source "TooltipOnHoverListener.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mTooltipController:Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;

.field private final mTooltipDefinition:Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;->mTooltipController:Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;

    .line 19
    iput-object p2, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;->mTooltipDefinition:Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;

    return-void
.end method

.method private showTooltip(Landroid/view/View;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;->mTooltipController:Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;

    if-nez v0, :cond_0

    .line 37
    sget-object p1, Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;->TAG:Ljava/lang/String;

    const-string v0, "Unable to show tooltip: null tooltip controller provided."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;->mTooltipDefinition:Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;

    .line 43
    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->getTooltipPosition()Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;->getTooltipUVCoordinates(Landroid/view/View;Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;)Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;

    move-result-object p1

    if-nez p1, :cond_1

    .line 47
    sget-object p1, Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;->TAG:Ljava/lang/String;

    const-string v0, "Unable to show tooltip: UV coordinates could not be calculated."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;->mTooltipController:Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;

    iget-object v1, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;->mTooltipDefinition:Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;

    invoke-virtual {v0, v1, p1}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->showTooltip(Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;)V

    return-void
.end method


# virtual methods
.method public hideTooltip()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;->mTooltipController:Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;

    iget-object v1, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;->mTooltipDefinition:Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->hideTooltip(Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;)V

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    .line 26
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;->showTooltip(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    if-ne p2, p1, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;->hideTooltip()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
