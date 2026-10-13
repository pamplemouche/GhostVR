.class public abstract Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;
.super Ljava/lang/Object;
.source "SystemUXConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    }
.end annotation


# instance fields
.field public final areGuardianPillButtonsEnabled:Z

.field public final hasAuiNavigateTab:Z

.field public final hasAuiNotificationsTab:Z

.field public final hasAuiPeopleTab:Z

.field public final hasAuiShareTab:Z

.field public final hasAuiSocialIcons:Z

.field public final isAdminPinEnabled:Z

.field public final isAuiTabButtonBarReconfigured:Z

.field public final isAuiTabButtonBarVisible:Z

.field public final isCameraRollEnabled:Z

.field public final isCastingEnabled:Z

.field public final isExitAvailableOnPauseDialog:Z

.field public final isGuardianButtonEnabled:Z

.field public final isLeaveAdminModeButtonEnabled:Z

.field public final isLiveStreamingEnabled:Z

.field public final isManagedLauncherButtonEnabled:Z

.field public final isPassthroughButtonEnabled:Z

.field public final isSeeAllEnabled:Z

.field public final isWifiEditable:Z


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$000(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->hasAuiNavigateTab:Z

    .line 50
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$100(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->hasAuiSocialIcons:Z

    .line 51
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$200(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->hasAuiPeopleTab:Z

    .line 52
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$300(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->hasAuiShareTab:Z

    .line 53
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$400(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isCastingEnabled:Z

    .line 54
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$500(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isLiveStreamingEnabled:Z

    .line 55
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$600(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isCameraRollEnabled:Z

    .line 56
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$700(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->hasAuiNotificationsTab:Z

    .line 57
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$800(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isAuiTabButtonBarVisible:Z

    .line 58
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$900(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isWifiEditable:Z

    .line 59
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$1000(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isSeeAllEnabled:Z

    .line 60
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$1100(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isAdminPinEnabled:Z

    .line 61
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$1200(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isExitAvailableOnPauseDialog:Z

    .line 62
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$1300(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isManagedLauncherButtonEnabled:Z

    .line 63
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$1400(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isLeaveAdminModeButtonEnabled:Z

    .line 64
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$1500(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isGuardianButtonEnabled:Z

    .line 65
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$1600(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->areGuardianPillButtonsEnabled:Z

    .line 66
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$1700(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isAuiTabButtonBarReconfigured:Z

    .line 67
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->access$1800(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isPassthroughButtonEnabled:Z

    return-void
.end method

.method static sysUxBuilder()Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 1

    .line 71
    new-instance v0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    invoke-direct {v0}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;-><init>()V

    return-object v0
.end method
