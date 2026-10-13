.class Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$1;
.super Ljava/lang/Object;
.source "AnytimeUIButtonBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logButtonClick(Landroid/view/View;)V

    .line 25
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;

    check-cast p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    return-void
.end method
