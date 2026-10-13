.class public final enum Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;
.super Ljava/lang/Enum;
.source "OSUpdaterModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/OSUpdaterModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OSUpdateState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

.field public static final enum STATE_DEVICE_NOT_CONFIGURED_FOR_AB_UPDATES:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

.field public static final enum STATE_NOT_ALLOWED_BY_SYSTEM:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

.field public static final enum STATE_OTA_DISABLED_BY_USER:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

.field public static final enum STATE_READY_TO_CHECK_FOR_OTA:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

.field public static final enum STATE_UNKNOWN:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

.field public static final enum STATE_UPDATE_IN_PROGRESS:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

.field public static final enum STATE_WAITING_FOR_REBOOT:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

.field public static final enum STATE_WIFI_DISABLED:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    const-string v1, "STATE_DEVICE_NOT_CONFIGURED_FOR_AB_UPDATES"

    invoke-direct {v0, v1, v3}, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->STATE_DEVICE_NOT_CONFIGURED_FOR_AB_UPDATES:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    .line 37
    new-instance v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    const-string v1, "STATE_NOT_ALLOWED_BY_SYSTEM"

    invoke-direct {v0, v1, v4}, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->STATE_NOT_ALLOWED_BY_SYSTEM:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    .line 38
    new-instance v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    const-string v1, "STATE_OTA_DISABLED_BY_USER"

    invoke-direct {v0, v1, v5}, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->STATE_OTA_DISABLED_BY_USER:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    .line 39
    new-instance v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    const-string v1, "STATE_READY_TO_CHECK_FOR_OTA"

    invoke-direct {v0, v1, v6}, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->STATE_READY_TO_CHECK_FOR_OTA:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    .line 40
    new-instance v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    const-string v1, "STATE_UNKNOWN"

    invoke-direct {v0, v1, v7}, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->STATE_UNKNOWN:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    .line 41
    new-instance v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    const-string v1, "STATE_UPDATE_IN_PROGRESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->STATE_UPDATE_IN_PROGRESS:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    .line 42
    new-instance v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    const-string v1, "STATE_WAITING_FOR_REBOOT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->STATE_WAITING_FOR_REBOOT:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    .line 43
    new-instance v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    const-string v1, "STATE_WIFI_DISABLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->STATE_WIFI_DISABLED:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    sget-object v1, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->STATE_DEVICE_NOT_CONFIGURED_FOR_AB_UPDATES:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->STATE_NOT_ALLOWED_BY_SYSTEM:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->STATE_OTA_DISABLED_BY_USER:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->STATE_READY_TO_CHECK_FOR_OTA:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->STATE_UNKNOWN:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->STATE_UPDATE_IN_PROGRESS:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->STATE_WAITING_FOR_REBOOT:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->STATE_WIFI_DISABLED:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->$VALUES:[Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    return-object v0
.end method

.method public static values()[Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->$VALUES:[Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    invoke-virtual {v0}, [Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    return-object v0
.end method
