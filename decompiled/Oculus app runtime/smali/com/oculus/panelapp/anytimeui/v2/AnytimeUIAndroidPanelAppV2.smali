.class public Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;
.super Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;
.source "AnytimeUIAndroidPanelAppV2.java"


# static fields
.field private static final BAR_VIEW_HEIGHT:I = 0x6e

.field private static final BAR_VIEW_WIDTH:I = 0x29b

.field private static final DIALOG_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

.field private static final LEFT_HAND_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

.field private static final RIGHT_HAND_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

.field private static final SOCIAL_ICONS_BAR_VIEW_HEIGHT:I = 0x60

.field private static final SOCIAL_ICONS_BAR_VIEW_PADDING_TOP:I = 0x8

.field private static final SOCIAL_ICONS_PADDING_TOP_BOTTOM:I = 0x8

.field private static final SOCIAL_ICONS_SIZE:I = 0x48

.field private static final TABLET_LAYER:Ljava/lang/String; = "tablet"

.field private static final TABLET_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

.field private static final TABLET_VIEW_HEIGHT:I = 0x154

.field private static final TABLET_VIEW_WIDTH:I = 0x300

.field private static final TAG:Ljava/lang/String;

.field private static final TOOLTIP_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;


# instance fields
.field private mCurrentComponentName:Ljava/lang/String;

.field private mCurrentRouteName:Ljava/lang/String;

.field private final mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

.field private mPriorActiveComponent:Ljava/lang/String;

.field private mReturnComponent:Ljava/lang/String;

.field private mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

.field private mTabletView:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 32
    const-class v0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->TAG:Ljava/lang/String;

    .line 49
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

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->DIALOG_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    .line 58
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

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->RIGHT_HAND_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    .line 67
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object v5, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v6, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Flat:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v8, Lcom/oculus/panelapp/anytimeui/R$style;->PanelAppTheme:I

    const-string v2, "hand2"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->LEFT_HAND_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    .line 76
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object v13, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v14, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v15, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Flat:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v16, Lcom/oculus/panelapp/anytimeui/R$style;->PanelAppTheme:I

    const-string v10, "tablet"

    const/16 v11, 0x300

    const/16 v12, 0x154

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->TABLET_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    .line 85
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object v5, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v6, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Flat:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v8, Lcom/oculus/panelapp/anytimeui/R$style;->PanelAppTheme:I

    const-string v2, "tooltip"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->TOOLTIP_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

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

    .line 109
    invoke-direct/range {p0 .. p5}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;-><init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V

    const-string p1, ""

    .line 96
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mPriorActiveComponent:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mReturnComponent:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mCurrentComponentName:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mCurrentRouteName:Ljava/lang/String;

    .line 101
    new-instance p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    invoke-direct {p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    .line 110
    invoke-static {p2}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    return-void
.end method

.method private CompleteHandLayerSpec(ILcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;
    .locals 9

    .line 184
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetWidthForViewId(I)I

    move-result v3

    const-string v0, " exceeds max of "

    const/16 v1, 0x3e8

    if-gt v3, v1, :cond_1

    .line 190
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    invoke-virtual {v2, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetHeightForViewId(I)I

    move-result v4

    if-gt v4, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    .line 197
    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetResizeBehaviorForViewId(I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    move-result-object v5

    .line 198
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    .line 199
    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetHitTestingBehaviorForViewId(I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-result-object v6

    .line 201
    new-instance p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget-object v2, p2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->name:Ljava/lang/String;

    iget-object v7, p2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->shape:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    iget v8, p2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->themeResourceId:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    return-object p1

    .line 192
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

    .line 186
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

.method private connectTabletView()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mTabletView:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mTabletView:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->setTabletView(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;)V

    :cond_0
    return-void
.end method

.method private static isNux(Ljava/lang/String;)Z
    .locals 1

    .line 114
    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->NUX:Lcom/oculus/vrshell/SystemUXRoute;

    invoke-virtual {v0}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->NUX_WITH_VIDEOS:Lcom/oculus/vrshell/SystemUXRoute;

    .line 115
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
    .locals 8

    .line 214
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->TAG:Ljava/lang/String;

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

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "#main"

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

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
    const-string v0, "tablet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "tooltip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
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
    const/4 v7, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    .line 262
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/anytimeui/R$layout;->tooltip_view:I

    invoke-virtual {p1, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 263
    move-object p2, p1

    check-cast p2, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;

    invoke-virtual {p2, p0}, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    goto/16 :goto_2

    .line 266
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

    .line 250
    :cond_2
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mTabletView:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;

    if-nez p1, :cond_3

    .line 255
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/anytimeui/R$layout;->anytime_tablet_host_view_v2:I

    invoke-virtual {p1, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mTabletView:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;

    .line 256
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mTabletView:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;

    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    invoke-virtual {p1, p0, p2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V

    .line 257
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->connectTabletView()V

    .line 258
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mTabletView:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;

    goto :goto_2

    .line 251
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "trying to recreate tablet layer!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :cond_4
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 245
    move-object p2, p1

    check-cast p2, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    invoke-virtual {p2, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    goto :goto_2

    .line 221
    :cond_5
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    if-nez p1, :cond_7

    .line 226
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/anytimeui/R$layout;->anytime_bar_view_v2:I

    invoke-virtual {p1, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    .line 227
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    invoke-virtual {p1, p0, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V

    .line 228
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->connectTabletView()V

    .line 230
    sget-object p1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_TOOLTIPS:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 232
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->getSystemTooltipController()Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;

    move-result-object p1

    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    sget p3, Lcom/oculus/panelapp/anytimeui/R$id;->tooltip_text:I

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->tooltip_data:I

    .line 233
    invoke-virtual {p1, p2, v1, p3, v0}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->initializeTooltipsOnSubtree(Landroid/view/View;Ljava/lang/String;II)V

    .line 237
    :cond_6
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    :goto_2
    return-object p1

    .line 222
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "trying to recreate main layer!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x4f6602b8 -> :sswitch_5
        -0x43f42ffd -> :sswitch_4
        -0x3488c19a -> :sswitch_3
        0x2203c5c -> :sswitch_2
        0x5e74da2 -> :sswitch_1
        0x5e74da3 -> :sswitch_0
    .end sparse-switch
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mCurrentComponentName:Ljava/lang/String;

    return-object v0
.end method

.method protected getLayerSpec(Ljava/lang/String;I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;
    .locals 8

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

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
    const-string v0, "tablet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "tooltip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
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
    if-eqz v0, :cond_8

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    .line 175
    sget-object p1, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->TOOLTIP_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    return-object p1

    .line 178
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

    .line 171
    :cond_2
    sget-object p1, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->TABLET_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    return-object p1

    .line 167
    :cond_3
    sget-object p1, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->LEFT_HAND_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    invoke-direct {p0, p2, p1}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->CompleteHandLayerSpec(ILcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    move-result-object p1

    return-object p1

    .line 163
    :cond_4
    sget-object p1, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->RIGHT_HAND_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    invoke-direct {p0, p2, p1}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->CompleteHandLayerSpec(ILcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    move-result-object p1

    return-object p1

    .line 129
    :cond_5
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetWidthForViewId(I)I

    move-result v2

    const-string p1, " exceeds max of "

    const/16 v0, 0x3e8

    if-gt v2, v0, :cond_7

    .line 138
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    invoke-virtual {v1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetHeightForViewId(I)I

    move-result v3

    if-gt v3, v0, :cond_6

    .line 147
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    .line 148
    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetResizeBehaviorForViewId(I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    move-result-object v4

    .line 149
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    .line 150
    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetHitTestingBehaviorForViewId(I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-result-object v5

    .line 152
    new-instance p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->DIALOG_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget-object v1, p2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->name:Ljava/lang/String;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->DIALOG_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget-object v6, p2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->shape:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->DIALOG_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v7, p2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->themeResourceId:I

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    return-object p1

    .line 140
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Height for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Width for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_8
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->getMainLayerSpec()Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f6602b8 -> :sswitch_5
        -0x43f42ffd -> :sswitch_4
        -0x3488c19a -> :sswitch_3
        0x2203c5c -> :sswitch_2
        0x5e74da2 -> :sswitch_1
        0x5e74da3 -> :sswitch_0
    .end sparse-switch
.end method

.method public getLayersToAutoEnable()[Ljava/lang/String;
    .locals 2

    const-string v0, "#main"

    const-string v1, "tablet"

    .line 119
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMainLayerSpec()Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;
    .locals 9

    .line 346
    new-instance v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object v4, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v5, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v6, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Flat:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v7, Lcom/oculus/panelapp/anytimeui/R$style;->PanelAppTheme:I

    const-string v1, "#main"

    const/16 v2, 0x29b

    const/16 v3, 0x6e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    return-object v8
.end method

.method public getReturnComponent()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mReturnComponent:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mReturnComponent:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "com.oculus.vrshell"

    :goto_1
    return-object v0
.end method

.method public getRouteName()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mCurrentRouteName:Ljava/lang/String;

    return-object v0
.end method

.method public onActionButton()Z
    .locals 2

    const-string v0, "dialog"

    .line 284
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
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

    .line 295
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
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

    .line 322
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->TAG:Ljava/lang/String;

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

    .line 327
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mPriorActiveComponent:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->isNux(Ljava/lang/String;)Z

    move-result v0

    .line 328
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->isNux(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->setNUXMode(Z)V

    .line 334
    :cond_0
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mPriorActiveComponent:Ljava/lang/String;

    .line 335
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mReturnComponent:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->updateActiveComponent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateNavigationState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mCurrentComponentName:Ljava/lang/String;

    .line 342
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;->mCurrentRouteName:Ljava/lang/String;

    return-void
.end method
