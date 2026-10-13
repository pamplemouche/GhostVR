.class Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$3;
.super Ljava/lang/Object;
.source "PartyMemberListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

.field final synthetic val$isBlockAllowed:Ljava/lang/Boolean;

.field final synthetic val$isMessageAllowed:Ljava/lang/Boolean;

.field final synthetic val$member:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$3;->this$0:Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$3;->val$isMessageAllowed:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$3;->val$isBlockAllowed:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$3;->val$member:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 119
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$3;->this$0:Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 120
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$3;->this$0:Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 121
    sget p1, Lcom/oculus/panelapp/anytimeui/R$menu;->social_party_member_overflow_menu:I

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 122
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 123
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->message:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 124
    sget v2, Lcom/oculus/panelapp/anytimeui/R$id;->block:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 125
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$3;->val$isMessageAllowed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 126
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 127
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$3;->val$isBlockAllowed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 131
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 133
    :cond_1
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$3;->this$0:Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

    invoke-virtual {v2}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 134
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$3;->val$member:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;

    iget-object v2, v2, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 135
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 137
    :goto_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
