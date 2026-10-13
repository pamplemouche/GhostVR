.class Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$2;
.super Ljava/lang/Object;
.source "AnytimeUIDeviceInfoBarViewBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
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

    .line 125
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$2;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 129
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$2;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isStandaloneVr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$2;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_BUGREPORTER_V2_ENABLED:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 130
    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$2;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/os/BugReporter2;->createBugReport(Landroid/content/Context;)Lcom/oculus/os/BugReporter2;

    move-result-object p1

    if-nez p1, :cond_0

    .line 133
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to create bug report"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p1, v0}, Lcom/oculus/os/BugReporter2;->storeScreenshot(Landroid/graphics/Bitmap;)V

    .line 143
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$2;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "AUI_ICON"

    .line 145
    invoke-virtual {p1, v2, v0}, Lcom/oculus/os/BugReporter2;->getLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 144
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 154
    :cond_1
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyymmddhhmmss"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$2;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v1, Lcom/oculus/vrshell/SystemUXRoute;->BUG_REPORT:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.oculus.vrshell/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Lcom/oculus/vrshell/SystemUXRoute;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
