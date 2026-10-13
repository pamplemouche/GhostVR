.class Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$1;
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


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$1;->this$0:Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 57
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$1;->this$0:Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;->access$000(Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;)Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->SOCIAL_SEND_INVITE_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Lcom/oculus/vrshell/SystemUXRoute;Ljava/lang/String;)V

    return-void
.end method
