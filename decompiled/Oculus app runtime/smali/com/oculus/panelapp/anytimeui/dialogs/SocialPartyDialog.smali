.class public Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "SocialPartyDialog.java"

# interfaces
.implements Lcom/oculus/panelapp/anytimeui/PartyUpdateListener;


# static fields
.field private static final JOIN_POLICY_DIRECT_JOIN:Ljava/lang/String; = "DIRECT_JOIN"

.field private static final JOIN_POLICY_INVITE_ONLY:Ljava/lang/String; = "INVITE_ONLY"

.field private static final TAG:Ljava/lang/String;

.field private static final sDialogIconDiameter:I = 0x48

.field private static final sGroupImagePadding:I = 0x4


# instance fields
.field private mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

.field private mJoinPolicy:Ljava/lang/String;

.field private mMemberListViewAdapter:Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

.field private final mMembersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;",
            ">;"
        }
    .end annotation
.end field

.field private mPartyID:Ljava/lang/String;

.field private mPartyLayout:Landroid/widget/LinearLayout;

.field private final mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

.field private mSource:Ljava/lang/String;

.field private mVolumeBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "unknown"

    .line 448
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mSource:Ljava/lang/String;

    .line 53
    new-instance p2, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    invoke-direct {p2, p1}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mMembersList:Ljava/util/ArrayList;

    .line 55
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->TAG:Ljava/lang/String;

    const-string p2, "SocialPartyDialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mPartyID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mPartyID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->leaveParty()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;Landroid/widget/ImageButton;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->setToggleButton(Landroid/widget/ImageButton;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->setPartyLocalMute(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)I
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getPartyLocalMute()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->dismissPartyDialog()V

    return-void
.end method

.method static synthetic access$300(I)F
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getVolumeFromSeekbarProgress(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;F)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->setPartyVolume(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mSource:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->updatePartyJoinPolicy()V

    return-void
.end method

.method private dismissPartyDialog()V
    .locals 4

    .line 127
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const/4 v1, 0x2

    .line 128
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "source"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mSource:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "party_dialog_dismiss"

    invoke-virtual {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "close"

    .line 129
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method

.method private getPartyLocalMute()I
    .locals 1

    .line 436
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getPartyLocalMute(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private getPartyVolume()F
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getPartyVolume(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method private static getVolumeFromSeekbarProgress(I)F
    .locals 1

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    return p0
.end method

.method private leaveParty()V
    .locals 4

    .line 385
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mPartyID:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->TAG:Ljava/lang/String;

    const-string v1, "Trying to leave a party while not in a party. Great success."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 390
    :cond_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leaving party: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mPartyID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const/4 v1, 0x4

    .line 392
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "partyID"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mPartyID:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "source"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mSource:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "party_dialog_leave"

    invoke-virtual {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mPartyID:Ljava/lang/String;

    new-instance v3, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$7;

    invoke-direct {v3, p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$7;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 394
    invoke-static {v1, v2, v3}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->leaveParty(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;)V

    return-void
.end method

.method private setPartyLocalMute(I)V
    .locals 1

    .line 432
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->setPartyLocalMute(Landroid/content/Context;I)I

    return-void
.end method

.method private setPartyVolume(F)V
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->setPartyVolume(Landroid/content/Context;F)V

    return-void
.end method

.method private setToggleButton(Landroid/widget/ImageButton;)V
    .locals 4

    .line 370
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mJoinPolicy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x204387c0

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x28742b22

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "INVITE_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "DIRECT_JOIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    const/16 v0, 0x8

    .line 378
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 375
    :cond_3
    sget v0, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_lock_open:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 372
    :cond_4
    sget v0, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_lock_close:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method private updatePartyJoinPolicy()V
    .locals 0

    return-void
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 1

    .line 133
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "source"

    .line 134
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {p1}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mSource:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 4

    .line 60
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    .line 61
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->social_party_dialog_layout:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    iput-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    .line 62
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    invoke-virtual {v1, v2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setOnCloseListener(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    .line 79
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$id;->social_party_custom_layout:I

    invoke-virtual {v1, v2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mPartyLayout:Landroid/widget/LinearLayout;

    .line 80
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mPartyLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$id;->party_volume_slider_controls_seekbar:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mVolumeBar:Landroid/widget/SeekBar;

    .line 84
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mVolumeBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getPartyVolume()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 85
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mVolumeBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 108
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial mute state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getPartyLocalMute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mMembersList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mMemberListViewAdapter:Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

    .line 111
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mPartyLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->members_list:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 112
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mMemberListViewAdapter:Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getCurrentPartyInfo()Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->setPartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V

    :cond_0
    return-void
.end method

.method public onBackButton()Z
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->dismissPartyDialog()V

    const/4 v0, 0x1

    return v0
.end method

.method public setPartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V
    .locals 20

    move-object/from16 v0, p0

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->isInParty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v1

    const-string v2, "close"

    invoke-virtual {v1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getLocalUserInfo()Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;

    move-result-object v2

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->getMembers()Ljava/util/List;

    move-result-object v3

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->getPartyID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mPartyID:Ljava/lang/String;

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->getJoinPolicy()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mJoinPolicy:Ljava/lang/String;

    .line 157
    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_social_default_profile:I

    .line 158
    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 160
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    new-array v5, v5, [Ljava/lang/String;

    .line 162
    invoke-virtual {v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    const/4 v7, 0x0

    .line 163
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_1

    .line 164
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    add-int/lit8 v7, v7, 0x1

    .line 165
    iget-object v9, v9, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->smallImageUrl:Ljava/lang/String;

    aput-object v9, v5, v7

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {}, Lcom/oculus/vrshell/panels/ImageLoader;->getInstance()Lcom/oculus/vrshell/panels/ImageLoader;

    move-result-object v7

    .line 170
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$3;

    invoke-direct {v10, v0, v5, v4, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$3;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;[Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/res/Resources;)V

    .line 169
    invoke-virtual {v7, v9, v10}, Lcom/oculus/vrshell/panels/ImageLoader;->loadImages(Ljava/util/List;Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;)V

    .line 196
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mPartyLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$id;->toggle_icon:I

    .line 197
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v4

    sget-object v5, Lcom/oculus/common/gatekeepers/Gatekeeper;->PARTIES_JOINABLE_CALLS:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {v4, v5}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mJoinPolicy:Ljava/lang/String;

    .line 199
    invoke-static {v4}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 201
    iget-object v4, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mPartyLayout:Landroid/widget/LinearLayout;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$id;->join_policy_label:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 203
    iget-object v5, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mJoinPolicy:Ljava/lang/String;

    const-string v7, "INVITE_ONLY"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/oculus/panelapp/anytimeui/R$string;->social_party_toggle_invite_only:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 205
    :cond_2
    iget-object v5, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mJoinPolicy:Ljava/lang/String;

    const-string v7, "DIRECT_JOIN"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/oculus/panelapp/anytimeui/R$string;->social_party_toggle_open_to_join:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    const-string v5, ""

    .line 208
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 211
    invoke-direct {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->setToggleButton(Landroid/widget/ImageButton;)V

    .line 212
    new-instance v4, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$4;

    invoke-direct {v4, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$4;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    const/16 v4, 0x8

    .line 222
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 227
    :goto_2
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mMembersList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 230
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mMembersList:Ljava/util/ArrayList;

    new-instance v4, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;

    sget-object v5, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->INVITE_BUTTON_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    invoke-direct {v4, v5}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;-><init>(Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mMembersList:Ljava/util/ArrayList;

    new-instance v4, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;

    sget-object v5, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->PARTY_MEMBER_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    new-instance v7, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;

    .line 241
    invoke-virtual {v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v11

    .line 246
    invoke-virtual {v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$5;

    invoke-direct {v2, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$5;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)V

    const-string v10, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    move-object v9, v7

    move-object/from16 v19, v2

    invoke-direct/range {v9 .. v19}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;)V

    invoke-direct {v4, v5, v7}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;-><init>(Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    .line 300
    iget-object v3, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mMembersList:Ljava/util/ArrayList;

    new-instance v4, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;

    sget-object v5, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->PARTY_MEMBER_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    new-instance v7, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;

    iget-object v10, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->userId:Ljava/lang/String;

    iget-object v11, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->alias:Ljava/lang/String;

    iget-object v12, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presence:Ljava/lang/String;

    iget-object v13, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presenceAppId:Ljava/lang/String;

    iget-object v14, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presenceAppPackageName:Ljava/lang/String;

    iget-object v15, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presenceDeeplinkMessage:Ljava/lang/String;

    iget-object v9, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->smallImageUrl:Ljava/lang/String;

    iget-boolean v8, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->online:Z

    const/16 v18, 0x1

    new-instance v6, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$6;

    invoke-direct {v6, v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$6;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;)V

    move-object v2, v9

    move-object v9, v7

    move-object/from16 v16, v2

    move/from16 v17, v8

    move-object/from16 v19, v6

    invoke-direct/range {v9 .. v19}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;)V

    invoke-direct {v4, v5, v7}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;-><init>(Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_3

    .line 341
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->getInvitedUsers()Ljava/util/List;

    move-result-object v1

    .line 342
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oculus/panelapp/anytimeui/R$string;->invited_friends_header:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 345
    iget-object v3, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mMembersList:Ljava/util/ArrayList;

    new-instance v4, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;

    sget-object v5, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->HEADER_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    invoke-direct {v4, v5, v2}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;-><init>(Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    .line 350
    iget-object v3, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mMembersList:Ljava/util/ArrayList;

    new-instance v4, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;

    sget-object v5, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->PARTY_MEMBER_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    new-instance v15, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;

    iget-object v7, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->userId:Ljava/lang/String;

    iget-object v8, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->alias:Ljava/lang/String;

    iget-object v9, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presence:Ljava/lang/String;

    iget-object v10, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presenceAppId:Ljava/lang/String;

    iget-object v11, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presenceAppPackageName:Ljava/lang/String;

    iget-object v12, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presenceDeeplinkMessage:Ljava/lang/String;

    iget-object v13, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->smallImageUrl:Ljava/lang/String;

    iget-boolean v14, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->online:Z

    const/4 v2, 0x1

    const/16 v16, 0x0

    move-object v6, v15

    move-object/from16 p1, v1

    move-object v1, v15

    move v15, v2

    invoke-direct/range {v6 .. v16}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;)V

    invoke-direct {v4, v5, v1}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;-><init>(Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    goto :goto_4

    .line 366
    :cond_6
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->mMemberListViewAdapter:Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->notifyDataSetChanged()V

    return-void
.end method
