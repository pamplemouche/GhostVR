.class Lcom/oculus/panelapp/debug/VrCastTab$1;
.super Ljava/lang/Object;
.source "VrCastTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/VrCastTab;->initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/VrCastTab;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/VrCastTab;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastTab$1;->this$0:Lcom/oculus/panelapp/debug/VrCastTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastTab$1;->this$0:Lcom/oculus/panelapp/debug/VrCastTab;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/VrCastTab;->access$000(Lcom/oculus/panelapp/debug/VrCastTab;)Lcom/oculus/panelapp/debug/VrCastManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/VrCastManager;->startDiscovery()V

    return-void
.end method
