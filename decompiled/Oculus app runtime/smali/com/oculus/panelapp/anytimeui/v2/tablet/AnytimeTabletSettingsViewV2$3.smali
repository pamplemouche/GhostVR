.class Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$3;
.super Ljava/lang/Object;
.source "AnytimeTabletSettingsViewV2.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$3;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 90
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$3;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;

    invoke-static {p1, p2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->access$300(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$3;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->access$400(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->access$300(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;I)V

    return-void
.end method
