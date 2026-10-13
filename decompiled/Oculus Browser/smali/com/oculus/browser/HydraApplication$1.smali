.class public Lcom/oculus/browser/HydraApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/HydraApplication;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/HydraApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/HydraApplication$1;->this$0:Lcom/oculus/browser/HydraApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "response_permission"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "results_permission"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication$1;->this$0:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/browser/HydraApplication;->onRequestPanelPermissionsResult([Ljava/lang/String;[I)V

    return-void
.end method
