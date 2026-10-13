.class public final Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;
.super Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;
.source "TaskBarViewV1.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;
.implements Lcom/oculus/vrshell/panels/ViewState$Listener;
.implements Lcom/oculus/notifications/NotificationDataSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveComponentMasterButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

.field private mClearedBadgeRoutes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDetailBar:Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

.field private mCurrentMasterMenuButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

.field private mDetailBarContainer:Landroid/widget/LinearLayout;

.field private mDeviceInfoBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;

.field private mHasSetFixedMenuWidth:Z

.field private mLastNotifSeen:J

.field private final mMasterDetailBinding:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;",
            "Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuBarView:Landroid/view/ViewGroup;

.field private mMinimizedBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;

.field private mNormalTypeFace:Landroid/graphics/Typeface;

.field private final mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

.field private mNotifsBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

.field private mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

.field private mSelectedTypeface:Landroid/graphics/Typeface;

.field private mSettingsButtonBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

.field private mShareButtonBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;

.field private mSocialIconsBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 617
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMasterDetailBinding:Ljava/util/Map;

    const/4 p2, 0x0

    const-string v0, "sans-serif-light"

    .line 634
    invoke-static {v0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mNormalTypeFace:Landroid/graphics/Typeface;

    const-string v0, "sans-serif-medium"

    .line 635
    invoke-static {v0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mSelectedTypeface:Landroid/graphics/Typeface;

    .line 636
    iput-boolean p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mHasSetFixedMenuWidth:Z

    const-wide/16 v0, 0x0

    .line 637
    iput-wide v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mLastNotifSeen:J

    .line 638
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mClearedBadgeRoutes:Ljava/util/HashSet;

    .line 42
    invoke-static {p1}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;)Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    return-object p0
.end method

.method private applyBadgeRoute(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 246
    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->applyBadgeRoute(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private applyBadgeRoute(Ljava/lang/String;ZZ)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mClearedBadgeRoutes:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 231
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->getButtonForRoute(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;

    move-result-object v0

    .line 234
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;->mButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 236
    invoke-virtual {v1, p3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setIsBadged(Z)V

    .line 240
    :cond_0
    iget-object p3, v0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;->mDetailBar:Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

    if-eqz p3, :cond_1

    .line 241
    iget-object p3, v0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;->mDetailBar:Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

    invoke-virtual {p3, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;->applyBadgeRoute(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private clearMenuBadge()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mCurrentMasterMenuButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 459
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setIsBadged(Z)V

    .line 460
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mCurrentMasterMenuButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getId()I

    move-result v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->notifs_button:I

    if-ne v0, v1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mClearedBadgeRoutes:Ljava/util/HashSet;

    sget-object v1, Lcom/oculus/vrshell/SystemUXRoute;->NOTIFICATIONS:Lcom/oculus/vrshell/SystemUXRoute;

    invoke-virtual {v1}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private getButtonForRoute(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;
    .locals 7

    .line 258
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMasterDetailBinding:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v2, v1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 259
    iget-object v5, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMasterDetailBinding:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

    .line 261
    invoke-virtual {v5, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;->getActiveComponentRouteMatchLength(Ljava/lang/String;)I

    move-result v6

    if-le v6, v3, :cond_0

    move-object v1, v4

    move-object v2, v5

    move v3, v6

    goto :goto_0

    .line 269
    :cond_1
    new-instance p1, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;

    invoke-direct {p1, p0, v1, v2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;-><init>(Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;)V

    return-object p1
.end method

.method private static getTimeOfPost(Landroid/service/notification/StatusBarNotification;)Ljava/lang/Long;
    .locals 5

    .line 224
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-wide/16 v1, -0x1

    const-string v3, "original_post_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v3

    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private resetActiveComponent()V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMasterDetailBinding:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 451
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMasterDetailBinding:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

    .line 452
    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;->resetActiveComponent()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetBadges()V
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMasterDetailBinding:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    const/4 v2, 0x0

    .line 540
    invoke-virtual {v1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setIsBadged(Z)V

    .line 541
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMasterDetailBinding:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

    if-eqz v1, :cond_0

    .line 543
    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;->resetBadges()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setButtonsEnabled(Landroid/view/ViewGroup;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 339
    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->setButtonsEnabled(Landroid/view/ViewGroup;ZI)V

    return-void
.end method

.method private setButtonsEnabled(Landroid/view/ViewGroup;ZI)V
    .locals 3

    const/4 v0, 0x0

    .line 344
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 345
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 346
    instance-of v2, v1, Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 347
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, p2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setCurrentMasterMenuButton(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mCurrentMasterMenuButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 354
    iget-boolean v1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mHasSetFixedMenuWidth:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 355
    invoke-virtual {p0, v0, v1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->applyActiveState(Landroid/view/View;Z)V

    .line 356
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mCurrentMasterMenuButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setSelected(Z)V

    .line 359
    :cond_0
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mCurrentMasterMenuButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 361
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mCurrentMasterMenuButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mHasSetFixedMenuWidth:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 362
    invoke-virtual {p0, p1, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->applyActiveState(Landroid/view/View;Z)V

    .line 363
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mCurrentMasterMenuButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method private shouldChangeMasterViewOnActiveComponentChange(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)Z
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mActiveComponentMasterButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-ne p1, v0, :cond_1

    .line 484
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getId()I

    move-result p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->notifs_button:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private updateBadges()V
    .locals 13

    .line 167
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->resetBadges()V

    .line 169
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    invoke-virtual {v0}, Lcom/oculus/notifications/NotificationDataSetService;->getAllNotifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 175
    :cond_0
    sget-object v1, Lcom/oculus/vrshell/SystemUXRoute;->NOTIFICATIONS:Lcom/oculus/vrshell/SystemUXRoute;

    invoke-virtual {v1}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mClearedBadgeRoutes:Ljava/util/HashSet;

    .line 177
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/StatusBarNotification;

    .line 185
    invoke-static {v6}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->getTimeOfPost(Landroid/service/notification/StatusBarNotification;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mLastNotifSeen:J

    cmp-long v12, v8, v10

    if-gtz v12, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v8, 0x1

    :goto_2
    if-nez v5, :cond_4

    if-eqz v8, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/oculus/notifications/NotificationHelper;->isPersistentNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    .line 195
    invoke-direct {p0, v1, v4}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->applyBadgeRoute(Ljava/lang/String;Z)V

    .line 198
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 199
    invoke-static {v2}, Lcom/oculus/notifications/NotificationHelper;->getBadgeRouteForNotification(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 202
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->getTimeOfPost(Landroid/service/notification/StatusBarNotification;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v8, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mLastNotifSeen:J

    cmp-long v10, v5, v8

    if-gtz v10, :cond_9

    iget-object v5, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mClearedBadgeRoutes:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v5, 0x1

    :goto_5
    if-eqz v5, :cond_7

    .line 207
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "vrshell_aui_badge_auto_dismiss"

    .line 209
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 211
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "vrshell_aui_badge_badge_parent"

    .line 213
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v5, v7

    .line 214
    invoke-direct {p0, v3, v5, v2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->applyBadgeRoute(Ljava/lang/String;ZZ)V

    goto :goto_3

    .line 220
    :cond_a
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mLastNotifSeen:J

    :cond_b
    :goto_6
    return-void
.end method


# virtual methods
.method public applyActiveState(Landroid/view/View;Z)V
    .locals 2

    .line 370
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 372
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 373
    check-cast v0, Ljava/lang/String;

    const-string v1, "detail_bar"

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mSelectedTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mNormalTypeFace:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 379
    :cond_1
    instance-of p2, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz p2, :cond_2

    .line 380
    check-cast p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->contentChanged()V

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    invoke-virtual {v0, p0}, Lcom/oculus/notifications/NotificationDataSetService;->unregisterDataSetListener(Lcom/oculus/notifications/NotificationDataSetListener;)V

    .line 145
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mSettingsButtonBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->destroy()V

    return-void
.end method

.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V
    .locals 8

    .line 49
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 50
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p2, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->addPanelFrameCallback(Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;)V

    .line 52
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    invoke-virtual {p2, p0}, Lcom/oculus/notifications/NotificationDataSetService;->registerDataSetListener(Lcom/oculus/notifications/NotificationDataSetListener;)V

    .line 54
    sget p2, Lcom/oculus/panelapp/anytimeui/R$id;->status_bar:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mDeviceInfoBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;

    .line 55
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mDeviceInfoBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p2, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 57
    sget p2, Lcom/oculus/panelapp/anytimeui/R$id;->social_icons_bar:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mSocialIconsBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;

    .line 58
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mSocialIconsBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p2, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 60
    sget p2, Lcom/oculus/panelapp/anytimeui/R$id;->minimized_view:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMinimizedBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;

    .line 61
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMinimizedBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p2, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 63
    sget p2, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_bar:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mShareButtonBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;

    .line 64
    sget p2, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_bar:I

    .line 65
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mSettingsButtonBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    .line 66
    sget p2, Lcom/oculus/panelapp/anytimeui/R$id;->notifs_detail_bar:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mNotifsBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    .line 69
    new-instance p2, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$1;

    invoke-direct {p2, p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$1;-><init>(Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;)V

    .line 78
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->menu_bar:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMenuBarView:Landroid/view/ViewGroup;

    .line 79
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->detail_bar_container:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mDetailBarContainer:Landroid/widget/LinearLayout;

    .line 81
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    iget-object v1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v1, v1, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->hasAuiNavigateTab:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->people_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    iget-object v1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v1, v1, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->hasAuiPeopleTab:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->share_button:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 88
    iget-object v4, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v4, v4, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->hasAuiShareTab:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 90
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->notifs_button:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 91
    iget-object v4, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v4, v4, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->hasAuiNotificationsTab:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :goto_4
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMenuBarView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 96
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMenuBarView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 97
    iget-object v4, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v4, v4, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->hasAuiPeopleTab:Z

    if-nez v4, :cond_4

    if-ne v1, v0, :cond_4

    goto :goto_5

    .line 103
    :cond_4
    instance-of v4, v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz v4, :cond_5

    .line 104
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 108
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 109
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 110
    invoke-virtual {p0, v4}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

    .line 111
    iget-object v5, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v4, v5}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 113
    iget-object v5, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMasterDetailBinding:Ljava/util/Map;

    check-cast v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 116
    :cond_6
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_bar:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mCurrentDetailBar:Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

    .line 119
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean p1, p1, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isAuiTabButtonBarVisible:Z

    if-nez p1, :cond_7

    .line 120
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMenuBarView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 123
    :cond_7
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean p1, p1, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isAuiTabButtonBarReconfigured:Z

    if-eqz p1, :cond_9

    .line 125
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMenuBarView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_6
    if-ltz p1, :cond_8

    .line 126
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMenuBarView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 127
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMenuBarView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 128
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMenuBarView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    .line 131
    :cond_8
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->settings_button:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    sget p2, Lcom/oculus/panelapp/anytimeui/R$string;->anytime_enterprise_experience_detail_bar:I

    .line 132
    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setText(I)V

    .line 135
    :cond_9
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->resetDefaultView()V

    .line 136
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->updateBadges()V

    return-void
.end method

.method public launchNotifIntent()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mNotifsBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->launchNotifIntent()V

    return-void
.end method

.method public onBeginFrame(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 5

    .line 285
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mHasSetFixedMenuWidth:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMenuBarView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMenuBarView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mHasSetFixedMenuWidth:Z

    const/4 v0, 0x0

    .line 287
    :goto_0
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMenuBarView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMenuBarView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 289
    instance-of v2, v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz v2, :cond_0

    .line 290
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 291
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 290
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mNormalTypeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mCurrentMasterMenuButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    const/4 v1, 0x0

    .line 301
    iput-object v1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mCurrentMasterMenuButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 302
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->setCurrentMasterMenuButton(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mDeviceInfoBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->frame(Lcom/oculus/vrshell/panels/InputFrame;)V

    .line 306
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mSocialIconsBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->frame(Lcom/oculus/vrshell/panels/InputFrame;)V

    return-void
.end method

.method public onDataSetChanged()V
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->onNotificationsChanged()V

    return-void
.end method

.method public onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V
    .locals 2

    .line 509
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getIsBadgeSticky()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 510
    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setIsBadged(Z)V

    .line 512
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mClearedBadgeRoutes:Ljava/util/HashSet;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getId()I

    move-result v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_tv:I

    if-ne v0, v1, :cond_1

    .line 518
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBadgesUtil;->setSeenTVBadge(Landroid/content/Context;)V

    .line 521
    :cond_1
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getId()I

    move-result v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_living_room:I

    if-ne v0, v1, :cond_2

    .line 522
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBadgesUtil;->setSeenLivingRoomBadge(Landroid/content/Context;)V

    .line 525
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getId()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->maybeVoicePromptForAUIButton(Landroid/content/Context;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;I)V

    :cond_3
    return-void
.end method

.method public onEndFrame(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 0

    return-void
.end method

.method public onNotificationsChanged()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mNotifsBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->onNotificationsChanged()V

    .line 161
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->updateBadges()V

    :cond_0
    return-void
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 1

    .line 569
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->SELECT:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method

.method public onViewEnter(Landroid/view/View;)V
    .locals 1

    .line 552
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 553
    invoke-virtual {p0, p1, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->applyActiveState(Landroid/view/View;Z)V

    .line 555
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->HOVER:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method

.method public onViewExit(Landroid/view/View;)V
    .locals 1

    .line 562
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0, p1, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->applyActiveState(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resetDefaultView()V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v0, v0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->hasAuiNavigateTab:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_button:I

    .line 532
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    goto :goto_0

    :cond_0
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->settings_button:I

    .line 533
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 534
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->selectMasterMenuButton(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    return-void
.end method

.method public selectMasterMenuButton(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 488
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mCurrentDetailBar:Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    .line 494
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;->setVisibility(I)V

    .line 497
    :cond_1
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->setCurrentMasterMenuButton(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    .line 498
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->clearMenuBadge()V

    if-eqz p1, :cond_2

    .line 501
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMasterDetailBinding:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mCurrentDetailBar:Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

    .line 502
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mCurrentDetailBar:Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 503
    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setLocalUserInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mSocialIconsBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->setLocalUserInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;)V

    return-void
.end method

.method public setNUXMode(Z)V
    .locals 5

    .line 313
    sget-object v0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NUX Mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGuardianAware()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    sget-object p1, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->TAG:Ljava/lang/String;

    const-string v0, "Skipping NUX Mode for Quest"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 321
    :cond_0
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_detail_home:I

    .line 322
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->navigation_button:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz p1, :cond_1

    .line 326
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->selectMasterMenuButton(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    .line 328
    :cond_1
    sget v2, Lcom/oculus/panelapp/anytimeui/R$id;->menu_bar:I

    invoke-virtual {p0, v2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    xor-int/lit8 v3, p1, 0x1

    invoke-direct {p0, v2, v3}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->setButtonsEnabled(Landroid/view/ViewGroup;Z)V

    .line 329
    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 330
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 332
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 333
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->setButtonsEnabled(Landroid/view/ViewGroup;ZI)V

    :cond_2
    return-void
.end method

.method public setPartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mSocialIconsBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->updatePartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V

    return-void
.end method

.method public setTaskBarState(I)V
    .locals 4

    .line 586
    iget v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mTaskBarState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 598
    :goto_0
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mDeviceInfoBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;

    invoke-virtual {v3, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->setVisibility(I)V

    .line 599
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mDetailBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 600
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mSocialIconsBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;

    invoke-virtual {v3, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->setVisibility(I)V

    .line 601
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v3, v3, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v3, v3, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isAuiTabButtonBarVisible:Z

    if-eqz v3, :cond_2

    .line 602
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMenuBarView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMenuBarView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    .line 612
    :goto_2
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mMinimizedBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;->setVisibility(I)V

    .line 614
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mTaskBarState:I

    return-void

    .line 591
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected UNKNOWN task bar state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateActiveComponent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 418
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->resetActiveComponent()V

    .line 421
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mCurrentMasterMenuButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 422
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mCurrentDetailBar:Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

    .line 425
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->getButtonForRoute(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;

    move-result-object v1

    .line 426
    iget-object v2, v1, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;->mButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz v2, :cond_0

    .line 427
    iget-object p2, v1, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;->mButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 429
    :cond_0
    iget-object v2, v1, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;->mDetailBar:Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

    if-eqz v2, :cond_1

    .line 430
    iget-object v0, v1, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;->mDetailBar:Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

    .line 434
    :cond_1
    invoke-direct {p0, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->shouldChangeMasterViewOnActiveComponentChange(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 435
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mActiveComponentMasterButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 436
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->selectMasterMenuButton(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 441
    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;->applyActiveComponentRoute(Ljava/lang/String;)V

    .line 445
    :cond_3
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mShareButtonBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;

    invoke-virtual {p2, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->updateActiveComponent(Ljava/lang/String;)V

    return-void
.end method

.method public updateBrightness(I)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mSettingsButtonBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->updateBrightness(I)V

    return-void
.end method

.method public updateCaptureAllowed(ZZ)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mShareButtonBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->updateCaptureAllowed(ZZ)V

    return-void
.end method

.method public updateControllerBattery(Ljava/lang/String;F)V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mDeviceInfoBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->updateControllerBattery(Ljava/lang/String;F)V

    return-void
.end method

.method public updateDialogComponent(Ljava/lang/String;)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mSocialIconsBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->updateDialogComponent(Ljava/lang/String;)V

    return-void
.end method

.method public updateDoNotDisturbMode(Z)V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mNotificationDataSetService:Lcom/oculus/notifications/NotificationDataSetService;

    invoke-virtual {v0, p1}, Lcom/oculus/notifications/NotificationDataSetService;->enableDNDMode(Z)V

    .line 390
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oculus/vrshell/VrShellConst;->DO_NOT_DISTURB_MODE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    invoke-static {v0, v1, p1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->putBoolean(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    .line 391
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mDeviceInfoBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->updateDoNotDisturbMode(Z)V

    return-void
.end method

.method public updateGuardianStatus(ZIZ)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mDeviceInfoBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->updateGuardianStatus(ZIZ)V

    return-void
.end method

.method public updateLiveStreamStatus(ZZ)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mShareButtonBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->updateLiveStreamStatus(ZZ)V

    return-void
.end method

.method public updateLocalStreamState(Z)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mShareButtonBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->updateLocalStreamState(Z)V

    return-void
.end method

.method public updateVideoCaptureState(Z)V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->mShareButtonBarView:Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->updateVideoCaptureState(Z)V

    return-void
.end method
