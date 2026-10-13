.class public Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;
.super Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;
.source "AnytimeUIAndroidPanelApp.java"


# static fields
.field private static final ANYTIME_TAB_VIEW_HEIGHT:I = 0x1e

.field private static final ANYTIME_VIEW_HEIGHT:I = 0x91

.field private static final DIALOG_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

.field private static final LEFT_HAND_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

.field private static final RIGHT_HAND_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

.field private static final SOCIAL_ICONS_BAR_VIEW_HEIGHT:I = 0x60

.field private static final SOCIAL_ICONS_BAR_VIEW_PADDING_TOP:I = 0x8

.field private static final SOCIAL_ICONS_PADDING_TOP_BOTTOM:I = 0x8

.field private static final SOCIAL_ICONS_SIZE:I = 0x48

.field private static final TAG:Ljava/lang/String;

.field private static final TOOLTIP_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;


# instance fields
.field private mCurrentComponentName:Ljava/lang/String;

.field private mCurrentRouteName:Ljava/lang/String;

.field private final mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

.field private mPriorActiveComponent:Ljava/lang/String;

.field private mReturnComponent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 23
    const-class v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object v5, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v6, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->LandscapeCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v8, Lcom/oculus/panelapp/anytimeui/R$style;->PanelAppTheme:I

    const-string v2, "dialog"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->DIALOG_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    .line 44
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object v13, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v14, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v15, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Flat:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v16, Lcom/oculus/panelapp/anytimeui/R$style;->PanelAppTheme:I

    const-string v10, "hand1"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->RIGHT_HAND_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    .line 53
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object v5, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v6, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Flat:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v8, Lcom/oculus/panelapp/anytimeui/R$style;->PanelAppTheme:I

    const-string v2, "hand2"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->LEFT_HAND_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    .line 62
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object v13, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v14, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v15, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Flat:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v16, Lcom/oculus/panelapp/anytimeui/R$style;->PanelAppTheme:I

    const-string v10, "tooltip"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->TOOLTIP_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Landroid/content/Context;",
            "Landroid/view/Surface;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;-><init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V

    const-string p1, ""

    .line 302
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mPriorActiveComponent:Ljava/lang/String;

    .line 303
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mReturnComponent:Ljava/lang/String;

    .line 304
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mCurrentComponentName:Ljava/lang/String;

    .line 305
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mCurrentRouteName:Ljava/lang/String;

    .line 79
    invoke-static {p2}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    return-void
.end method

.method private CompleteHandLayerSpec(ILcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;
    .locals 9

    .line 146
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetWidthForViewId(I)I

    move-result v3

    const-string v0, " exceeds max of "

    const/16 v1, 0x3e8

    if-gt v3, v1, :cond_1

    .line 152
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    invoke-virtual {v2, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetHeightForViewId(I)I

    move-result v4

    if-gt v4, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    .line 159
    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetResizeBehaviorForViewId(I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    move-result-object v5

    .line 160
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    .line 161
    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetHitTestingBehaviorForViewId(I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-result-object v6

    .line 163
    new-instance p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget-object v2, p2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->name:Ljava/lang/String;

    iget-object v7, p2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->shape:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    iget v8, p2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->themeResourceId:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    return-object p1

    .line 154
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Height for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 148
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Width for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static isNux(Ljava/lang/String;)Z
    .locals 1

    .line 83
    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->NUX:Lcom/oculus/vrshell/SystemUXRoute;

    invoke-virtual {v0}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->NUX_WITH_VIDEOS:Lcom/oculus/vrshell/SystemUXRoute;

    .line 84
    invoke-virtual {v0}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected createViewForLayer(Ljava/lang/String;ILandroid/content/Context;)Landroid/view/View;
    .locals 7

    .line 176
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inflating view for layer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", viewIdentifier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "#main"

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "hand2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "hand1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "tooltip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v6, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    .line 210
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/anytimeui/R$layout;->tooltip_view:I

    invoke-virtual {p1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 211
    move-object p2, p1

    check-cast p2, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;

    invoke-virtual {p2, p0}, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    goto :goto_2

    .line 214
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown layerName: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 205
    :cond_2
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 206
    move-object p2, p1

    check-cast p2, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    invoke-virtual {p2, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    goto :goto_2

    .line 183
    :cond_3
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    if-nez p1, :cond_5

    .line 188
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/anytimeui/R$layout;->taskbar_view_v1:I

    invoke-virtual {p1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    .line 189
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    invoke-virtual {p1, p0, v6}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V

    .line 191
    sget-object p1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_TOOLTIPS:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 193
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->getSystemTooltipController()Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;

    move-result-object p1

    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    sget p3, Lcom/oculus/panelapp/anytimeui/R$id;->tooltip_text:I

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->tooltip_data:I

    .line 194
    invoke-virtual {p1, p2, v1, p3, v0}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->initializeTooltipsOnSubtree(Landroid/view/View;Ljava/lang/String;II)V

    .line 198
    :cond_4
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    :goto_2
    return-object p1

    .line 184
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "trying to recreate main layer!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x4f6602b8 -> :sswitch_4
        -0x43f42ffd -> :sswitch_3
        0x2203c5c -> :sswitch_2
        0x5e74da2 -> :sswitch_1
        0x5e74da3 -> :sswitch_0
    .end sparse-switch
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mCurrentComponentName:Ljava/lang/String;

    return-object v0
.end method

.method protected getLayerSpec(Ljava/lang/String;I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;
    .locals 11

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "hand2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "hand1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "#main"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "tooltip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    .line 137
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->TOOLTIP_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    return-object p1

    .line 140
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown layerName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 133
    :cond_2
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->LEFT_HAND_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    invoke-direct {p0, p2, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->CompleteHandLayerSpec(ILcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    move-result-object p1

    return-object p1

    .line 129
    :cond_3
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->RIGHT_HAND_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    invoke-direct {p0, p2, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->CompleteHandLayerSpec(ILcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    move-result-object p1

    return-object p1

    .line 94
    :cond_4
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetWidthForViewId(I)I

    move-result p1

    const-string v0, " exceeds max of "

    const/16 v1, 0x3e8

    if-gt p1, v1, :cond_9

    .line 103
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    invoke-virtual {v2, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetHeightForViewId(I)I

    move-result v2

    if-gt v2, v1, :cond_8

    .line 112
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    .line 113
    invoke-virtual {v0, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetResizeBehaviorForViewId(I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    move-result-object v7

    .line 114
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    .line 115
    invoke-virtual {v0, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetHitTestingBehaviorForViewId(I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-result-object v8

    .line 116
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    invoke-virtual {v0, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetShapeForViewId(I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    move-result-object p2

    .line 118
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->DIALOG_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget-object v4, v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->name:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mIsScreenLayerDialog:Z

    if-eqz v1, :cond_5

    iget p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mScreenLayerDialogWidth:I

    :cond_5
    move v5, p1

    iget-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mIsScreenLayerDialog:Z

    if-eqz p1, :cond_6

    iget v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mScreenLayerDialogHeight:I

    :cond_6
    move v6, v2

    iget-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mIsScreenLayerDialog:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Screen:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    move-object v9, p1

    goto :goto_2

    :cond_7
    move-object v9, p2

    :goto_2
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->DIALOG_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v10, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->themeResourceId:I

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    return-object v0

    .line 105
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Height for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Width for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_a
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->getMainLayerSpec()Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x4f6602b8 -> :sswitch_4
        -0x43f42ffd -> :sswitch_3
        0x2203c5c -> :sswitch_2
        0x5e74da2 -> :sswitch_1
        0x5e74da3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getMainLayerSpec()Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;
    .locals 9

    .line 285
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->isSocialIconsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf1

    goto :goto_0

    :cond_0
    const/16 v0, 0x91

    .line 288
    :goto_0
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v1, v1, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isAuiTabButtonBarVisible:Z

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, -0x1e

    :cond_1
    move v4, v0

    .line 291
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    const/16 v3, 0x302

    sget-object v5, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v6, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Flat:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v8, Lcom/oculus/panelapp/anytimeui/R$style;->PanelAppTheme:I

    const-string v2, "#main"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    return-object v0
.end method

.method public getReturnComponent()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mReturnComponent:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mReturnComponent:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "com.oculus.vrshell"

    :goto_1
    return-object v0
.end method

.method public getRouteName()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mCurrentRouteName:Ljava/lang/String;

    return-object v0
.end method

.method public onActionButton()Z
    .locals 2

    const-string v0, "dialog"

    .line 222
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->onActionButton()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBackButton()Z
    .locals 2

    const-string v0, "dialog"

    .line 233
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->onBackButton()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateActiveComponent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 252
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateActiveComponent - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", returnComponent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mPriorActiveComponent:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->isNux(Ljava/lang/String;)Z

    move-result v0

    .line 258
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->isNux(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->setNUXMode(Z)V

    .line 264
    :cond_0
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mPriorActiveComponent:Ljava/lang/String;

    .line 265
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mReturnComponent:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->updateActiveComponent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateNavigationState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mCurrentComponentName:Ljava/lang/String;

    .line 280
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;->mCurrentRouteName:Ljava/lang/String;

    return-void
.end method
