.class Lcom/oculus/panelapp/debug/ControlTab$10;
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

    .line 165
    iput-object p1, p0, Lcom/oculus/panelapp/debug/ControlTab$10;->this$0:Lcom/oculus/panelapp/debug/ControlTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 168
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ControlTab$10;->this$0:Lcom/oculus/panelapp/debug/ControlTab;

    .line 169
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/ControlTab;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/oculus/vrshell/VrShellConst;->LAST_VOICE_PROMPT_TOAST:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-wide/16 v1, 0x0

    .line 168
    invoke-static {p1, v0, v1, v2}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->putLong(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;J)V

    .line 170
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ControlTab$10;->this$0:Lcom/oculus/panelapp/debug/ControlTab;

    .line 171
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/ControlTab;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/oculus/vrshell/VrShellConst;->LAST_VOICE_VOLUME_PROMPT_TOAST:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 170
    invoke-static {p1, v0, v1, v2}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->putLong(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;J)V

    return-void
.end method
