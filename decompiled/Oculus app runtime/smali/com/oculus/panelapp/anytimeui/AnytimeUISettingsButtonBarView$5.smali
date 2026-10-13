.class synthetic Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$5;
.super Ljava/lang/Object;
.source "AnytimeUISettingsButtonBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$panelapp$anytimeui$AnytimeUISettingsButtonBarView$SliderMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->values()[Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$5;->$SwitchMap$com$oculus$panelapp$anytimeui$AnytimeUISettingsButtonBarView$SliderMode:[I

    :try_start_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$5;->$SwitchMap$com$oculus$panelapp$anytimeui$AnytimeUISettingsButtonBarView$SliderMode:[I

    sget-object v1, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->VOLUME:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$5;->$SwitchMap$com$oculus$panelapp$anytimeui$AnytimeUISettingsButtonBarView$SliderMode:[I

    sget-object v1, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->BRIGHTNESS:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
