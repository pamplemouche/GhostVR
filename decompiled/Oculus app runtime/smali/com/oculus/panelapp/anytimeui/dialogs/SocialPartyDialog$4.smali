.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$4;
.super Ljava/lang/Object;
.source "SocialPartyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->setPartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)V

    .line 217
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$1000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;Landroid/widget/ImageButton;)V

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
