.class final enum Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;
.super Ljava/lang/Enum;
.source "AnytimeTabletSettingsViewV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SliderFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

.field public static final enum DONT_FORCE_UPDATE:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

.field public static final enum FORCE_UPDATE:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 222
    new-instance v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

    const/4 v1, 0x0

    const-string v2, "FORCE_UPDATE"

    invoke-direct {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;->FORCE_UPDATE:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

    .line 223
    new-instance v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

    const/4 v2, 0x1

    const-string v3, "DONT_FORCE_UPDATE"

    invoke-direct {v0, v3, v2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;->DONT_FORCE_UPDATE:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

    const/4 v0, 0x2

    .line 221
    new-array v0, v0, [Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

    sget-object v3, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;->FORCE_UPDATE:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

    aput-object v3, v0, v1

    sget-object v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;->DONT_FORCE_UPDATE:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;->$VALUES:[Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;
    .locals 1

    .line 221
    const-class v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;
    .locals 1

    .line 221
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;->$VALUES:[Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

    return-object v0
.end method
