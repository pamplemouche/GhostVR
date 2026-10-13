.class Lcom/oculus/panelapp/debug/ControlTab$7;
.super Ljava/lang/Object;
.source "ControlTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/ControlTab;->initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/ControlTab;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/ControlTab;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/oculus/panelapp/debug/ControlTab$7;->this$0:Lcom/oculus/panelapp/debug/ControlTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 127
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ControlTab$7;->this$0:Lcom/oculus/panelapp/debug/ControlTab;

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/ControlTab;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/oculus/vrshell/VrShellConst;->SEEN_TV_BADGE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->putBoolean(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    return-void
.end method
