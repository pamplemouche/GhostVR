.class Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView$1;
.super Ljava/lang/Object;
.source "AnytimeUIDeviceInfoBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logButtonClick(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "/taskbar"

    invoke-virtual {v0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
