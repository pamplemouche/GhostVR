.class public final Lcom/oculus/panelapp/notifications/NotificationsPanelApp;
.super Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;
.source "NotificationsPanelApp.java"


# static fields
.field private static final MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mMainView:Lcom/oculus/panelapp/notifications/NotificationsView;

.field private final mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 22
    new-instance v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object v4, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v5, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v6, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->LandscapeCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v7, Lcom/oculus/panelapp/notifications/R$style;->PanelAppTheme:I

    const-string v1, "#main"

    const/16 v2, 0x308

    const/16 v3, 0x190

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    sput-object v8, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    .line 133
    const-class v0, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->TAG:Ljava/lang/String;

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

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;-><init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 42
    invoke-static {p2}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    return-void
.end method

.method private cleanUpListeners()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    iget-object v1, p0, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->mMainView:Lcom/oculus/panelapp/notifications/NotificationsView;

    invoke-virtual {v0, v1}, Lcom/oculus/notifications/NotificationDataSetService;->unregisterDataSetListener(Lcom/oculus/notifications/NotificationDataSetListener;)V

    return-void
.end method

.method private native nativeCreateInstance(JJ)J
.end method


# virtual methods
.method public actionQuitAndHide()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->mMainView:Lcom/oculus/panelapp/notifications/NotificationsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/notifications/NotificationsView;->setVisibility(I)V

    const-string v0, "quitAndHide"

    .line 117
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->queueRawCommand(Ljava/lang/String;)V

    return-void
.end method

.method protected createNativeInstance()J
    .locals 4

    .line 69
    sget-object v0, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v0, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->width:I

    int-to-long v0, v0

    sget-object v2, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v2, v2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->height:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->nativeCreateInstance(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected createViewForLayer(Ljava/lang/String;ILandroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 84
    sget-object v0, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inflating view for viewIdentifier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x2203c5c

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "#main"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-nez p2, :cond_3

    .line 90
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->mMainView:Lcom/oculus/panelapp/notifications/NotificationsView;

    if-nez p1, :cond_2

    .line 95
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/notifications/R$layout;->notifications_panel:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/notifications/NotificationsView;

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->mMainView:Lcom/oculus/panelapp/notifications/NotificationsView;

    .line 96
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->mMainView:Lcom/oculus/panelapp/notifications/NotificationsView;

    invoke-virtual {p1, p0}, Lcom/oculus/panelapp/notifications/NotificationsView;->initialize(Lcom/oculus/panelapp/notifications/NotificationsPanelApp;)V

    .line 97
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->mMainView:Lcom/oculus/panelapp/notifications/NotificationsView;

    return-object p1

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "trying to recreate main layer!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_3
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
.end method

.method public destroy()V
    .locals 0

    .line 55
    invoke-super {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->destroy()V

    .line 56
    invoke-direct {p0}, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->cleanUpListeners()V

    return-void
.end method

.method protected getLayerSpec(Ljava/lang/String;I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;
    .locals 0

    .line 74
    sget-object p1, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    return-object p1
.end method

.method public onBackButton()Z
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->actionQuitAndHide()V

    const/4 v0, 0x1

    return v0
.end method

.method public onBackground()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->onBackground()V

    .line 63
    sget-object v0, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->TAG:Ljava/lang/String;

    const-string v1, "Notifs backgrounded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->mMainView:Lcom/oculus/panelapp/notifications/NotificationsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/notifications/NotificationsView;->setVisibility(I)V

    return-void
.end method

.method public onForeground()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->onForeground()V

    .line 49
    sget-object v0, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->TAG:Ljava/lang/String;

    const-string v1, "Notifs foregrounded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->mMainView:Lcom/oculus/panelapp/notifications/NotificationsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/notifications/NotificationsView;->setVisibility(I)V

    return-void
.end method

.method public onHomeButton()Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->actionQuitAndHide()V

    const/4 v0, 0x1

    return v0
.end method
