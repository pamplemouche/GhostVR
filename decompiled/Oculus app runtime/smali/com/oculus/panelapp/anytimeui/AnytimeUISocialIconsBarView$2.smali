.class synthetic Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$2;
.super Ljava/lang/Object;
.source "AnytimeUISocialIconsBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$panelapp$anytimeui$AnytimeUISocialIconsBarView$DialogType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 227
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->values()[Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$2;->$SwitchMap$com$oculus$panelapp$anytimeui$AnytimeUISocialIconsBarView$DialogType:[I

    :try_start_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$2;->$SwitchMap$com$oculus$panelapp$anytimeui$AnytimeUISocialIconsBarView$DialogType:[I

    sget-object v1, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->INVITE:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$2;->$SwitchMap$com$oculus$panelapp$anytimeui$AnytimeUISocialIconsBarView$DialogType:[I

    sget-object v1, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->PARTY_MANAGEMENT:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$2;->$SwitchMap$com$oculus$panelapp$anytimeui$AnytimeUISocialIconsBarView$DialogType:[I

    sget-object v1, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->PROFILE:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
