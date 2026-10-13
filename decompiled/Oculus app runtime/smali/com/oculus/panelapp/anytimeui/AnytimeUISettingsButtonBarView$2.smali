.class Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$2;
.super Landroid/content/BroadcastReceiver;
.source "AnytimeUISettingsButtonBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$2;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$2;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->updateVolume()V

    return-void
.end method
