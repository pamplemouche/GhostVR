.class public final enum Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;
.super Ljava/lang/Enum;
.source "AutoUpdatesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/autoupdates/AutoUpdatesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoUpdateBlocker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

.field public static final enum BATTERY_TOO_LOW:Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

.field public static final enum DEVICE_IN_USE:Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

.field public static final enum NOT_LOGGED_IN:Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

.field public static final enum PERMISSION_OR_SETTINGS:Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    const-string v1, "NOT_LOGGED_IN"

    invoke-direct {v0, v1, v2}, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;->NOT_LOGGED_IN:Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    .line 79
    new-instance v0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    const-string v1, "PERMISSION_OR_SETTINGS"

    invoke-direct {v0, v1, v3}, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;->PERMISSION_OR_SETTINGS:Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    .line 80
    new-instance v0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    const-string v1, "BATTERY_TOO_LOW"

    invoke-direct {v0, v1, v4}, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;->BATTERY_TOO_LOW:Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    .line 81
    new-instance v0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    const-string v1, "DEVICE_IN_USE"

    invoke-direct {v0, v1, v5}, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;->DEVICE_IN_USE:Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    sget-object v1, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;->NOT_LOGGED_IN:Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;->PERMISSION_OR_SETTINGS:Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;->BATTERY_TOO_LOW:Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;->DEVICE_IN_USE:Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;->$VALUES:[Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    return-object v0
.end method

.method public static values()[Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;->$VALUES:[Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    invoke-virtual {v0}, [Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    return-object v0
.end method
