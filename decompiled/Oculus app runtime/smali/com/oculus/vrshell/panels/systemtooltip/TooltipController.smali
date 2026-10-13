.class public final Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;
.super Ljava/lang/Object;
.source "TooltipController.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOOLTIP_DATA_FIELD_DELIMITER:Ljava/lang/String; = ","

.field private static final TOOLTIP_DATA_FIELD_KEY_VALUE_DELIMITER:Ljava/lang/String; = "="

.field private static final TOOLTIP_DATA_ID_KEY:Ljava/lang/String; = "tooltip_id"

.field private static final TOOLTIP_DATA_POSITION_KEY:Ljava/lang/String; = "tooltip_position"


# instance fields
.field private final mAndroidPanelApp:Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;

.field private mCurrentTooltipDefinition:Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;

.field private final mTooltipIdToTooltipDefinition:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->mTooltipIdToTooltipDefinition:Ljava/util/Map;

    .line 70
    iput-object p1, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->mAndroidPanelApp:Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;

    return-void
.end method

.method private getTooltipDefinition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;
    .locals 6

    const-string v0, ","

    .line 230
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 232
    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 233
    aget-object v2, p3, v0

    const-string v3, "="

    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 235
    aget-object p3, p3, v4

    .line 236
    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 238
    array-length v3, v2

    if-ne v3, v1, :cond_0

    aget-object v3, v2, v0

    const-string v5, "tooltip_id"

    .line 239
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    array-length v3, p3

    if-ne v3, v1, :cond_0

    aget-object v0, p3, v0

    const-string v1, "tooltip_position"

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;

    aget-object p3, p3, v4

    .line 245
    invoke-static {p3}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->getTooltipPosition(Ljava/lang/String;)Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    move-result-object p3

    aget-object v1, v2, v4

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public hideTooltip(Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->mCurrentTooltipDefinition:Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->getTooltipId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->getTooltipId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->mAndroidPanelApp:Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->actionHideSystemTooltip()V

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->mCurrentTooltipDefinition:Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;

    :cond_0
    return-void
.end method

.method public initializeTooltipOnView(Landroid/view/View;Ljava/lang/String;II)V
    .locals 1

    if-nez p1, :cond_0

    .line 114
    sget-object p1, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->TAG:Ljava/lang/String;

    const-string p2, "Unable to initialize tooltip on view: null View provided."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    .line 128
    invoke-virtual {p1, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p4

    .line 130
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p4, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 131
    check-cast p3, Ljava/lang/String;

    check-cast p4, Ljava/lang/String;

    .line 132
    invoke-direct {p0, p2, p3, p4}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->getTooltipDefinition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;

    move-result-object p2

    if-nez p2, :cond_1

    .line 135
    sget-object p1, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->TAG:Ljava/lang/String;

    const-string p2, "Unable to initialize tooltip on view: tooltip definition could not be determined"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_1
    new-instance p3, Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;

    invoke-direct {p3, p0, p2}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipOnHoverListener;-><init>(Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 146
    iget-object p1, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->mTooltipIdToTooltipDefinition:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->getTooltipId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public initializeTooltipsOnSubtree(Landroid/view/View;Ljava/lang/String;II)V
    .locals 2

    .line 88
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->initializeTooltipOnView(Landroid/view/View;Ljava/lang/String;II)V

    .line 92
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 94
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 95
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->initializeTooltipsOnSubtree(Landroid/view/View;Ljava/lang/String;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTooltipText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->mTooltipIdToTooltipDefinition:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;

    if-nez v0, :cond_0

    .line 157
    sget-object p2, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Unable to set the tooltip text: the given tooltip id \"%s\" has no corresponding tooltip definition."

    .line 159
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 165
    :cond_0
    invoke-virtual {v0, p2}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->setTooltipText(Ljava/lang/String;)V

    return-void
.end method

.method public showTooltip(Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->mAndroidPanelApp:Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->actionShowSystemTooltip(Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;)V

    .line 179
    iput-object p1, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->mCurrentTooltipDefinition:Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;

    return-void
.end method
