.class Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$2;
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

    .line 67
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$2;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 71
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$2;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;

    sget-object p3, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;->DONT_FORCE_UPDATE:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

    invoke-static {p1, p2, p3}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->access$100(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;ILcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 79
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$2;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->access$200(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;)Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->getBrightness()I

    move-result v0

    sget-object v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;->FORCE_UPDATE:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

    invoke-static {p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->access$100(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;ILcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;)V

    return-void
.end method
