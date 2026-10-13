.class Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$4;
.super Ljava/lang/Object;
.source "AnytimeUIDeviceInfoBarViewBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->enableDebugIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$4;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 209
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$4;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const-string v0, "com.oculus.vrshell/com.oculus.panelapp.debug.ShellDebugPanelService"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
