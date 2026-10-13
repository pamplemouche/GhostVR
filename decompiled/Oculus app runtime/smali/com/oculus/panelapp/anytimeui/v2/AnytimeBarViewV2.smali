.class public final Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;
.super Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;
.source "AnytimeBarViewV2.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;
.implements Lcom/oculus/vrshell/panels/ViewState$Listener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllButtonsInTaskBar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;",
            ">;"
        }
    .end annotation
.end field

.field private final mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mHasSetFixedMenuWidth:Z

.field private mMinimizedBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;

.field private mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

.field private mSelectedButton:Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;

.field private mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

.field private mStatusBarView:Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;

.field private mTabletView:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;

.field private mTaskBarContainer:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mHasSetFixedMenuWidth:Z

    .line 66
    new-instance p1, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2$1;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2$1;-><init>(Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;)Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;)Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mTabletView:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->selectNavigationButton(Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;)V

    return-void
.end method

.method private getAndInitializeButtonsFromContainer(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 314
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 315
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 316
    instance-of v3, v2, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;

    if-eqz v3, :cond_0

    .line 317
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    check-cast v2, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getTabletId(Ljava/lang/String;)I
    .locals 5

    .line 356
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "notifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "share"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "apps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 371
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tablet name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 367
    :cond_1
    sget p1, Lcom/oculus/panelapp/anytimeui/R$layout;->anytime_tablet_settings_view_v2:I

    return p1

    .line 364
    :cond_2
    sget p1, Lcom/oculus/panelapp/anytimeui/R$layout;->anytime_tablet_notifications_view_v2:I

    return p1

    .line 361
    :cond_3
    sget p1, Lcom/oculus/panelapp/anytimeui/R$layout;->anytime_tablet_sharing_view_v2:I

    return p1

    .line 358
    :cond_4
    sget p1, Lcom/oculus/panelapp/anytimeui/R$layout;->anytime_tablet_apps_view_v2:I

    return p1

    :sswitch_data_0
    .sparse-switch
        0x2dca72 -> :sswitch_3
        0x6854fdf -> :sswitch_2
        0x4bd694e8 -> :sswitch_1
        0x5582bc23 -> :sswitch_0
    .end sparse-switch
.end method

.method private navigate(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x2c

    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_0

    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 275
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resetDefaultView()V
    .locals 1

    .line 293
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->tablet_launcher:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->selectNavigationButton(Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;)V

    return-void
.end method

.method private selectNavigationButton(Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mSelectedButton:Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 259
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;->setSelected(Z)V

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mSelectedButton:Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;

    .line 263
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mSelectedButton:Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;->setSelected(Z)V

    return-void
.end method

.method private updateReturnComponent(Ljava/lang/String;)V
    .locals 7

    .line 212
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->running_apps_container:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 213
    invoke-static {p1}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 216
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 224
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    .line 225
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 229
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->tablet_button:I

    .line 230
    invoke-virtual {v4, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;

    .line 231
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 239
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 240
    sget v6, Lcom/oculus/panelapp/anytimeui/R$dimen;->taskbar_v2_dynamic_icon_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 241
    invoke-virtual {v3, v1, v1, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 242
    invoke-virtual {v4, v3}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 243
    invoke-virtual {v4, p1}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;->setTag(Ljava/lang/Object;)V

    .line 244
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, p1}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public applyActiveState(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V
    .locals 1

    .line 89
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 90
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    .line 91
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p2, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->addPanelFrameCallback(Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;)V

    .line 93
    sget p2, Lcom/oculus/panelapp/anytimeui/R$id;->taskbar_container:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mTaskBarContainer:Landroid/widget/LinearLayout;

    .line 95
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mTaskBarContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->getAndInitializeButtonsFromContainer(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mAllButtonsInTaskBar:Ljava/util/List;

    .line 97
    sget p2, Lcom/oculus/panelapp/anytimeui/R$id;->status_bar_v2:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mStatusBarView:Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;

    .line 98
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mStatusBarView:Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p2, v0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 100
    sget p2, Lcom/oculus/panelapp/anytimeui/R$id;->minimized_view:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mMinimizedBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;

    .line 101
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mMinimizedBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p2, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 103
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isStandaloneVr()Z

    .line 109
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGuardianAware()Z

    .line 115
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->resetDefaultView()V

    return-void
.end method

.method public launchNotifIntent()V
    .locals 0

    return-void
.end method

.method public onBeginFrame(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mHasSetFixedMenuWidth:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mTaskBarContainer:Landroid/widget/LinearLayout;

    .line 149
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mTaskBarContainer:Landroid/widget/LinearLayout;

    .line 150
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mHasSetFixedMenuWidth:Z

    .line 152
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->resetDefaultView()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mStatusBarView:Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->frame(Lcom/oculus/vrshell/panels/InputFrame;)V

    return-void
.end method

.method public onDataSetChanged()V
    .locals 0

    return-void
.end method

.method public onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V
    .locals 0

    return-void
.end method

.method public onEndFrame(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 0

    return-void
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 1

    .line 308
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->SELECT:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method

.method public onViewEnter(Landroid/view/View;)V
    .locals 1

    .line 298
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->HOVER:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method

.method public onViewExit(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public setLocalUserInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;)V
    .locals 0

    return-void
.end method

.method public setNUXMode(Z)V
    .locals 0

    return-void
.end method

.method public setPartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V
    .locals 0

    return-void
.end method

.method public setTabletView(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mTabletView:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;

    return-void
.end method

.method public setTaskBarState(I)V
    .locals 4

    .line 331
    iget v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mTaskBarState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 343
    :goto_0
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mTaskBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 350
    :goto_1
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mMinimizedBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;->setVisibility(I)V

    .line 352
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mTaskBarState:I

    return-void

    .line 336
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected UNKNOWN task bar state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateActiveComponent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateBrightness(I)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->setBrightness(I)V

    return-void
.end method

.method public updateCaptureAllowed(ZZ)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;->Capturing:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;->NotCapturing:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;->Allowed:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;->NotAllowed:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    :goto_1
    invoke-virtual {v0, p2, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->setVideoCaptureState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;)V

    return-void
.end method

.method public updateControllerBattery(Ljava/lang/String;F)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mStatusBarView:Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->updateControllerBattery(Ljava/lang/String;F)V

    return-void
.end method

.method public updateDialogComponent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateDoNotDisturbMode(Z)V
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oculus/vrshell/VrShellConst;->DO_NOT_DISTURB_MODE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    invoke-static {v0, v1, p1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->putBoolean(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    .line 177
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mStatusBarView:Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->updateDoNotDisturbMode(Z)V

    return-void
.end method

.method public updateGuardianStatus(ZIZ)V
    .locals 0

    return-void
.end method

.method public updateLiveStreamStatus(ZZ)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;->Capturing:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;->NotCapturing:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    :goto_0
    if-eqz p2, :cond_1

    sget-object p2, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;->Allowed:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;->NotAllowed:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    :goto_1
    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->setLiveStreamState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;)V

    return-void
.end method

.method public updateLocalStreamState(Z)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;->Capturing:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;->NotCapturing:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->setLocalCastState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V

    return-void
.end method

.method public updateVideoCaptureState(Z)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;->Capturing:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;->NotCapturing:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->setVideoCaptureState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V

    return-void
.end method
