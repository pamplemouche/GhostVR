.class public final Lcom/oculus/panelapp/anytimeui/config/EnterpriseConfiguration;
.super Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;
.source "EnterpriseConfiguration.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 18
    invoke-static {p1, p2}, Lcom/oculus/panelapp/anytimeui/config/EnterpriseConfiguration;->buildConfig(Landroid/content/Context;I)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;-><init>(Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;)V

    return-void
.end method

.method private static buildConfig(Landroid/content/Context;I)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;
    .locals 7

    .line 23
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->sysUxBuilder()Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiNavigateTabVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setLiveStreamingEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setCameraRollEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setGuardianPillButtonsEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiTabButtonBarReconfigured(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiTabBarVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiSocialIconsVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiPeopleTabVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiShareTabVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setCastingEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiNotificationsTabVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setWifiEditable(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setSeeAllEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAdminPinEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setManagedLauncherButtonEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setPassthroughButtonEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    move-result-object v0

    .line 42
    invoke-static {p0}, Lcom/oculus/os/enterprise/EnterpriseServer;->getConfiguration(Landroid/content/Context;)Lcom/oculus/os/enterprise/Configuration;

    move-result-object p0

    .line 43
    invoke-interface {p0}, Lcom/oculus/os/enterprise/Configuration;->getModes()[Lcom/oculus/os/enterprise/Mode;

    move-result-object v3

    .line 46
    aget-object v4, v3, p1

    invoke-interface {v4}, Lcom/oculus/os/enterprise/Mode;->getDefaultApplication()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 47
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    :cond_0
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setManagedLauncherButtonEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    .line 52
    :cond_1
    invoke-interface {p0}, Lcom/oculus/os/enterprise/Configuration;->getDefaultModeIndex()I

    move-result v4

    if-eq p1, v4, :cond_2

    .line 53
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setLeaveAdminModeButtonEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    .line 57
    :cond_2
    invoke-interface {p0}, Lcom/oculus/os/enterprise/Configuration;->getGuardianMode()Lcom/oculus/os/enterprise/GuardianMode;

    move-result-object p0

    sget-object v4, Lcom/oculus/os/enterprise/GuardianMode;->DISABLED:Lcom/oculus/os/enterprise/GuardianMode;

    if-ne p0, v4, :cond_3

    .line 58
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setGuardianButtonEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    .line 61
    :cond_3
    aget-object p0, v3, p1

    .line 62
    invoke-interface {p0}, Lcom/oculus/os/enterprise/Mode;->getAuiCapabilities()[Lcom/oculus/os/enterprise/AUICapability;

    move-result-object p1

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p1, v4

    .line 63
    sget-object v6, Lcom/oculus/panelapp/anytimeui/config/EnterpriseConfiguration$1;->$SwitchMap$com$oculus$os$enterprise$AUICapability:[I

    invoke-virtual {v5}, Lcom/oculus/os/enterprise/AUICapability;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 98
    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setSeeAllEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    .line 99
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAdminPinEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    goto :goto_1

    .line 92
    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setWifiEditable(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    goto :goto_1

    .line 85
    :pswitch_2
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiNotificationsTabVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    .line 86
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiTabBarVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    goto :goto_1

    .line 79
    :pswitch_3
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setCastingEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    goto :goto_1

    .line 72
    :pswitch_4
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiShareTabVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    .line 73
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiTabBarVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    goto :goto_1

    .line 66
    :pswitch_5
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setAuiSocialIconsVisible(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    :cond_4
    invoke-interface {p0}, Lcom/oculus/os/enterprise/Mode;->getHomeButtonBehaviour()Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    move-result-object p0

    sget-object p1, Lcom/oculus/os/enterprise/HomeButtonBehaviour;->RESUME_ONLY:Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    if-ne p0, p1, :cond_5

    .line 106
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;->setExitButtonOnPauseDialogEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration$Builder;

    :cond_5
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
