.class Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$1;
.super Ljava/lang/Object;
.source "AnytimeUIAndroidPanelAppBase.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/AndroidPanelApp$ViewConfigurator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->configureHandLayer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

.field final synthetic val$dialogUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Ljava/lang/String;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$1;->val$dialogUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Landroid/view/View;)V
    .locals 1

    .line 699
    instance-of v0, p1, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    if-eqz v0, :cond_0

    .line 700
    check-cast p1, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$1;->val$dialogUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->configure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
