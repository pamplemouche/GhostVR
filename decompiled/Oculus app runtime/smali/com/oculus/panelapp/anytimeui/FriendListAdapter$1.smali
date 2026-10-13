.class Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;
.super Ljava/lang/Object;
.source "FriendListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

.field final synthetic val$friend:Lcom/oculus/panelapp/anytimeui/FriendListRowData;

.field final synthetic val$rowView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/FriendListAdapter;Lcom/oculus/panelapp/anytimeui/FriendListRowData;Landroid/view/View;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;->this$0:Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;->val$friend:Lcom/oculus/panelapp/anytimeui/FriendListRowData;

    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;->val$rowView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 111
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;->this$0:Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->access$000(Lcom/oculus/panelapp/anytimeui/FriendListAdapter;)Lcom/oculus/panelapp/anytimeui/InviteClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;->val$friend:Lcom/oculus/panelapp/anytimeui/FriendListRowData;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/oculus/panelapp/anytimeui/InviteClickListener;->onInviteClick(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;->this$0:Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->access$100(Lcom/oculus/panelapp/anytimeui/FriendListAdapter;)Ljava/util/HashSet;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;->val$friend:Lcom/oculus/panelapp/anytimeui/FriendListRowData;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;->this$0:Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->access$100(Lcom/oculus/panelapp/anytimeui/FriendListAdapter;)Ljava/util/HashSet;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;->val$friend:Lcom/oculus/panelapp/anytimeui/FriendListRowData;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;->this$0:Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->access$100(Lcom/oculus/panelapp/anytimeui/FriendListAdapter;)Ljava/util/HashSet;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;->val$friend:Lcom/oculus/panelapp/anytimeui/FriendListRowData;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    :goto_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;->this$0:Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;->val$rowView:Landroid/view/View;

    .line 120
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->access$100(Lcom/oculus/panelapp/anytimeui/FriendListAdapter;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;->val$friend:Lcom/oculus/panelapp/anytimeui/FriendListRowData;

    iget-object v2, v2, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;->this$0:Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;->val$friend:Lcom/oculus/panelapp/anytimeui/FriendListRowData;

    iget-object v3, v3, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->inviteState:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    invoke-static {v2, v3}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->access$200(Lcom/oculus/panelapp/anytimeui/FriendListAdapter;Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;)Z

    move-result v2

    .line 119
    invoke-static {p1, v0, v1, v2}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->access$300(Lcom/oculus/panelapp/anytimeui/FriendListAdapter;Landroid/view/View;ZZ)V

    return-void
.end method
