.class synthetic Lcom/oculus/panelapp/debug/FeatureFlagSeekBar$1;
.super Ljava/lang/Object;
.source "FeatureFlagSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$panelapp$debug$SettingsIPC$InputHint:[I

.field static final synthetic $SwitchMap$com$oculus$panelapp$debug$SettingsIPC$SettingType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 70
    invoke-static {}, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->values()[Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar$1;->$SwitchMap$com$oculus$panelapp$debug$SettingsIPC$InputHint:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar$1;->$SwitchMap$com$oculus$panelapp$debug$SettingsIPC$InputHint:[I

    sget-object v2, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->SLIDER_CONTINUOUS:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    invoke-virtual {v2}, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar$1;->$SwitchMap$com$oculus$panelapp$debug$SettingsIPC$InputHint:[I

    sget-object v3, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->SLIDER_DISCRETE:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    invoke-virtual {v3}, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    :catch_1
    invoke-static {}, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->values()[Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar$1;->$SwitchMap$com$oculus$panelapp$debug$SettingsIPC$SettingType:[I

    :try_start_2
    sget-object v2, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar$1;->$SwitchMap$com$oculus$panelapp$debug$SettingsIPC$SettingType:[I

    sget-object v3, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->INTEGER:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    invoke-virtual {v3}, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar$1;->$SwitchMap$com$oculus$panelapp$debug$SettingsIPC$SettingType:[I

    sget-object v2, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->FLOAT:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    invoke-virtual {v2}, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
