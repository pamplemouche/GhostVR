.class Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$2;
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

.field final synthetic val$member:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$2;->this$0:Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$2;->val$member:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$2;->val$member:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;

    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mCallbacks:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$2;->val$member:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;

    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;->mCallbacks:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;

    invoke-interface {p1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;->onJoinClick()V

    :cond_0
    return-void
.end method
