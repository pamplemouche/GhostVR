.class Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$1;
.super Landroid/database/ContentObserver;
.source "AnytimeTabletSettingsViewV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;Landroid/os/Handler;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 44
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->access$000(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;)V

    return-void
.end method
