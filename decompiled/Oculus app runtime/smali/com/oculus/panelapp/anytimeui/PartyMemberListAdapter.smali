.class public Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PartyMemberListAdapter.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;",
        ">;",
        "Landroid/widget/PopupMenu$OnMenuItemClickListener;"
    }
.end annotation


# static fields
.field private static final HEADER_ROW_RESOURCE_ID:I

.field private static final INVITE_BUTTON_LAYOUT_RESOURCE_ID:I

.field private static final PARTY_MEMBER_LAYOUT_RESOURCE_ID:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->TAG:Ljava/lang/String;

    .line 29
    sget v0, Lcom/oculus/panelapp/anytimeui/R$layout;->social_party_member_layout:I

    sput v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->PARTY_MEMBER_LAYOUT_RESOURCE_ID:I

    .line 30
    sget v0, Lcom/oculus/panelapp/anytimeui/R$layout;->social_party_management_invite_button_layout:I

    sput v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->INVITE_BUTTON_LAYOUT_RESOURCE_ID:I

    .line 32
    sget v0, Lcom/oculus/panelapp/anytimeui/R$layout;->social_party_managemet_invited_header_layout:I

    sput v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->HEADER_ROW_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;",
            ">;",
            "Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;",
            ")V"
        }
    .end annotation

    .line 39
    sget v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->PARTY_MEMBER_LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 40
    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;)Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;Landroid/widget/ImageButton;Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->setActionButton(Landroid/widget/ImageButton;Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;)V

    return-void
.end method

.method private getItemRowType(I)Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;
    .locals 0

    .line 233
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;->getRowType()Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    move-result-object p1

    return-object p1
.end method

.method private onBlockClicked(Ljava/lang/String;)V
    .locals 4

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.vrshell.intent.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "/system_utilities/user_block/"

    .line 205
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "com.oculus.vrshell"

    .line 206
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 207
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "system_ux_party_panel"

    .line 208
    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 211
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "com.oculus.vrshell.ShellControlBroadcastReceiver"

    .line 214
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "intent_data"

    const-string v3, "systemux://user_block"

    .line 218
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 219
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "uri"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 212
    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setActionButton(Landroid/widget/ImageButton;Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;)V
    .locals 2

    .line 167
    sget-object v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$6;->$SwitchMap$com$oculus$panelapp$anytimeui$PartyMemberListRowData$MicState:[I

    iget-object v1, p2, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mCallbacks:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;

    invoke-interface {v1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;->getMicState()Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 195
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 181
    :cond_1
    sget v0, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_mic_on:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 182
    new-instance v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$5;

    invoke-direct {v0, p0, p2}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$5;-><init>(Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 169
    :cond_2
    sget v0, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_mic_off:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 170
    new-instance v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$4;

    invoke-direct {v0, p0, p2}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$4;-><init>(Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->getItemRowType(I)Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->ordinal()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 46
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 48
    sget-object v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$6;->$SwitchMap$com$oculus$panelapp$anytimeui$PartyManagementListRowData$RowType:[I

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->getItemRowType(I)Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_5

    .line 68
    :cond_0
    sget v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->PARTY_MEMBER_LAYOUT_RESOURCE_ID:I

    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 69
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;

    .line 70
    invoke-virtual {p3}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;->getData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;

    .line 72
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->profile_picture:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 73
    new-instance v3, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;-><init>(Landroid/content/Context;)V

    .line 75
    iget-object v4, p3, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mProfileImageURL:Ljava/lang/String;

    iget-boolean v5, p3, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mOnline:Z

    invoke-virtual {v3, v0, v4, v5}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->setImageViewFromUrl(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 77
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->display_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p3, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->presence_status:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p3, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mPresenceStatus:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->join_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v4, Lcom/oculus/common/gatekeepers/Gatekeeper;->PARTIES_JOIN_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {v3, v4}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    iget-object v3, p3, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mPresenceAppPackageName:Ljava/lang/String;

    .line 82
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p3, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mPresenceDeeplinkMessage:Ljava/lang/String;

    .line 83
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p3, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mCallbacks:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;

    if-nez v3, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    new-instance v3, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$2;

    invoke-direct {v3, p0, p3}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$2;-><init>(Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 85
    :cond_2
    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    :goto_1
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->action_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 100
    iget-object v3, p3, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mCallbacks:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;

    if-eqz v3, :cond_3

    .line 101
    invoke-direct {p0, v0, p3}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->setActionButton(Landroid/widget/ImageButton;Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;)V

    goto :goto_2

    .line 104
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 105
    sget-object v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callbacks for row "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is unexpectedly null"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_2
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->overflow_action_icon:I

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 110
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v3, Lcom/oculus/common/gatekeepers/Gatekeeper;->PARTIES_MESSAGE_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 111
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v5, Lcom/oculus/common/gatekeepers/Gatekeeper;->PARTIES_BLOCK:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {v3, v5}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 112
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 113
    iget-boolean v2, p3, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mShowOverflowMenu:Z

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 114
    sget v1, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_more_vertical:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 115
    new-instance v1, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$3;

    invoke-direct {v1, p0, v0, v3, p3}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$3;-><init>(Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 141
    :cond_6
    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4

    .line 63
    :cond_7
    sget v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->HEADER_ROW_RESOURCE_ID:I

    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 64
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 65
    sget p3, Lcom/oculus/panelapp/anytimeui/R$id;->invited_friends_header:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    move-object p1, p2

    goto :goto_5

    .line 50
    :cond_8
    sget p1, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->INVITE_BUTTON_LAYOUT_RESOURCE_ID:I

    invoke-virtual {p2, p1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 51
    sget p2, Lcom/oculus/panelapp/anytimeui/R$id;->invite_friends_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    if-eqz p2, :cond_9

    .line 53
    new-instance p3, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$1;

    invoke-direct {p3, p0}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$1;-><init>(Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    :goto_5
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 229
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->values()[Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 153
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->message:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->MESSAGES:Lcom/oculus/vrshell/SystemUXRoute;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Lcom/oculus/vrshell/SystemUXRoute;Ljava/lang/String;)V

    return v2

    .line 156
    :cond_0
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->block:I

    if-ne v0, v1, :cond_1

    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 158
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->onBlockClicked(Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
