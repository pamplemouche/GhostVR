.class Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$8;
.super Ljava/lang/Object;
.source "FeatureFlagsListAdapter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->bindSeekBar(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

.field final synthetic val$setting:Lcom/oculus/panelapp/debug/SettingsIPC$Setting;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$8;->this$1:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$8;->val$setting:Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 331
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$8;->this$1:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->access$900(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 332
    sget-object v0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$1;->$SwitchMap$com$oculus$panelapp$debug$SettingsIPC$SettingType:[I

    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$8;->val$setting:Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    invoke-virtual {v1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getType()Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$8;->val$setting:Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->setSetting(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$8;->val$setting:Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->setSetting(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
