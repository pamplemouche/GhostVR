.class public final Lcom/oculus/panelapp/debug/ControlTab;
.super Landroid/widget/ScrollView;
.source "ControlTab.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/views/ShellTabHost$ShellTab;


# instance fields
.field private mIsDefaultColor:Z

.field private mPartyButton:Landroid/widget/Button;

.field private mTestNotifId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/debug/ControlTab;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/oculus/panelapp/debug/ControlTab;->mTestNotifId:I

    return p0
.end method

.method static synthetic access$008(Lcom/oculus/panelapp/debug/ControlTab;)I
    .locals 2

    .line 24
    iget v0, p0, Lcom/oculus/panelapp/debug/ControlTab;->mTestNotifId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oculus/panelapp/debug/ControlTab;->mTestNotifId:I

    return v0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/debug/ControlTab;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/oculus/panelapp/debug/ControlTab;->mIsDefaultColor:Z

    return p0
.end method

.method static synthetic access$102(Lcom/oculus/panelapp/debug/ControlTab;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/oculus/panelapp/debug/ControlTab;->mIsDefaultColor:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/debug/ControlTab;)Landroid/widget/Button;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oculus/panelapp/debug/ControlTab;->mPartyButton:Landroid/widget/Button;

    return-object p0
.end method


# virtual methods
.method public initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
    .locals 5

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    const/4 v1, 0x5

    .line 33
    iput v1, p0, Lcom/oculus/panelapp/debug/ControlTab;->mTestNotifId:I

    .line 35
    sget v1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_control:I

    const-string v2, "control"

    const-string v3, "Control"

    invoke-virtual {p2, v2, v3, v1}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->addTab(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    sget p2, Lcom/oculus/panelapp/debug/R$id;->debug_action_close:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/debug/ControlTab;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 38
    new-instance v1, Lcom/oculus/panelapp/debug/ControlTab$1;

    invoke-direct {v1, p0, v0}, Lcom/oculus/panelapp/debug/ControlTab$1;-><init>(Lcom/oculus/panelapp/debug/ControlTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget p2, Lcom/oculus/panelapp/debug/R$id;->debug_action_exit_shell:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/debug/ControlTab;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 47
    new-instance v1, Lcom/oculus/panelapp/debug/ControlTab$2;

    invoke-direct {v1, p0, v0}, Lcom/oculus/panelapp/debug/ControlTab$2;-><init>(Lcom/oculus/panelapp/debug/ControlTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget p2, Lcom/oculus/panelapp/debug/R$id;->debug_action_send_notification:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/debug/ControlTab;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 56
    new-instance v1, Lcom/oculus/panelapp/debug/ControlTab$3;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/debug/ControlTab$3;-><init>(Lcom/oculus/panelapp/debug/ControlTab;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    sget p2, Lcom/oculus/panelapp/debug/R$id;->debug_change_party_color:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/debug/ControlTab;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/ControlTab;->mPartyButton:Landroid/widget/Button;

    .line 73
    sget-object p2, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_PARTY_SYNC:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {v0, p2}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p2

    const/16 v1, 0x8

    if-nez p2, :cond_0

    .line 74
    iget-object p2, p0, Lcom/oculus/panelapp/debug/ControlTab;->mPartyButton:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p2, p0, Lcom/oculus/panelapp/debug/ControlTab;->mPartyButton:Landroid/widget/Button;

    new-instance v2, Lcom/oculus/panelapp/debug/ControlTab$4;

    invoke-direct {v2, p0, v0}, Lcom/oculus/panelapp/debug/ControlTab$4;-><init>(Lcom/oculus/panelapp/debug/ControlTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :goto_0
    sget p2, Lcom/oculus/panelapp/debug/R$id;->debug_action_setup_guardian:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/debug/ControlTab;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 96
    sget-object v2, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->QUEST:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 97
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 99
    :cond_1
    new-instance v2, Lcom/oculus/panelapp/debug/ControlTab$5;

    invoke-direct {v2, p0, v0}, Lcom/oculus/panelapp/debug/ControlTab$5;-><init>(Lcom/oculus/panelapp/debug/ControlTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :goto_1
    sget p2, Lcom/oculus/panelapp/debug/R$id;->debug_action_intro_dialogs:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/debug/ControlTab;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 109
    sget-object v2, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->QUEST:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 110
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 112
    :cond_2
    new-instance v2, Lcom/oculus/panelapp/debug/ControlTab$6;

    invoke-direct {v2, p0, v0}, Lcom/oculus/panelapp/debug/ControlTab$6;-><init>(Lcom/oculus/panelapp/debug/ControlTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :goto_2
    sget p2, Lcom/oculus/panelapp/debug/R$id;->debug_action_reset_tv_badge:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/debug/ControlTab;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 122
    sget-object v2, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_TV_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    new-instance v2, Lcom/oculus/panelapp/debug/ControlTab$7;

    invoke-direct {v2, p0}, Lcom/oculus/panelapp/debug/ControlTab$7;-><init>(Lcom/oculus/panelapp/debug/ControlTab;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 131
    :cond_3
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    :goto_3
    sget p2, Lcom/oculus/panelapp/debug/R$id;->debug_action_reset_quest_recenter:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/debug/ControlTab;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 135
    sget-object v2, Lcom/oculus/common/gatekeepers/Gatekeeper;->QUEST_RECENTER:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 136
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v2

    sget-object v4, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->QUEST:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    if-ne v2, v4, :cond_4

    .line 137
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    new-instance v2, Lcom/oculus/panelapp/debug/ControlTab$8;

    invoke-direct {v2, p0, v0}, Lcom/oculus/panelapp/debug/ControlTab$8;-><init>(Lcom/oculus/panelapp/debug/ControlTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_4
    sget p2, Lcom/oculus/panelapp/debug/R$id;->debug_action_reset_quest_show_taskbar:I

    .line 148
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/debug/ControlTab;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 149
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v2

    sget-object v4, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->QUEST:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    if-ne v2, v4, :cond_5

    .line 150
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    new-instance v2, Lcom/oculus/panelapp/debug/ControlTab$9;

    invoke-direct {v2, p0, v0}, Lcom/oculus/panelapp/debug/ControlTab$9;-><init>(Lcom/oculus/panelapp/debug/ControlTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_5
    sget p2, Lcom/oculus/panelapp/debug/R$id;->debug_action_reset_voice_prompt_toast:I

    .line 161
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/debug/ControlTab;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const-string v2, "sessionless__oculus_voice_suggestion_prompt_universe"

    const-string v3, "is_voice_prompt_toast_enabled"

    .line 162
    invoke-virtual {v0, v2, v3}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->isQEParamEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 164
    new-instance v2, Lcom/oculus/panelapp/debug/ControlTab$10;

    invoke-direct {v2, p0}, Lcom/oculus/panelapp/debug/ControlTab$10;-><init>(Lcom/oculus/panelapp/debug/ControlTab;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 175
    :cond_6
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    :goto_4
    sget p2, Lcom/oculus/panelapp/debug/R$id;->debug_action_clear_all_maps:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/debug/ControlTab;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 179
    sget-object v2, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->QUEST:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object p1

    if-eq v2, p1, :cond_7

    .line 180
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    .line 182
    :cond_7
    new-instance p1, Lcom/oculus/panelapp/debug/ControlTab$11;

    invoke-direct {p1, p0, v0}, Lcom/oculus/panelapp/debug/ControlTab$11;-><init>(Lcom/oculus/panelapp/debug/ControlTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-void
.end method

.method public onReceivePartyMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ControlTab;->mPartyButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "color"

    .line 196
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "green"

    .line 197
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ControlTab;->mPartyButton:Landroid/widget/Button;

    const p2, -0xff0100

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ControlTab;->mPartyButton:Landroid/widget/Button;

    const p2, -0xffff01

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundColor(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
