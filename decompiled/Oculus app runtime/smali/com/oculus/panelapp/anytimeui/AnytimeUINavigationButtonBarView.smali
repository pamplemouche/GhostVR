.class public final Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;
.super Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;
.source "AnytimeUINavigationButtonBarView.java"


# static fields
.field private static final DEFAULT_BROWSER_KEY:Ljava/lang/String; = "default_browser"

.field private static final SAMSUNG_BROWSER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.svrbrowser"

.field private static final SAMSUNG_STORE_APP_ID:Ljava/lang/String; = "849609821813454"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 5

    .line 30
    invoke-super {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 32
    sget-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_LIVING_ROOM_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBadgesUtil;->maybeShowLivingRoomBadge(Landroid/content/Context;)V

    goto :goto_0

    .line 37
    :cond_0
    sget-object v2, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->TAG:Ljava/lang/String;

    const-string v3, "LivingRoom Button is disabled by GK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget v2, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_living_room:I

    invoke-virtual {p0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    :goto_0
    sget-object v2, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_TV_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {p1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBadgesUtil;->maybeShowTVBadge(Landroid/content/Context;)V

    goto :goto_2

    .line 47
    :cond_2
    sget-object v3, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->TAG:Ljava/lang/String;

    const-string v4, "TV Button is disabled by GK"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget v3, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_tv:I

    invoke-virtual {p0, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-nez v2, :cond_3

    if-nez v0, :cond_3

    .line 51
    sget-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_GALLERY_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 53
    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 55
    :cond_3
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->TAG:Ljava/lang/String;

    const-string v2, "Gallery Button disabled by GK or TV button presence"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_gallery:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :cond_4
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isStandaloneVr()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 61
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_internet:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->anytime_detail_button_browser:I

    .line 62
    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setText(I)V

    :cond_5
    return-void
.end method

.method protected onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V
    .locals 6

    .line 68
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getId()I

    move-result v0

    .line 70
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_internet:I

    if-ne v0, v1, :cond_4

    .line 71
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/vrshell/util/HorizonUtil;->getProfilePrefsMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "default_browser"

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v1

    sget-object v2, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->GEARVR:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    const-string v3, ""

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/oculus/vrshell/util/HorizonUtil;->DEFAULT_BROWSER_OCULUS:Ljava/lang/String;

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    sget-object v1, Lcom/oculus/vrshell/util/HorizonUtil;->DEFAULT_BROWSER_SAMSUNG:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const-string v1, "com.sec.android.app.svrbrowser"

    const-string v2, "849609821813454"

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionStoreAppLaunch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const-string v1, "systemux://dialog/browser-choice"

    invoke-virtual {v0, v1, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.oculus.browser"

    invoke-static {v0, v1}, Lcom/oculus/vrshell/util/HorizonUtil;->getApplication(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 77
    iget-wide v1, v0, Lcom/oculus/library/model/App;->versionCode:J

    iget-wide v4, v0, Lcom/oculus/library/model/App;->latestVersionCode:J

    cmp-long v0, v1, v4

    if-gez v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v1, Lcom/oculus/vrshell/SystemUXRoute;->DEFAULT_BROWSER:Lcom/oculus/vrshell/SystemUXRoute;

    invoke-virtual {v0, v1, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Lcom/oculus/vrshell/SystemUXRoute;Ljava/lang/String;)V

    goto :goto_1

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v1, Lcom/oculus/vrshell/SystemUXRoute;->DEFAULT_BROWSER:Lcom/oculus/vrshell/SystemUXRoute;

    invoke-virtual {v0, v1, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Lcom/oculus/vrshell/SystemUXRoute;Ljava/lang/String;)V

    .line 92
    :goto_1
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->updateSelectedButton(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    .line 93
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getMainView()Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    goto :goto_2

    .line 94
    :cond_4
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_search:I

    if-ne v0, v1, :cond_5

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/?componentName="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 98
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getComponentName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&navigationRoute="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 100
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getRouteName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINavigationButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v1, Lcom/oculus/vrshell/SystemUXRoute;->SEARCH:Lcom/oculus/vrshell/SystemUXRoute;

    invoke-virtual {v0, v1, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Lcom/oculus/vrshell/SystemUXRoute;Ljava/lang/String;)V

    goto :goto_2

    .line 104
    :cond_5
    invoke-super {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    :goto_2
    return-void
.end method
