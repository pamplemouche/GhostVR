.class public Lcom/oculus/panelapp/notifications/NotificationsView;
.super Landroid/widget/LinearLayout;
.source "NotificationsView.java"

# interfaces
.implements Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationActionListener;
.implements Lcom/oculus/vrshell/panels/ViewState$Listener;
.implements Lcom/oculus/notifications/NotificationDataSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mNormalTypeFace:Landroid/graphics/Typeface;

.field private final mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

.field public mPanelApp:Lcom/oculus/panelapp/notifications/NotificationsPanelApp;

.field private mSelectedTypeface:Landroid/graphics/Typeface;

.field private mTabHost:Lcom/oculus/vrshell/panels/views/ShellTabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 277
    const-class v0, Lcom/oculus/panelapp/notifications/NotificationsView;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/notifications/NotificationsView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    const-string v0, "sans-serif-light"

    .line 281
    invoke-static {v0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsView;->mNormalTypeFace:Landroid/graphics/Typeface;

    const-string v0, "sans-serif-medium"

    .line 282
    invoke-static {v0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/panelapp/notifications/NotificationsView;->mSelectedTypeface:Landroid/graphics/Typeface;

    .line 37
    invoke-static {p1}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsView;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    .line 38
    sget-object p1, Lcom/oculus/panelapp/notifications/NotificationsView;->TAG:Ljava/lang/String;

    const-string p2, "NotificationsView created"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private findNotificationList(Ljava/util/List;Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;",
            ">;",
            "Lcom/oculus/vrshell/notifications/NotificationsType;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;

    .line 200
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;->getType()Lcom/oculus/vrshell/notifications/NotificationsType;

    move-result-object v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;->getNotifications()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 202
    :cond_1
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method private populateTabContent(Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;)V
    .locals 4

    .line 66
    invoke-virtual {p1}, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->getListId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/notifications/NotificationsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 67
    invoke-virtual {p1}, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->getEmptyId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/notifications/NotificationsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 68
    sget v2, Lcom/oculus/panelapp/notifications/R$string;->notification_none_title:I

    .line 69
    sget-object v3, Lcom/oculus/panelapp/notifications/NotificationsView$1;->$SwitchMap$com$oculus$panelapp$notifications$NotificationsView$NotificationsTab:[I

    invoke-virtual {p1}, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 93
    sget p1, Lcom/oculus/panelapp/notifications/R$string;->notification_none_downloads_title:I

    .line 94
    iget-object v2, p0, Lcom/oculus/panelapp/notifications/NotificationsView;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    sget-object v3, Lcom/oculus/vrshell/notifications/NotificationsType;->DOWNLOADS:Lcom/oculus/vrshell/notifications/NotificationsType;

    .line 95
    invoke-virtual {v2, v3}, Lcom/oculus/notifications/NotificationDataSetService;->getFilteredNotifications(Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;

    move-result-object v2

    .line 94
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/oculus/panelapp/notifications/NotificationsView;->setupNotificationsListView(Ljava/util/List;Landroid/support/v7/widget/RecyclerView;Landroid/view/ViewGroup;I)V

    goto :goto_0

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected view id!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsView;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    sget-object v3, Lcom/oculus/vrshell/notifications/NotificationsType;->SYSTEM:Lcom/oculus/vrshell/notifications/NotificationsType;

    .line 87
    invoke-virtual {p1, v3}, Lcom/oculus/notifications/NotificationDataSetService;->getFilteredNotifications(Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;

    move-result-object p1

    .line 86
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oculus/panelapp/notifications/NotificationsView;->setupNotificationsListView(Ljava/util/List;Landroid/support/v7/widget/RecyclerView;Landroid/view/ViewGroup;I)V

    goto :goto_0

    .line 79
    :cond_2
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsView;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    sget-object v3, Lcom/oculus/vrshell/notifications/NotificationsType;->SOCIAL:Lcom/oculus/vrshell/notifications/NotificationsType;

    .line 80
    invoke-virtual {p1, v3}, Lcom/oculus/notifications/NotificationDataSetService;->getFilteredNotifications(Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;

    move-result-object p1

    .line 79
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oculus/panelapp/notifications/NotificationsView;->setupNotificationsListView(Ljava/util/List;Landroid/support/v7/widget/RecyclerView;Landroid/view/ViewGroup;I)V

    goto :goto_0

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsView;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    sget-object v3, Lcom/oculus/vrshell/notifications/NotificationsType;->DOWNLOAD_IN_PROGRESS:Lcom/oculus/vrshell/notifications/NotificationsType;

    .line 72
    invoke-virtual {p1, v3}, Lcom/oculus/notifications/NotificationDataSetService;->getAllPersistentNotificationsExcept(Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oculus/panelapp/notifications/NotificationsView;->setupNotificationsListView(Ljava/util/List;Landroid/support/v7/widget/RecyclerView;Landroid/view/ViewGroup;I)V

    :goto_0
    return-void
.end method

.method private setupNotificationsListView(Ljava/util/List;Landroid/support/v7/widget/RecyclerView;Landroid/view/ViewGroup;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Landroid/view/ViewGroup;",
            "I)V"
        }
    .end annotation

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    .line 112
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/notification/StatusBarNotification;

    .line 113
    new-instance v1, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;

    invoke-direct {v1, v0, p0, p0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;-><init>([Landroid/service/notification/StatusBarNotification;Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationActionListener;Lcom/oculus/vrshell/panels/ViewState$Listener;)V

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 114
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/oculus/panelapp/notifications/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 115
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 119
    invoke-virtual {p0}, Lcom/oculus/panelapp/notifications/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/notifications/R$layout;->notification_none:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 120
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    sget v1, Lcom/oculus/panelapp/notifications/R$id;->no_notification_title:I

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/16 v0, 0x8

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 127
    :goto_2
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/16 p4, 0x8

    .line 128
    :goto_3
    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private setupTabButtonsContent()V
    .locals 7

    .line 56
    invoke-static {}, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->values()[Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 58
    invoke-direct {p0, v3}, Lcom/oculus/panelapp/notifications/NotificationsView;->populateTabContent(Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;)V

    .line 60
    invoke-virtual {p0}, Lcom/oculus/panelapp/notifications/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->getLabelId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 61
    iget-object v5, p0, Lcom/oculus/panelapp/notifications/NotificationsView;->mTabHost:Lcom/oculus/vrshell/panels/views/ShellTabHost;

    invoke-virtual {v3}, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->getContentId()I

    move-result v3

    invoke-virtual {v5, v6, v4, v3}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->addTab(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateNotificationTabs(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;",
            ">;)V"
        }
    .end annotation

    .line 177
    invoke-static {}, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->values()[Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 178
    invoke-virtual {v4}, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->getListId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/oculus/panelapp/notifications/NotificationsView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    .line 179
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v6

    check-cast v6, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;

    .line 181
    invoke-virtual {v4}, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->getEmptyId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/oculus/panelapp/notifications/NotificationsView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 184
    invoke-static {v4}, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->access$000(Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;)Lcom/oculus/vrshell/notifications/NotificationsType;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/oculus/panelapp/notifications/NotificationsView;->findNotificationList(Ljava/util/List;Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;

    move-result-object v4

    .line 186
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Landroid/service/notification/StatusBarNotification;

    .line 187
    invoke-interface {v4, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/service/notification/StatusBarNotification;

    .line 188
    invoke-virtual {v6, v8}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->setItems([Landroid/service/notification/StatusBarNotification;)V

    .line 189
    invoke-virtual {v6}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->notifyDataSetChanged()V

    if-eqz v4, :cond_1

    .line 191
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    const/16 v6, 0x8

    if-eqz v4, :cond_2

    const/16 v8, 0x8

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    .line 192
    :goto_3
    invoke-virtual {v5, v8}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    if-eqz v4, :cond_3

    const/4 v6, 0x0

    .line 193
    :cond_3
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public applyHoverAnimation(Landroid/view/View;Z)V
    .locals 2

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/notifications/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/notifications/R$anim;->notifications_view_hover:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 161
    invoke-static {v0, p2}, Lcom/oculus/vrshell/panels/InterpolatorUtils;->setInterpolator(Landroid/view/animation/Animation;Z)V

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initialize(Lcom/oculus/panelapp/notifications/NotificationsPanelApp;)V
    .locals 2

    .line 43
    sget-object v0, Lcom/oculus/panelapp/notifications/NotificationsView;->TAG:Ljava/lang/String;

    const-string v1, "Initializing NotificationsView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsView;->mPanelApp:Lcom/oculus/panelapp/notifications/NotificationsPanelApp;

    .line 47
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsView;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    invoke-virtual {p1, p0}, Lcom/oculus/notifications/NotificationDataSetService;->registerDataSetListener(Lcom/oculus/notifications/NotificationDataSetListener;)V

    .line 49
    sget p1, Lcom/oculus/panelapp/notifications/R$id;->notifications_tab_host:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/notifications/NotificationsView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellTabHost;

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsView;->mTabHost:Lcom/oculus/vrshell/panels/views/ShellTabHost;

    .line 50
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsView;->mTabHost:Lcom/oculus/vrshell/panels/views/ShellTabHost;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->setup()V

    .line 52
    invoke-direct {p0}, Lcom/oculus/panelapp/notifications/NotificationsView;->setupTabButtonsContent()V

    return-void
.end method

.method public onDataSetChanged()V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsView;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/oculus/vrshell/notifications/NotificationsType;

    sget-object v2, Lcom/oculus/vrshell/notifications/NotificationsType;->ALL:Lcom/oculus/vrshell/notifications/NotificationsType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/oculus/vrshell/notifications/NotificationsType;->SOCIAL:Lcom/oculus/vrshell/notifications/NotificationsType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/oculus/vrshell/notifications/NotificationsType;->SYSTEM:Lcom/oculus/vrshell/notifications/NotificationsType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/oculus/vrshell/notifications/NotificationsType;->DOWNLOADS:Lcom/oculus/vrshell/notifications/NotificationsType;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 168
    invoke-virtual {v0, v1}, Lcom/oculus/notifications/NotificationDataSetService;->getNotificationsByType([Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;

    move-result-object v0

    .line 173
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/notifications/NotificationsView;->updateNotificationTabs(Ljava/util/List;)V

    return-void
.end method

.method public onNotificationClicked(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsView;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oculus/notifications/NotificationDataSetService;->removeNotification(Ljava/lang/String;)V

    return-void
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 1

    .line 149
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsView;->mPanelApp:Lcom/oculus/panelapp/notifications/NotificationsPanelApp;

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->SELECT:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method

.method public onViewEnter(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, p1, v0}, Lcom/oculus/panelapp/notifications/NotificationsView;->applyHoverAnimation(Landroid/view/View;Z)V

    .line 139
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsView;->mPanelApp:Lcom/oculus/panelapp/notifications/NotificationsPanelApp;

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->HOVER:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/notifications/NotificationsPanelApp;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method

.method public onViewExit(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, v0}, Lcom/oculus/panelapp/notifications/NotificationsView;->applyHoverAnimation(Landroid/view/View;Z)V

    return-void
.end method
