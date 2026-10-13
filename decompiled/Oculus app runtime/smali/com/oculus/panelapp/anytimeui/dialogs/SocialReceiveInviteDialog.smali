.class public Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "SocialReceiveInviteDialog.java"


# static fields
.field public static final DIALOG_ICON_IMAGE_DIAMETER:I = 0x48

.field public static final DIALOG_ICON_IMAGE_PADDING:I = 0x4

.field private static final FB_UPSELL_ACTION_PARAM:Ljava/lang/String; = "accept_party_invite"

.field private static final FB_UPSELL_CONTAINER_PARAM:Ljava/lang/String; = "system_ux_dialog"

.field private static final FB_UPSELL_MUST_INTERACT_PARAM:Ljava/lang/String; = "true"

.field private static final FB_UPSELL_PRODUCT_PARAM:Ljava/lang/String; = "party"

.field private static final FB_UPSELL_SOURCE_PARAM:Ljava/lang/String; = "aui_party_dialog"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityAppId:Ljava/lang/String;

.field private mActivityDeeplink:Ljava/lang/String;

.field private mActivityPackageName:Ljava/lang/String;

.field private mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

.field private mFBLinked:Z

.field private mInvitedPartyID:Ljava/lang/String;

.field private final mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

.field private mSource:Ljava/lang/String;

.field private mUpsellLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "unknown"

    .line 580
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mSource:Ljava/lang/String;

    const/4 p2, 0x0

    .line 581
    iput-boolean p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mFBLinked:Z

    .line 53
    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->TAG:Ljava/lang/String;

    const-string v0, "SocialReceiveInviteDialog dialog constructed"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance p2, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    invoke-direct {p2, p1}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mFBLinked:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mFBLinked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->configureDefaultContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->joinParty(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mActivityDeeplink:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mActivityDeeplink:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mActivityPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mActivityPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mActivityAppId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mActivityAppId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Lcom/oculus/panelapp/anytimeui/PartyInfo;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->updateDialogWithPartyInfo(Lcom/oculus/panelapp/anytimeui/PartyInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mInvitedPartyID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->showPartyJoinError()V

    return-void
.end method

.method static synthetic access$1700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->configureFBUpsellContent()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mUpsellLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->logFBUpsellEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mSource:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->closeDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->shouldLaunchActivityAsPrimaryCTA()Z

    move-result p0

    return p0
.end method

.method private closeDialog()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mUpsellLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->closeUpsellDialog()V

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 340
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->dismissInvite()V

    :cond_1
    :goto_0
    return-void
.end method

.method private closeUpsellDialog()V
    .locals 2

    .line 345
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "oculus_fb_link_upsell_cancel"

    .line 346
    invoke-direct {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->logFBUpsellEvent(Ljava/lang/String;)V

    const-string v1, "close"

    .line 347
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method

.method private configureBasedOnFBUpsellStatus(Ljava/lang/String;)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Ljava/lang/String;)V

    .line 76
    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->fetchLinkedAccountsInfoForViewer(Landroid/content/Context;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchLinkedAccountsInfoForViewerCallback;)V

    return-void
.end method

.method private configureDefaultContent(Ljava/lang/String;)V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$4;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$4;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)V

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setOnCloseListener(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    .line 213
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "source"

    .line 214
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mSource:Ljava/lang/String;

    :cond_0
    const-string v0, "party_id"

    .line 219
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mInvitedPartyID:Ljava/lang/String;

    const-string v0, "sender_name"

    .line 222
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "null"

    if-nez v1, :cond_1

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "sender_alias"

    .line 224
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    :cond_2
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->setDialogSubtitle(Ljava/lang/String;)V

    const-string v0, "sender_photo"

    .line 229
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {p1}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 231
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->setDialogIcon(Ljava/lang/String;)V

    .line 233
    :cond_3
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mInvitedPartyID:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->fetchPartyData(Ljava/lang/String;)V

    return-void
.end method

.method private configureFBUpsellContent()V
    .locals 2

    const-string v0, "oculus_fb_link_upsell_impression"

    .line 151
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->logFBUpsellEvent(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->setupLegalFooterText()V

    .line 154
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->updateSubtitleBasedOnFriendCount()V

    .line 156
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mUpsellLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$3;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$3;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)V

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setOnCloseListener(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    return-void
.end method

.method private dismissInvite()V
    .locals 8

    .line 351
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mInvitedPartyID:Ljava/lang/String;

    invoke-static {v1}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "source"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "join_dialog_dismiss"

    if-eqz v1, :cond_0

    .line 353
    new-array v1, v3, [Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mSource:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v6, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 355
    new-array v1, v1, [Ljava/lang/String;

    const-string v7, "party_id"

    aput-object v7, v1, v5

    iget-object v5, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mInvitedPartyID:Ljava/lang/String;

    aput-object v5, v1, v4

    aput-object v2, v1, v3

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mSource:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v6, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    const-string v1, "deny"

    .line 359
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method

.method private fetchPartyData(Ljava/lang/String;)V
    .locals 2

    .line 238
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$5;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$5;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Ljava/lang/String;)V

    .line 237
    invoke-static {v0, p1, v1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->fetchPartyInfoWithActivity(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchPartyInfoWithActivityCallback;)V

    return-void
.end method

.method private joinParty(Z)V
    .locals 11

    .line 363
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mInvitedPartyID:Ljava/lang/String;

    invoke-static {v1}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->showPartyJoinError()V

    const-string p1, "close"

    .line 367
    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void

    .line 371
    :cond_0
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to join party: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mInvitedPartyID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mActivityAppId:Ljava/lang/String;

    invoke-static {v1}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    const-string v3, "source"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "party_id"

    const/4 v7, 0x0

    const/4 v8, 0x4

    const-string v9, "join_dialog_join"

    if-nez v1, :cond_1

    const/4 v1, 0x6

    .line 373
    new-array v1, v1, [Ljava/lang/String;

    const-string v10, "activity_id"

    aput-object v10, v1, v7

    iget-object v7, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mActivityAppId:Ljava/lang/String;

    aput-object v7, v1, v5

    aput-object v6, v1, v4

    iget-object v4, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mInvitedPartyID:Ljava/lang/String;

    aput-object v4, v1, v2

    aput-object v3, v1, v8

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mSource:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v9, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_1
    new-array v1, v8, [Ljava/lang/String;

    aput-object v6, v1, v7

    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mInvitedPartyID:Ljava/lang/String;

    aput-object v6, v1, v5

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mSource:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v9, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 387
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mInvitedPartyID:Ljava/lang/String;

    new-instance v3, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;

    invoke-direct {v3, p0, v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Z)V

    .line 386
    invoke-static {v1, v2, v3}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->joinParty(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;)V

    return-void
.end method

.method private logFBUpsellEvent(Ljava/lang/String;)V
    .locals 4

    .line 561
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "action"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "accept_party_invite"

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

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mSource:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    const-string v3, "product"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "parties"

    aput-object v3, v1, v2

    .line 562
    invoke-virtual {v0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->rawLogEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private setDialogIcon(Ljava/lang/String;)V
    .locals 2

    .line 485
    invoke-static {p1}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 488
    :cond_0
    invoke-static {}, Lcom/oculus/vrshell/panels/ImageLoader;->getInstance()Lcom/oculus/vrshell/panels/ImageLoader;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0, p1, v1}, Lcom/oculus/vrshell/panels/ImageLoader;->loadImage(Ljava/lang/String;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;)V

    return-void
.end method

.method private setDialogSubtitle(Ljava/lang/String;)V
    .locals 4

    .line 468
    invoke-static {p1}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$string;->social_receive_invite_dialog_description_with_sender_name:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 474
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 476
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_receive_invite_dialog_subtitle:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setInvitedCountText(I)V
    .locals 5

    if-gtz p1, :cond_0

    return-void

    .line 436
    :cond_0
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_receive_invite_dialog_invited_users_count:I

    .line 437
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 439
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->social_receive_invite_dialog_invited_users_text:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 440
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 438
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setPartyMemberCountText(I)V
    .locals 5

    if-gtz p1, :cond_0

    return-void

    .line 453
    :cond_0
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_receive_invite_dialog_party_members_count:I

    .line 454
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 456
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->social_receive_invite_dialog_party_members_count_text:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 458
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 457
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 455
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setupLegalFooterText()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mUpsellLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_footer_text:I

    .line 99
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oculus/panelapp/anytimeui/SocialBundleUtils;->setupLinks(Landroid/widget/TextView;Landroid/content/res/Resources;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)Landroid/text/SpannableString;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private shouldLaunchActivityAsPrimaryCTA()Z
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mActivityPackageName:Ljava/lang/String;

    const-string v1, "com.oculus.tv"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    sget-object v2, Lcom/oculus/common/gatekeepers/Gatekeeper;->SOCIAL_OCTV:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mActivityDeeplink:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mActivityPackageName:Ljava/lang/String;

    .line 557
    invoke-static {v0}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private showPartyJoinError()V
    .locals 11

    .line 522
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mActivityAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "source"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "party_id"

    const/4 v6, 0x0

    const/4 v7, 0x4

    const-string v8, "join_dialog_join_fail"

    if-nez v0, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "activity_id"

    aput-object v10, v9, v6

    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mActivityAppId:Ljava/lang/String;

    aput-object v6, v9, v4

    aput-object v5, v9, v3

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mInvitedPartyID:Ljava/lang/String;

    aput-object v3, v9, v1

    aput-object v2, v9, v7

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mSource:Ljava/lang/String;

    aput-object v2, v9, v1

    .line 524
    invoke-virtual {v0, v8, v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    new-array v7, v7, [Ljava/lang/String;

    aput-object v5, v7, v6

    iget-object v5, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mInvitedPartyID:Ljava/lang/String;

    aput-object v5, v7, v4

    aput-object v2, v7, v3

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mSource:Ljava/lang/String;

    aput-object v2, v7, v1

    .line 534
    invoke-virtual {v0, v8, v7}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 542
    :goto_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to join party: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mInvitedPartyID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 546
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->social_receive_invite_dialog_party_join_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIWarningToastUtil;->showWarningToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private updateDialogWithPartyInfo(Lcom/oculus/panelapp/anytimeui/PartyInfo;)V
    .locals 5

    .line 260
    iget v0, p1, Lcom/oculus/panelapp/anytimeui/PartyInfo;->currentMembersCount:I

    iget v1, p1, Lcom/oculus/panelapp/anytimeui/PartyInfo;->blockedCurrentMembersCount:I

    add-int/2addr v0, v1

    .line 262
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->setPartyMemberCountText(I)V

    .line 265
    iget v0, p1, Lcom/oculus/panelapp/anytimeui/PartyInfo;->invitedUsersCount:I

    iget v1, p1, Lcom/oculus/panelapp/anytimeui/PartyInfo;->blockedInvitedUsersCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 267
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->setInvitedCountText(I)V

    .line 270
    iget v0, p1, Lcom/oculus/panelapp/anytimeui/PartyInfo;->blockedCurrentMembersCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 271
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_receive_invite_dialog_party_blocked_users_warning:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->shouldLaunchActivityAsPrimaryCTA()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 281
    :cond_1
    iget-object v0, p1, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_receive_invite_dialog_activity_title:I

    .line 283
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 284
    iget-object v2, p1, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    :cond_2
    iget-object v0, p1, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivitySubtitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 289
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_receive_invite_dialog_activity_subtitle:I

    .line 290
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 291
    iget-object v2, p1, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivitySubtitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    :cond_3
    iget-object v0, p1, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityImageUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 296
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_receive_invite_dialog_activity_image:I

    .line 297
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 298
    invoke-static {}, Lcom/oculus/vrshell/panels/ImageLoader;->getInstance()Lcom/oculus/vrshell/panels/ImageLoader;

    move-result-object v2

    iget-object v3, p1, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityImageUri:Ljava/lang/String;

    new-instance v4, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;

    invoke-direct {v4, p0, v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Landroid/widget/ImageView;Lcom/oculus/panelapp/anytimeui/PartyInfo;)V

    .line 299
    invoke-virtual {v2, v3, v4}, Lcom/oculus/vrshell/panels/ImageLoader;->loadImage(Ljava/lang/String;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;)V

    .line 325
    :cond_4
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->shouldLaunchActivityAsPrimaryCTA()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 326
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->system_dialog_standard_layout_button_middle:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private updateSubtitleBasedOnFriendCount()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$2;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)V

    .line 106
    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->fetchInvitableFriends(Landroid/content/Context;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;)V

    return-void
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_PARTY_FB_UPSELL:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->configureBasedOnFBUpsellStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->configureDefaultContent(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public initialize()V
    .locals 1

    .line 59
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_receive_invite_dialog_layout:I

    .line 60
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    .line 62
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_dialog_layout:I

    .line 63
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->mUpsellLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    return-void
.end method

.method public onBackButton()Z
    .locals 1

    .line 332
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->closeDialog()V

    const/4 v0, 0x1

    return v0
.end method
