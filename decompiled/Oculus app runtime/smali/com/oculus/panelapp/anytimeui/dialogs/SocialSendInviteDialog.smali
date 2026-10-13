.class public final Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "SocialSendInviteDialog.java"

# interfaces
.implements Lcom/oculus/panelapp/anytimeui/PartyUpdateListener;


# static fields
.field private static final FB_UPSELL_ACTION_PARAM:Ljava/lang/String; = "send_party_invite"

.field private static final FB_UPSELL_CONTAINER_PARAM:Ljava/lang/String; = "system_ux_dialog"

.field private static final FB_UPSELL_MUST_INTERACT_PARAM:Ljava/lang/String; = "true"

.field private static final FB_UPSELL_PRODUCT_PARAM:Ljava/lang/String; = "party"

.field private static final FB_UPSELL_SOURCE_PARAM:Ljava/lang/String; = "aui_party_dialog"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityId:Ljava/lang/String;

.field private mCurrentPartyID:Ljava/lang/String;

.field private mDeeplink:Ljava/lang/String;

.field private mFBLinked:Z

.field private final mFriendListAdapter:Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

.field private final mFriends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oculus/panelapp/anytimeui/FriendListRowData;",
            ">;"
        }
    .end annotation
.end field

.field private mInviteButton:Landroid/widget/Button;

.field private mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

.field private mPackageName:Ljava/lang/String;

.field private mPartyCreationInProgress:Z

.field private mPendingInviteRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:Ljava/lang/String;

.field private mUpsellLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 663
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mFriends:Ljava/util/ArrayList;

    const-string p1, "unknown"

    .line 669
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mSource:Ljava/lang/String;

    const/4 p1, 0x0

    .line 670
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mFBLinked:Z

    .line 674
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mPartyCreationInProgress:Z

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mPendingInviteRequests:Ljava/util/ArrayList;

    .line 62
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->TAG:Ljava/lang/String;

    const-string p2, "SocialSendInviteDialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance p1, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mFriends:Ljava/util/ArrayList;

    invoke-direct {p1, p2, v0}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mFriendListAdapter:Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mPendingInviteRequests:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Landroid/widget/Button;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mInviteButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mFBLinked:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mFBLinked:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->initializeSendInviteContent()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->initializeFBUpsellContent()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mDeeplink:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mDeeplink:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->updateActivityViewsForData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/panelapp/anytimeui/FriendListAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mFriendListAdapter:Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mFriends:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mActivityId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mCurrentPartyID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->sendPartyInvites()V

    return-void
.end method

.method static synthetic access$2002(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mPartyCreationInProgress:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->inviteUsersToCurrentParty()V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->closeDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->handleQueryResult(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mUpsellLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->logFBUpsellEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mSource:Ljava/lang/String;

    return-object p0
.end method

.method private closeDialog()V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mUpsellLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->closeUpsellDialog()V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->closeInviteDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method private closeInviteDialog()V
    .locals 8

    .line 320
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mCurrentPartyID:Ljava/lang/String;

    invoke-static {v1}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "source"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "invite_dialog_close"

    if-eqz v1, :cond_0

    .line 322
    new-array v1, v3, [Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mSource:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v6, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 324
    new-array v1, v1, [Ljava/lang/String;

    const-string v7, "partyID"

    aput-object v7, v1, v5

    iget-object v5, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mCurrentPartyID:Ljava/lang/String;

    aput-object v5, v1, v4

    aput-object v2, v1, v3

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mSource:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v6, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    const-string v1, "close"

    .line 327
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method

.method private closeUpsellDialog()V
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "oculus_fb_link_upsell_cancel"

    .line 315
    invoke-direct {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->logFBUpsellEvent(Ljava/lang/String;)V

    const-string v1, "close"

    .line 316
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method

.method private createPartyAndSendRemainingInvites()V
    .locals 5

    .line 518
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mPartyCreationInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 521
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mPartyCreationInProgress:Z

    .line 524
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mInviteButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 526
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v1

    const/4 v3, 0x2

    .line 527
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "source"

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mSource:Ljava/lang/String;

    aput-object v2, v3, v0

    const-string v0, "invite_dialog_invite_party_create"

    invoke-virtual {v1, v0, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mActivityId:Ljava/lang/String;

    new-instance v3, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;

    invoke-direct {v3, p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 529
    invoke-static {v0, v2, v3}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->createParty(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;)V

    return-void
.end method

.method private drawActivityImage(Ljava/lang/String;)V
    .locals 3

    .line 609
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->party_invite_dialog_activity_image:I

    .line 610
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 612
    invoke-static {}, Lcom/oculus/vrshell/panels/ImageLoader;->getInstance()Lcom/oculus/vrshell/panels/ImageLoader;

    move-result-object v1

    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$12;

    invoke-direct {v2, p0, v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$12;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 613
    invoke-virtual {v1, p1, v2}, Lcom/oculus/vrshell/panels/ImageLoader;->loadImage(Ljava/lang/String;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;)V

    return-void
.end method

.method private handleQueryResult(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/panelapp/anytimeui/FriendListRowData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 369
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->setPartyID(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/UiThreadExecutor;

    move-result-object p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$9;

    invoke-direct {v0, p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$9;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Ljava/util/ArrayList;)V

    .line 372
    invoke-virtual {p2, v0}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initializeBasedOnFBLinkedStatus()V
    .locals 2

    .line 237
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$6;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$6;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V

    .line 236
    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->fetchLinkedAccountsInfoForViewer(Landroid/content/Context;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchLinkedAccountsInfoForViewerCallback;)V

    return-void
.end method

.method private initializeFBUpsellContent()V
    .locals 2

    .line 143
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->setupLegalFooterText()V

    .line 146
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$4;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$4;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V

    .line 145
    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->fetchInvitableFriends(Landroid/content/Context;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;)V

    .line 188
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mUpsellLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$5;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$5;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setOnCloseListener(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    const-string v0, "oculus_fb_link_upsell_impression"

    .line 224
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->logFBUpsellEvent(Ljava/lang/String;)V

    return-void
.end method

.method private initializeSendInviteContent()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->loading_spinner:I

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setVisibility(I)V

    .line 86
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_friends_list:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 87
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mFriendListAdapter:Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    new-instance v3, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$1;

    invoke-direct {v3, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V

    invoke-virtual {v2, v3}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->setInviteClickListener(Lcom/oculus/panelapp/anytimeui/InviteClickListener;)V

    .line 100
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mFriendListAdapter:Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    .line 103
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    new-instance v3, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$2;

    invoke-direct {v3, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V

    invoke-virtual {v2, v3}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setOnCloseListener(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    .line 116
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "invite_dialog_fetch_friends"

    invoke-virtual {v0, v3, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$3;

    invoke-direct {v3, p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$3;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 118
    invoke-static {v2, v3}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->fetchInvitableFriends(Landroid/content/Context;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;)V

    .line 138
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$id;->system_dialog_standard_layout_button_accept:I

    invoke-virtual {v0, v2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mInviteButton:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mInviteButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private inviteUsersToCurrentParty()V
    .locals 13

    .line 406
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mPendingInviteRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mCurrentPartyID:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->TAG:Ljava/lang/String;

    const-string v1, "Attempted to invite users without current party."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mInviteButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 419
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$id;->loading_spinner:I

    invoke-virtual {v0, v2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$id;->sending_out_invites_message:I

    invoke-virtual {v0, v2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mFriends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 422
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mFriendListAdapter:Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->notifyDataSetChanged()V

    .line 425
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    .line 427
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mActivityId:Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, "source"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "partyID"

    const/4 v8, 0x4

    const-string v9, "invite_dialog_invite"

    if-eqz v2, :cond_2

    iget-object v10, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mPackageName:Ljava/lang/String;

    if-eqz v10, :cond_2

    const/16 v11, 0x8

    .line 428
    new-array v11, v11, [Ljava/lang/String;

    const-string v12, "activity_id"

    aput-object v12, v11, v1

    aput-object v2, v11, v6

    const-string v1, "activity_package_name"

    aput-object v1, v11, v5

    aput-object v10, v11, v3

    aput-object v7, v11, v8

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mCurrentPartyID:Ljava/lang/String;

    aput-object v2, v11, v1

    const/4 v1, 0x6

    aput-object v4, v11, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mSource:Ljava/lang/String;

    aput-object v2, v11, v1

    invoke-virtual {v0, v9, v11}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_2
    new-array v2, v8, [Ljava/lang/String;

    aput-object v7, v2, v1

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mCurrentPartyID:Ljava/lang/String;

    aput-object v1, v2, v6

    aput-object v4, v2, v5

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mSource:Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-virtual {v0, v9, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 443
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mPendingInviteRequests:Ljava/util/ArrayList;

    .line 445
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getPartyID()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;

    invoke-direct {v4, p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 442
    invoke-static {v1, v2, v3, v4}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->inviteUsersToParty(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$MultipleIDCallback;)V

    return-void
.end method

.method private logFBUpsellEvent(Ljava/lang/String;)V
    .locals 4

    .line 646
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "action"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "send_party_invite"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "container"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "system_ux_dialog"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "entrypoint"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mSource:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    const-string v3, "product"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "parties"

    aput-object v3, v1, v2

    .line 647
    invoke-virtual {v0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->rawLogEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private sendPartyInvites()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mPendingInviteRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getPartyID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->inviteUsersToCurrentParty()V

    goto :goto_0

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->createPartyAndSendRemainingInvites()V

    :goto_0
    return-void
.end method

.method private setupLegalFooterText()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mUpsellLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_footer_text:I

    .line 229
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 231
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oculus/panelapp/anytimeui/SocialBundleUtils;->setupLinks(Landroid/widget/TextView;Landroid/content/res/Resources;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)Landroid/text/SpannableString;

    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private showActivityInformation(Z)V
    .locals 4

    .line 581
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->party_invite_dialog_activity_image:I

    .line 582
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 583
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    sget v3, Lcom/oculus/panelapp/anytimeui/R$id;->party_invite_dialog_activity_title:I

    .line 585
    invoke-virtual {v0, v3}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 586
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    sget v3, Lcom/oculus/panelapp/anytimeui/R$id;->party_invite_dialog_activity_subtitle:I

    .line 588
    invoke-virtual {v0, v3}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    .line 589
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    sget v3, Lcom/oculus/panelapp/anytimeui/R$id;->party_invite_dialog_subtitle:I

    .line 591
    invoke-virtual {v0, v3}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    const/16 v1, 0x8

    .line 592
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateActivityViewsForData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->party_invite_dialog_activity_title:I

    .line 598
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 599
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->party_invite_dialog_activity_subtitle:I

    .line 602
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 603
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    invoke-direct {p0, p3}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->drawActivityImage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 3

    .line 258
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "source"

    .line 259
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v0}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mSource:Ljava/lang/String;

    :cond_0
    const-string v0, "activity_id"

    .line 264
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 265
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mActivityId:Ljava/lang/String;

    .line 267
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mActivityId:Ljava/lang/String;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 272
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->showActivityInformation(Z)V

    .line 275
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mActivityId:Ljava/lang/String;

    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$7;

    invoke-direct {v2, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$7;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V

    .line 274
    invoke-static {v0, v1, p1, v2}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->fetchActivityCallback(Landroid/content/Context;Ljava/lang/String;ZLcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchSocialActivityCallback;)V

    return-void
.end method

.method getPartyID()Ljava/lang/String;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mCurrentPartyID:Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .line 70
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_invite_dialog_layout:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    .line 71
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_dialog_layout:I

    .line 72
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mUpsellLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    .line 76
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_PARTY_FB_UPSELL:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->initializeBasedOnFBLinkedStatus()V

    goto :goto_0

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->initializeSendInviteContent()V

    :goto_0
    return-void
.end method

.method public onBackButton()Z
    .locals 1

    .line 301
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->closeDialog()V

    const/4 v0, 0x1

    return v0
.end method

.method setPartyID(Ljava/lang/String;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->mCurrentPartyID:Ljava/lang/String;

    return-void
.end method

.method public setPartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V
    .locals 2

    .line 332
    invoke-static {}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/UiThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$8;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$8;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V

    .line 333
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
