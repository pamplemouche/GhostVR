.class public Lcom/oculus/browser/HydraApplication$2;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/HydraApplication;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/HydraApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/HydraApplication$2;->this$0:Lcom/oculus/browser/HydraApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/oculus/browser/HydraApplication$2;->this$0:Lcom/oculus/browser/HydraApplication;

    invoke-static {p1}, Lcom/oculus/browser/HydraApplication;->access$000(Lcom/oculus/browser/HydraApplication;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oculus/browser/PanelApp;

    invoke-virtual {p2}, Lcom/oculus/browser/PanelApp;->suspendAllMediaPlayers()V

    goto :goto_0

    :cond_0
    return-void
.end method
