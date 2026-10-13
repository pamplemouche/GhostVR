.class Lcom/oculus/panelapp/debug/ControllerRepairingTab$1;
.super Ljava/lang/Object;
.source "ControllerRepairingTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/ControllerRepairingTab;->initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/ControllerRepairingTab;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/ControllerRepairingTab;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/oculus/panelapp/debug/ControllerRepairingTab$1;->this$0:Lcom/oculus/panelapp/debug/ControllerRepairingTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 42
    invoke-static {}, Lcom/oculus/panelapp/debug/ControllerRepairingTab;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Began repairing process for left controller"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
