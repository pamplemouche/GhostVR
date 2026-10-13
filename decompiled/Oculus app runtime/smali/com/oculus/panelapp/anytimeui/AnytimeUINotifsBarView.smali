.class public final Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;
.super Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;
.source "AnytimeUINotifsBarView.java"


# static fields
.field private static final NOTIF_FEED_IMPRESSION:Ljava/lang/String; = "oculus_hmd_notification_feed_item_impression"

.field private static final NOTIF_ITEM_CLICKED:Ljava/lang/String; = "oculus_hmd_notification_feed_item_clicked"

.field private static final NOTIF_ITEM_DISMISSED:Ljava/lang/String; = "oculus_hmd_notification_feed_item_dismissed"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ANYTIMEUI_BAR_VIEW:Ljava/lang/String;

.field private lastIntentForNotif:Landroid/app/PendingIntent;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

.field private mNotificationUpdatePending:Z

.field private mViewStateListener:Lcom/oculus/vrshell/panels/ViewState$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "AnytimeUI Notifs Bar View"

    .line 301
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->ANYTIMEUI_BAR_VIEW:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;)Lcom/oculus/vrshell/panels/ViewState$Listener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mViewStateListener:Lcom/oculus/vrshell/panels/ViewState$Listener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->logExtras(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;Landroid/app/PendingIntent;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->invokeCTA(Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;)Lcom/oculus/notifications/NotificationDataSetService;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    return-object p0
.end method

.method private enableAllNotificationsButton(Landroid/view/View;)V
    .locals 2

    .line 227
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->notifications_all_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->notifications_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 232
    new-instance v0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$5;

    invoke-direct {v0, p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$5;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private inflateCTAViewForNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 9

    .line 125
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->initializeOrCleanContainer(Landroid/content/Context;)V

    .line 126
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->notif_content_container:I

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    sget v3, Lcom/oculus/panelapp/anytimeui/R$layout;->notification_generic:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 129
    invoke-static/range {v1 .. v6}, Lcom/oculus/notifications/view/NotificationsViewUtil;->getContentViewForNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;IZZZ)Lcom/oculus/notifications/view/NotificationView;

    move-result-object p1

    .line 131
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 132
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 134
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->enableAllNotificationsButton(Landroid/view/View;)V

    .line 136
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 137
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->notificationToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 140
    iget-object v5, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const-string v1, "oculus_hmd_notification_feed_item_impression"

    .line 141
    invoke-direct {p0, v1, v7}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->logExtras(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iput-object v5, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->lastIntentForNotif:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    .line 144
    new-instance v8, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/Notification;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v1, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$2;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$2;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 170
    :cond_0
    iget-object v0, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 172
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_6

    aget-object v5, v0, v4

    const/4 v6, 0x0

    .line 175
    invoke-static {v5}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isAcceptActionItem(Landroid/app/Notification$Action;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 176
    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mContainer:Landroid/view/ViewGroup;

    sget v8, Lcom/oculus/panelapp/anytimeui/R$id;->notif_icon_accept:I

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 177
    :cond_1
    invoke-static {v5}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isDenyActionItem(Landroid/app/Notification$Action;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 178
    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mContainer:Landroid/view/ViewGroup;

    sget v8, Lcom/oculus/panelapp/anytimeui/R$id;->notif_icon_deny:I

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 179
    :cond_2
    invoke-static {v5}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isInviteActionItem(Landroid/app/Notification$Action;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 180
    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mContainer:Landroid/view/ViewGroup;

    sget v8, Lcom/oculus/panelapp/anytimeui/R$id;->notif_icon_invitecall:I

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 181
    :cond_3
    invoke-static {v5}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isAcceptPartyInviteActionItem(Landroid/app/Notification$Action;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 182
    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mContainer:Landroid/view/ViewGroup;

    sget v8, Lcom/oculus/panelapp/anytimeui/R$id;->notif_icon_invitecall:I

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 184
    iget-object v8, v5, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    iput-object v8, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->lastIntentForNotif:Landroid/app/PendingIntent;

    :cond_4
    :goto_1
    if-eqz v6, :cond_5

    .line 190
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-ne v8, v1, :cond_5

    .line 191
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    new-instance v8, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$3;

    invoke-direct {v8, p0, v5, p2, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$3;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;Landroid/app/Notification$Action;Landroid/service/notification/StatusBarNotification;Landroid/app/Notification;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 209
    :cond_6
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mContainer:Landroid/view/ViewGroup;

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->notif_icon_deny:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 211
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->shouldHideDismiss(Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 212
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    new-instance v0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$4;

    invoke-direct {v0, p0, v7, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$4;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method private initializeOrCleanContainer(Landroid/content/Context;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->removeAllViews()V

    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$layout;->notification_aui_container:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mContainer:Landroid/view/ViewGroup;

    goto :goto_1

    .line 108
    :cond_0
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->notifications_aui_main_container:I

    .line 109
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 110
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 112
    instance-of v2, v1, Lcom/oculus/vrshell/panels/views/ShellButton;

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    .line 113
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    check-cast v1, Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->clearOnClickListener()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private invokeCTA(Landroid/app/PendingIntent;)V
    .locals 2

    .line 244
    :try_start_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->TAG:Ljava/lang/String;

    const-string v1, "Launching CTA PendingIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 247
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->TAG:Ljava/lang/String;

    const-string v1, "Could not peform CTA:  "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private logExtras(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 268
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getTelemetryManager()Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->getSectionTracker()Lcom/oculus/vrshell/panels/telemetry/SectionTracker;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnytimeUI Notifs Bar View"

    invoke-interface {v0, v1, v2}, Lcom/oculus/vrshell/panels/telemetry/SectionTracker;->subSectionEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getTelemetryManager()Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->setDebugPrintingEnabled(Z)V

    .line 272
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getTelemetryManager()Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->logJsonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 274
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getTelemetryManager()Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->getSectionTracker()Lcom/oculus/vrshell/panels/telemetry/SectionTracker;

    move-result-object p1

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lcom/oculus/vrshell/panels/telemetry/SectionTracker;->subSectionExit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static notificationToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 4

    .line 252
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 253
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 255
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 257
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    sget-object v2, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->TAG:Ljava/lang/String;

    const-string v3, "Error in retrieving JSON from notification bundle"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private showCurrentCTAView()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    .line 70
    invoke-virtual {v0}, Lcom/oculus/notifications/NotificationDataSetService;->getAllPersistentNotifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->inflateCTAViewForNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->removeAllViews()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mContainer:Landroid/view/ViewGroup;

    .line 79
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$layout;->notification_none:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$layout;->notification_aui_container:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    sget v2, Lcom/oculus/panelapp/anytimeui/R$id;->notifications_aui_main_container:I

    .line 83
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 84
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 85
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    invoke-direct {p0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->enableAllNotificationsButton(Landroid/view/View;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public applyBadgeRoute(Ljava/lang/String;Z)V
    .locals 2

    .line 59
    sget-object p2, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected badge route, ignoring: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getActiveComponentRouteMatchLength(Ljava/lang/String;)I
    .locals 1

    const-string v0, "systemux://notifications"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 46
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getMainView()Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mViewStateListener:Lcom/oculus/vrshell/panels/ViewState$Listener;

    .line 47
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->showCurrentCTAView()V

    return-void
.end method

.method public launchNotifIntent()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->lastIntentForNotif:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    .line 93
    invoke-virtual {v0}, Lcom/oculus/notifications/NotificationDataSetService;->getAllPersistentNotifications()Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->lastIntentForNotif:Landroid/app/PendingIntent;

    invoke-direct {p0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->invokeCTA(Landroid/app/PendingIntent;)V

    .line 96
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/notifications/NotificationDataSetService;->removeNotification(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->lastIntentForNotif:Landroid/app/PendingIntent;

    return-void
.end method

.method public onNotificationsChanged()V
    .locals 2

    .line 282
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->TAG:Ljava/lang/String;

    const-string v1, "onNotificationsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->TAG:Ljava/lang/String;

    const-string v1, "onNotificationsChanged - skipped, detils bar not visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mNotificationUpdatePending:Z

    return-void

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->showCurrentCTAView()V

    return-void
.end method

.method public resetBadges()V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 293
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mNotificationUpdatePending:Z

    if-eqz v0, :cond_0

    .line 294
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->TAG:Ljava/lang/String;

    const-string v1, "postponed onNotificationsChanged - updating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->showCurrentCTAView()V

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mNotificationUpdatePending:Z

    .line 298
    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;->setVisibility(I)V

    return-void
.end method
