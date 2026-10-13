.class synthetic Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2$1;
.super Ljava/lang/Object;
.source "AnytimeTabletV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$panelapp$anytimeui$v2$tablet$AnytimeTabletV2:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->values()[Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2$1;->$SwitchMap$com$oculus$panelapp$anytimeui$v2$tablet$AnytimeTabletV2:[I

    :try_start_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2$1;->$SwitchMap$com$oculus$panelapp$anytimeui$v2$tablet$AnytimeTabletV2:[I

    sget-object v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->APPS:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2$1;->$SwitchMap$com$oculus$panelapp$anytimeui$v2$tablet$AnytimeTabletV2:[I

    sget-object v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->NOTIFICATIONS:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2$1;->$SwitchMap$com$oculus$panelapp$anytimeui$v2$tablet$AnytimeTabletV2:[I

    sget-object v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->SHARING:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2$1;->$SwitchMap$com$oculus$panelapp$anytimeui$v2$tablet$AnytimeTabletV2:[I

    sget-object v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->SETTINGS:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
