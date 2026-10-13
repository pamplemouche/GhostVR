.class public final enum Lcom/oculus/os/Controllers$ControllerStatus;
.super Ljava/lang/Enum;
.source "Controllers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/os/Controllers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControllerStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/os/Controllers$ControllerStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/os/Controllers$ControllerStatus;

.field public static final enum BLOCKED_BATTERY_DEAD:Lcom/oculus/os/Controllers$ControllerStatus;

.field public static final enum BLOCKED_UPDATE_FAILED:Lcom/oculus/os/Controllers$ControllerStatus;

.field public static final enum BLOCKED_UPDATE_REQUIRED:Lcom/oculus/os/Controllers$ControllerStatus;

.field public static final enum CONNECTED:Lcom/oculus/os/Controllers$ControllerStatus;

.field public static final enum DISABLED:Lcom/oculus/os/Controllers$ControllerStatus;

.field public static final enum SEARCHING:Lcom/oculus/os/Controllers$ControllerStatus;

.field public static final enum UNKNOWN_ERROR:Lcom/oculus/os/Controllers$ControllerStatus;

.field public static final enum UPDATING:Lcom/oculus/os/Controllers$ControllerStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 28
    new-instance v0, Lcom/oculus/os/Controllers$ControllerStatus;

    const/4 v1, 0x0

    const-string v2, "BLOCKED_BATTERY_DEAD"

    invoke-direct {v0, v2, v1}, Lcom/oculus/os/Controllers$ControllerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerStatus;->BLOCKED_BATTERY_DEAD:Lcom/oculus/os/Controllers$ControllerStatus;

    .line 29
    new-instance v0, Lcom/oculus/os/Controllers$ControllerStatus;

    const/4 v2, 0x1

    const-string v3, "BLOCKED_UPDATE_FAILED"

    invoke-direct {v0, v3, v2}, Lcom/oculus/os/Controllers$ControllerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerStatus;->BLOCKED_UPDATE_FAILED:Lcom/oculus/os/Controllers$ControllerStatus;

    .line 30
    new-instance v0, Lcom/oculus/os/Controllers$ControllerStatus;

    const/4 v3, 0x2

    const-string v4, "BLOCKED_UPDATE_REQUIRED"

    invoke-direct {v0, v4, v3}, Lcom/oculus/os/Controllers$ControllerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerStatus;->BLOCKED_UPDATE_REQUIRED:Lcom/oculus/os/Controllers$ControllerStatus;

    .line 31
    new-instance v0, Lcom/oculus/os/Controllers$ControllerStatus;

    const/4 v4, 0x3

    const-string v5, "CONNECTED"

    invoke-direct {v0, v5, v4}, Lcom/oculus/os/Controllers$ControllerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerStatus;->CONNECTED:Lcom/oculus/os/Controllers$ControllerStatus;

    .line 32
    new-instance v0, Lcom/oculus/os/Controllers$ControllerStatus;

    const/4 v5, 0x4

    const-string v6, "DISABLED"

    invoke-direct {v0, v6, v5}, Lcom/oculus/os/Controllers$ControllerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerStatus;->DISABLED:Lcom/oculus/os/Controllers$ControllerStatus;

    .line 33
    new-instance v0, Lcom/oculus/os/Controllers$ControllerStatus;

    const/4 v6, 0x5

    const-string v7, "SEARCHING"

    invoke-direct {v0, v7, v6}, Lcom/oculus/os/Controllers$ControllerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerStatus;->SEARCHING:Lcom/oculus/os/Controllers$ControllerStatus;

    .line 34
    new-instance v0, Lcom/oculus/os/Controllers$ControllerStatus;

    const/4 v7, 0x6

    const-string v8, "UNKNOWN_ERROR"

    invoke-direct {v0, v8, v7}, Lcom/oculus/os/Controllers$ControllerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerStatus;->UNKNOWN_ERROR:Lcom/oculus/os/Controllers$ControllerStatus;

    .line 35
    new-instance v0, Lcom/oculus/os/Controllers$ControllerStatus;

    const/4 v8, 0x7

    const-string v9, "UPDATING"

    invoke-direct {v0, v9, v8}, Lcom/oculus/os/Controllers$ControllerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerStatus;->UPDATING:Lcom/oculus/os/Controllers$ControllerStatus;

    const/16 v0, 0x8

    .line 26
    new-array v0, v0, [Lcom/oculus/os/Controllers$ControllerStatus;

    sget-object v9, Lcom/oculus/os/Controllers$ControllerStatus;->BLOCKED_BATTERY_DEAD:Lcom/oculus/os/Controllers$ControllerStatus;

    aput-object v9, v0, v1

    sget-object v1, Lcom/oculus/os/Controllers$ControllerStatus;->BLOCKED_UPDATE_FAILED:Lcom/oculus/os/Controllers$ControllerStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/os/Controllers$ControllerStatus;->BLOCKED_UPDATE_REQUIRED:Lcom/oculus/os/Controllers$ControllerStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/os/Controllers$ControllerStatus;->CONNECTED:Lcom/oculus/os/Controllers$ControllerStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/os/Controllers$ControllerStatus;->DISABLED:Lcom/oculus/os/Controllers$ControllerStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/os/Controllers$ControllerStatus;->SEARCHING:Lcom/oculus/os/Controllers$ControllerStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/os/Controllers$ControllerStatus;->UNKNOWN_ERROR:Lcom/oculus/os/Controllers$ControllerStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/os/Controllers$ControllerStatus;->UPDATING:Lcom/oculus/os/Controllers$ControllerStatus;

    aput-object v1, v0, v8

    sput-object v0, Lcom/oculus/os/Controllers$ControllerStatus;->$VALUES:[Lcom/oculus/os/Controllers$ControllerStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/os/Controllers$ControllerStatus;
    .locals 1

    .line 26
    const-class v0, Lcom/oculus/os/Controllers$ControllerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/os/Controllers$ControllerStatus;

    return-object p0
.end method

.method public static values()[Lcom/oculus/os/Controllers$ControllerStatus;
    .locals 1

    .line 26
    sget-object v0, Lcom/oculus/os/Controllers$ControllerStatus;->$VALUES:[Lcom/oculus/os/Controllers$ControllerStatus;

    invoke-virtual {v0}, [Lcom/oculus/os/Controllers$ControllerStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/os/Controllers$ControllerStatus;

    return-object v0
.end method
