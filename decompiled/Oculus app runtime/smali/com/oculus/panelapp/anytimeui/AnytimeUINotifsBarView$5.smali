.class Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$5;
.super Ljava/lang/Object;
.source "AnytimeUINotifsBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->enableAllNotificationsButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

.field final synthetic val$btn:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$5;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$5;->val$btn:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 236
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$5;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$5;->val$btn:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
