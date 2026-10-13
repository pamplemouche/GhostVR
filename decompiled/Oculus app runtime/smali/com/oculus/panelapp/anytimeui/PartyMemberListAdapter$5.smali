.class Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$5;
.super Ljava/lang/Object;
.source "PartyMemberListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->setActionButton(Landroid/widget/ImageButton;Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

.field final synthetic val$member:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$5;->this$0:Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$5;->val$member:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$5;->val$member:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mCallbacks:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;

    sget-object v1, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->MUTED:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    invoke-interface {v0, v1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;->onMicStateClick(Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;)V

    .line 187
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$5;->this$0:Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$5;->val$member:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;

    invoke-static {v0, v1, v2}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->access$100(Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;Landroid/widget/ImageButton;Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;)V

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
