.class Lcom/oculus/panelapp/guardian/GuardianView$1;
.super Ljava/lang/Object;
.source "GuardianView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/guardian/GuardianView;->initialize(Lcom/oculus/panelapp/guardian/GuardianPanelApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/guardian/GuardianView;

.field final synthetic val$panelApp:Lcom/oculus/panelapp/guardian/GuardianPanelApp;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/guardian/GuardianView;Lcom/oculus/panelapp/guardian/GuardianPanelApp;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/oculus/panelapp/guardian/GuardianView$1;->this$0:Lcom/oculus/panelapp/guardian/GuardianView;

    iput-object p2, p0, Lcom/oculus/panelapp/guardian/GuardianView$1;->val$panelApp:Lcom/oculus/panelapp/guardian/GuardianPanelApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 28
    iget-object p1, p0, Lcom/oculus/panelapp/guardian/GuardianView$1;->val$panelApp:Lcom/oculus/panelapp/guardian/GuardianPanelApp;

    const-string v0, "quitAndHide"

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/guardian/GuardianPanelApp;->queueRawCommand(Ljava/lang/String;)V

    return-void
.end method
