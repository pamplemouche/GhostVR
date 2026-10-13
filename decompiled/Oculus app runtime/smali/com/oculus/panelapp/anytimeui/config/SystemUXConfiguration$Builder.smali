.class Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
.super Ljava/lang/Object;
.source "SystemUXConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private areGuardianPillButtonsEnabled:Z

.field private hasAuiNavigateTab:Z

.field private hasAuiNotificationsTab:Z

.field private hasAuiPeopleTab:Z

.field private hasAuiShareTab:Z

.field private hasAuiSocialIcons:Z

.field private isAdminPinEnabled:Z

.field private isAuiTabButtonBarReconfigured:Z

.field private isAuiTabButtonBarVisible:Z

.field private isCameraRollEnabled:Z

.field private isCastingEnabled:Z

.field private isExitAvailableOnPauseDialog:Z

.field private isGuardianButtonEnabled:Z

.field private isLeaveAdminModeButtonEnabled:Z

.field private isLiveStreamingEnabled:Z

.field private isManagedLauncherButtonEnabled:Z

.field private isPassthroughButtonEnabled:Z

.field private isSeeAllEnabled:Z

.field private isWifiEditable:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isLiveStreamingEnabled:Z

    .line 81
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isCameraRollEnabled:Z

    .line 83
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isAuiTabButtonBarVisible:Z

    .line 85
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isSeeAllEnabled:Z

    .line 87
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isExitAvailableOnPauseDialog:Z

    .line 90
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isGuardianButtonEnabled:Z

    .line 91
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->areGuardianPillButtonsEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->hasAuiNavigateTab:Z

    return p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->hasAuiSocialIcons:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isSeeAllEnabled:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isAdminPinEnabled:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isExitAvailableOnPauseDialog:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isManagedLauncherButtonEnabled:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isLeaveAdminModeButtonEnabled:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isGuardianButtonEnabled:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->areGuardianPillButtonsEnabled:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isAuiTabButtonBarReconfigured:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isPassthroughButtonEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->hasAuiPeopleTab:Z

    return p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->hasAuiShareTab:Z

    return p0
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isCastingEnabled:Z

    return p0
.end method

.method static synthetic access$500(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isLiveStreamingEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isCameraRollEnabled:Z

    return p0
.end method

.method static synthetic access$700(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->hasAuiNotificationsTab:Z

    return p0
.end method

.method static synthetic access$800(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isAuiTabButtonBarVisible:Z

    return p0
.end method

.method static synthetic access$900(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isWifiEditable:Z

    return p0
.end method


# virtual methods
.method setAdminPinEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isAdminPinEnabled:Z

    return-object p0
.end method

.method setAuiNavigateTabVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->hasAuiNavigateTab:Z

    return-object p0
.end method

.method setAuiNotificationsTabVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->hasAuiNotificationsTab:Z

    return-object p0
.end method

.method setAuiPeopleTabVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->hasAuiPeopleTab:Z

    return-object p0
.end method

.method setAuiShareTabVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->hasAuiShareTab:Z

    return-object p0
.end method

.method setAuiSocialIconsVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->hasAuiSocialIcons:Z

    return-object p0
.end method

.method setAuiTabBarVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isAuiTabButtonBarVisible:Z

    return-object p0
.end method

.method setAuiTabButtonBarReconfigured(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isAuiTabButtonBarReconfigured:Z

    return-object p0
.end method

.method setCameraRollEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isCameraRollEnabled:Z

    return-object p0
.end method

.method setCastingEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isCastingEnabled:Z

    return-object p0
.end method

.method setExitButtonOnPauseDialogEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isExitAvailableOnPauseDialog:Z

    return-object p0
.end method

.method setGuardianButtonEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isGuardianButtonEnabled:Z

    return-object p0
.end method

.method setGuardianPillButtonsEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->areGuardianPillButtonsEnabled:Z

    return-object p0
.end method

.method setLeaveAdminModeButtonEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isLeaveAdminModeButtonEnabled:Z

    return-object p0
.end method

.method setLiveStreamingEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isLiveStreamingEnabled:Z

    return-object p0
.end method

.method setManagedLauncherButtonEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isManagedLauncherButtonEnabled:Z

    return-object p0
.end method

.method setPassthroughButtonEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isPassthroughButtonEnabled:Z

    return-object p0
.end method

.method setSeeAllEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isSeeAllEnabled:Z

    return-object p0
.end method

.method setWifiEditable(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->isWifiEditable:Z

    return-object p0
.end method
