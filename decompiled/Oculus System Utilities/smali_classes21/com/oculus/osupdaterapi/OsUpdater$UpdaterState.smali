.class public final enum Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
.super Ljava/lang/Enum;
.source "OsUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/osupdaterapi/OsUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdaterState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

.field public static final enum STATE_DEVICE_NOT_CONFIGURED_FOR_AB_UPDATES:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

.field public static final enum STATE_NOT_ALLOWED_BY_SYSTEM:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

.field public static final enum STATE_OTA_DISABLED_BY_USER:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

.field public static final enum STATE_READY_TO_CHECK_FOR_OTA:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

.field public static final enum STATE_UNKNOWN:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

.field public static final enum STATE_UPDATE_IN_PROGRESS:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

.field public static final enum STATE_WAITING_FOR_REBOOT:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

.field public static final enum STATE_WIFI_DISABLED:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    const-string v1, "STATE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_UNKNOWN:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 11
    new-instance v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    const-string v1, "STATE_READY_TO_CHECK_FOR_OTA"

    invoke-direct {v0, v1, v4}, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_READY_TO_CHECK_FOR_OTA:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 12
    new-instance v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    const-string v1, "STATE_WAITING_FOR_REBOOT"

    invoke-direct {v0, v1, v5}, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_WAITING_FOR_REBOOT:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 13
    new-instance v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    const-string v1, "STATE_UPDATE_IN_PROGRESS"

    invoke-direct {v0, v1, v6}, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_UPDATE_IN_PROGRESS:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 14
    new-instance v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    const-string v1, "STATE_OTA_DISABLED_BY_USER"

    invoke-direct {v0, v1, v7}, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_OTA_DISABLED_BY_USER:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 15
    new-instance v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    const-string v1, "STATE_NOT_ALLOWED_BY_SYSTEM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_NOT_ALLOWED_BY_SYSTEM:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 16
    new-instance v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    const-string v1, "STATE_DEVICE_NOT_CONFIGURED_FOR_AB_UPDATES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_DEVICE_NOT_CONFIGURED_FOR_AB_UPDATES:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 17
    new-instance v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    const-string v1, "STATE_WIFI_DISABLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_WIFI_DISABLED:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    sget-object v1, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_UNKNOWN:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_READY_TO_CHECK_FOR_OTA:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_WAITING_FOR_REBOOT:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_UPDATE_IN_PROGRESS:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_OTA_DISABLED_BY_USER:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_NOT_ALLOWED_BY_SYSTEM:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_DEVICE_NOT_CONFIGURED_FOR_AB_UPDATES:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_WIFI_DISABLED:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->$VALUES:[Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    return-object v0
.end method

.method public static values()[Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->$VALUES:[Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    invoke-virtual {v0}, [Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    return-object v0
.end method
