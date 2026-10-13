.class public final Lcom/oculus/panelapp/debug/CoExTab;
.super Landroid/widget/LinearLayout;
.source "CoExTab.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/views/ShellTabHost$ShellTab;


# instance fields
.field private mActiveUsersListView:Landroid/widget/ListView;

.field private mLeaderIdTextView:Landroid/widget/TextView;

.field private mPartyIdTextView:Landroid/widget/TextView;

.field private mPeersListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
    .locals 2

    .line 23
    sget p1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_coex:I

    const-string v0, "coex"

    const-string v1, "CoEx"

    invoke-virtual {p2, v0, v1, p1}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->addTab(Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    sget p1, Lcom/oculus/panelapp/debug/R$id;->debug_coex_party_id_content:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/CoExTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/CoExTab;->mPartyIdTextView:Landroid/widget/TextView;

    .line 25
    sget p1, Lcom/oculus/panelapp/debug/R$id;->debug_coex_leader_id_content:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/CoExTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/CoExTab;->mLeaderIdTextView:Landroid/widget/TextView;

    .line 26
    sget p1, Lcom/oculus/panelapp/debug/R$id;->debug_coex_active_users_list:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/CoExTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/CoExTab;->mActiveUsersListView:Landroid/widget/ListView;

    .line 27
    sget p1, Lcom/oculus/panelapp/debug/R$id;->debug_coex_peers_list:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/CoExTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/CoExTab;->mPeersListView:Landroid/widget/ListView;

    return-void
.end method

.method protected setLeaderId(Ljava/lang/String;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/oculus/panelapp/debug/CoExTab;->mLeaderIdTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setMembers(Ljava/lang/String;)V
    .locals 3

    const-string v0, " "

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 40
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 41
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/CoExTab;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/debug/R$layout;->debug_coex_item:I

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lcom/oculus/panelapp/debug/CoExTab;->mActiveUsersListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected setPartyId(Ljava/lang/String;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/oculus/panelapp/debug/CoExTab;->mPartyIdTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setPeers(Ljava/lang/String;)V
    .locals 3

    const-string v0, ":"

    const-string v1, " : "

    .line 48
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\|"

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 50
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 51
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/CoExTab;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/debug/R$layout;->debug_coex_item:I

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lcom/oculus/panelapp/debug/CoExTab;->mPeersListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
