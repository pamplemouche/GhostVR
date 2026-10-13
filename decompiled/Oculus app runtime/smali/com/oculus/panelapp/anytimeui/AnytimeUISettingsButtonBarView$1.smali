.class Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;Landroid/os/Handler;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 47
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->updateVolume()V

    return-void
.end method
