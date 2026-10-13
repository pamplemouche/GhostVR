.class public final enum Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;
.super Ljava/lang/Enum;
.source "AnytimeTabletV2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

.field public static final enum APPS:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

.field public static final enum NOTIFICATIONS:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

.field public static final enum SETTINGS:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

.field public static final enum SHARING:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    const/4 v1, 0x0

    const-string v2, "APPS"

    invoke-direct {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->APPS:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    .line 8
    new-instance v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    const/4 v2, 0x1

    const-string v3, "NOTIFICATIONS"

    invoke-direct {v0, v3, v2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->NOTIFICATIONS:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    .line 9
    new-instance v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    const/4 v3, 0x2

    const-string v4, "SHARING"

    invoke-direct {v0, v4, v3}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->SHARING:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    .line 10
    new-instance v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    const/4 v4, 0x3

    const-string v5, "SETTINGS"

    invoke-direct {v0, v5, v4}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->SETTINGS:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    sget-object v5, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->APPS:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    aput-object v5, v0, v1

    sget-object v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->NOTIFICATIONS:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->SHARING:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->SETTINGS:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->$VALUES:[Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getResourceIdForTablet(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;)I
    .locals 3

    .line 13
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2$1;->$SwitchMap$com$oculus$panelapp$anytimeui$v2$tablet$AnytimeTabletV2:[I

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 24
    sget p0, Lcom/oculus/panelapp/anytimeui/R$layout;->anytime_tablet_settings_view_v2:I

    return p0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized anytime tablet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    sget p0, Lcom/oculus/panelapp/anytimeui/R$layout;->anytime_tablet_sharing_view_v2:I

    return p0

    .line 18
    :cond_2
    sget p0, Lcom/oculus/panelapp/anytimeui/R$layout;->anytime_tablet_notifications_view_v2:I

    return p0

    .line 15
    :cond_3
    sget p0, Lcom/oculus/panelapp/anytimeui/R$layout;->anytime_tablet_apps_view_v2:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;
    .locals 1

    .line 6
    const-class v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;
    .locals 1

    .line 6
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->$VALUES:[Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    return-object v0
.end method
