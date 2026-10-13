.class public final enum Lcom/oculus/os/Controllers$VerifyConnectableResult;
.super Ljava/lang/Enum;
.source "Controllers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/os/Controllers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerifyConnectableResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/os/Controllers$VerifyConnectableResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/os/Controllers$VerifyConnectableResult;

.field public static final enum CONNECTED:Lcom/oculus/os/Controllers$VerifyConnectableResult;

.field public static final enum FAIL_ALREADY_IN_PROGRESS:Lcom/oculus/os/Controllers$VerifyConnectableResult;

.field public static final enum FAIL_BATTERY_DEAD:Lcom/oculus/os/Controllers$VerifyConnectableResult;

.field public static final enum FAIL_BLOCKED_BY_UPDATE:Lcom/oculus/os/Controllers$VerifyConnectableResult;

.field public static final enum FAIL_NOT_PAIRED:Lcom/oculus/os/Controllers$VerifyConnectableResult;

.field public static final enum FAIL_SECURITY_ERROR:Lcom/oculus/os/Controllers$VerifyConnectableResult;

.field public static final enum FAIL_TIMED_OUT:Lcom/oculus/os/Controllers$VerifyConnectableResult;

.field public static final enum FAIL_UNKNOWN_ERROR:Lcom/oculus/os/Controllers$VerifyConnectableResult;

.field public static final enum UPDATE_PENDING:Lcom/oculus/os/Controllers$VerifyConnectableResult;

.field public static final enum UPDATING:Lcom/oculus/os/Controllers$VerifyConnectableResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->CONNECTED:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 16
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const-string v1, "FAIL_ALREADY_IN_PROGRESS"

    invoke-direct {v0, v1, v4}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_ALREADY_IN_PROGRESS:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 17
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const-string v1, "FAIL_BATTERY_DEAD"

    invoke-direct {v0, v1, v5}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_BATTERY_DEAD:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 18
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const-string v1, "FAIL_BLOCKED_BY_UPDATE"

    invoke-direct {v0, v1, v6}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_BLOCKED_BY_UPDATE:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 19
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const-string v1, "FAIL_NOT_PAIRED"

    invoke-direct {v0, v1, v7}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_NOT_PAIRED:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 20
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const-string v1, "FAIL_SECURITY_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_SECURITY_ERROR:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 21
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const-string v1, "FAIL_TIMED_OUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_TIMED_OUT:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 22
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const-string v1, "FAIL_UNKNOWN_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_UNKNOWN_ERROR:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 23
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const-string v1, "UPDATE_PENDING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->UPDATE_PENDING:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 24
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const-string v1, "UPDATING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->UPDATING:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 13
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/oculus/os/Controllers$VerifyConnectableResult;

    sget-object v1, Lcom/oculus/os/Controllers$VerifyConnectableResult;->CONNECTED:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_ALREADY_IN_PROGRESS:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_BATTERY_DEAD:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_BLOCKED_BY_UPDATE:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_NOT_PAIRED:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_SECURITY_ERROR:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_TIMED_OUT:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_UNKNOWN_ERROR:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/os/Controllers$VerifyConnectableResult;->UPDATE_PENDING:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/os/Controllers$VerifyConnectableResult;->UPDATING:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->$VALUES:[Lcom/oculus/os/Controllers$VerifyConnectableResult;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/os/Controllers$VerifyConnectableResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    return-object v0
.end method

.method public static values()[Lcom/oculus/os/Controllers$VerifyConnectableResult;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->$VALUES:[Lcom/oculus/os/Controllers$VerifyConnectableResult;

    invoke-virtual {v0}, [Lcom/oculus/os/Controllers$VerifyConnectableResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/os/Controllers$VerifyConnectableResult;

    return-object v0
.end method
