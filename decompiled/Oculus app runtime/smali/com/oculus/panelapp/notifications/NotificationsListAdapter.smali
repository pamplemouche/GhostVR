.class public Lcom/oculus/panelapp/notifications/NotificationsListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NotificationsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;,
        Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_ANDROID_BIGTEXT:Ljava/lang/String; = "android.bigText"

.field private static final EXTRA_ANDROID_TEXT:Ljava/lang/String; = "android.text"

.field private static final EXTRA_ANDROID_TEXTLINES:Ljava/lang/String; = "android.textLines"

.field private static final EXTRA_ANDROID_TITLE:Ljava/lang/String; = "android.title"

.field private static final EXTRA_DOWNLOAD_IN_PROGRESS:Ljava/lang/String; = "download_in_progress"

.field private static final EXTRA_PROGRESS_BAR_RATIO:Ljava/lang/String; = "progress_bar_ratio"

.field private static final NOTIFICATIONS_PANEL:Ljava/lang/String; = "Notifications Panel"

.field private static final NOTIF_FEED_IMPRESSION:Ljava/lang/String; = "oculus_hmd_notification_feed_item_impression"

.field private static final NOTIF_ITEM_CLICKED:Ljava/lang/String; = "oculus_hmd_notification_feed_item_clicked"

.field private static final NOTIF_ITEM_DISMISSED:Ljava/lang/String; = "oculus_hmd_notification_feed_item_dismissed"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationActionListener;

.field private mNotifsView:Lcom/oculus/panelapp/notifications/NotificationsView;

.field private mViewStateListener:Lcom/oculus/vrshell/panels/ViewState$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Landroid/service/notification/StatusBarNotification;Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationActionListener;Lcom/oculus/vrshell/panels/ViewState$Listener;)V
    .locals 1

    .line 311
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 441
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mItems:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 312
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mItems:Ljava/util/List;

    .line 315
    :cond_0
    iput-object p2, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mListener:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationActionListener;

    .line 316
    iput-object p3, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mViewStateListener:Lcom/oculus/vrshell/panels/ViewState$Listener;

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/notifications/NotificationsListAdapter;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->onNotificationClicked(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/notifications/NotificationsListAdapter;)Lcom/oculus/panelapp/notifications/NotificationsView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mNotifsView:Lcom/oculus/panelapp/notifications/NotificationsView;

    return-object p0
.end method

.method static synthetic access$500(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->notificationToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/oculus/panelapp/notifications/NotificationsListAdapter;Lcom/oculus/panelapp/notifications/NotificationsPanelApp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->logExtras(Lcom/oculus/panelapp/notifications/NotificationsPanelApp;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getNotificationsParentView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 400
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 401
    instance-of v0, p0, Lcom/oculus/panelapp/notifications/NotificationsView;

    if-eqz v0, :cond_1

    return-object p0

    .line 404
    :cond_1
    invoke-static {p0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->getNotificationsParentView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private logExtras(Lcom/oculus/panelapp/notifications/NotificationsPanelApp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 425
    invoke-virtual {p1}, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->getTelemetryManager()Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->getSectionTracker()Lcom/oculus/vrshell/panels/telemetry/SectionTracker;

    move-result-object v0

    .line 427
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notifications Panel"

    invoke-interface {v0, v1, v2}, Lcom/oculus/vrshell/panels/telemetry/SectionTracker;->subSectionEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p1}, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->getTelemetryManager()Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->setDebugPrintingEnabled(Z)V

    .line 429
    invoke-virtual {p1}, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->getTelemetryManager()Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->logJsonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p1}, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->getTelemetryManager()Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    move-result-object p1

    .line 432
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->getSectionTracker()Lcom/oculus/vrshell/panels/telemetry/SectionTracker;

    move-result-object p1

    .line 433
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lcom/oculus/vrshell/panels/telemetry/SectionTracker;->subSectionExit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static notificationToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 4

    .line 409
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 410
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 412
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 414
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    sget-object v2, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Error in retrieving JSON from notification bundle"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private onNotificationClicked(I)V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    .line 386
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mListener:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationActionListener;

    if-eqz v0, :cond_0

    .line 387
    invoke-interface {v0, p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationActionListener;->onNotificationClicked(Landroid/service/notification/StatusBarNotification;)V

    .line 388
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mNotifsView:Lcom/oculus/panelapp/notifications/NotificationsView;

    iget-object v0, v0, Lcom/oculus/panelapp/notifications/NotificationsView;->mPanelApp:Lcom/oculus/panelapp/notifications/NotificationsPanelApp;

    .line 391
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->notificationToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "oculus_hmd_notification_feed_item_clicked"

    .line 388
    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->logExtras(Lcom/oculus/panelapp/notifications/NotificationsPanelApp;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 32
    check-cast p1, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->onBindViewHolder(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;I)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->bindModel(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;
    .locals 2

    .line 323
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/oculus/panelapp/notifications/R$layout;->notification_view_item:I

    const/4 v1, 0x0

    .line 324
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 325
    new-instance v0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    .line 326
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mViewStateListener:Lcom/oculus/vrshell/panels/ViewState$Listener;

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;-><init>(Lcom/oculus/panelapp/notifications/NotificationsListAdapter;Landroid/widget/LinearLayout;Landroid/content/Context;Lcom/oculus/vrshell/panels/ViewState$Listener;)V

    return-object v0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->onViewAttachedToWindow(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;)V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mNotifsView:Lcom/oculus/panelapp/notifications/NotificationsView;

    if-nez v0, :cond_1

    .line 346
    invoke-static {p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->access$700(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->getNotificationsParentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    check-cast v0, Lcom/oculus/panelapp/notifications/NotificationsView;

    .line 353
    iget-object v1, v0, Lcom/oculus/panelapp/notifications/NotificationsView;->mPanelApp:Lcom/oculus/panelapp/notifications/NotificationsPanelApp;

    .line 356
    iput-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mNotifsView:Lcom/oculus/panelapp/notifications/NotificationsView;

    .line 360
    :cond_1
    invoke-static {p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->access$700(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 361
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 362
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 363
    iget-object v1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mNotifsView:Lcom/oculus/panelapp/notifications/NotificationsView;

    iget-object v1, v1, Lcom/oculus/panelapp/notifications/NotificationsView;->mPanelApp:Lcom/oculus/panelapp/notifications/NotificationsPanelApp;

    .line 364
    invoke-static {v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->notificationToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "oculus_hmd_notification_feed_item_impression"

    .line 363
    invoke-direct {p0, v1, v2, v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->logExtras(Lcom/oculus/panelapp/notifications/NotificationsPanelApp;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setItems([Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 376
    sget-object v0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Setting Items"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 377
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mItems:Ljava/util/List;

    goto :goto_0

    .line 380
    :cond_0
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->mItems:Ljava/util/List;

    :goto_0
    return-void
.end method
