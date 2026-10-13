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
        "Ljava/lang/Enum<",
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
    .locals 12

    .line 15
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const/4 v1, 0x0

    const-string v2, "CONNECTED"

    invoke-direct {v0, v2, v1}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->CONNECTED:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 16
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const/4 v2, 0x1

    const-string v3, "FAIL_ALREADY_IN_PROGRESS"

    invoke-direct {v0, v3, v2}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_ALREADY_IN_PROGRESS:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 17
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const/4 v3, 0x2

    const-string v4, "FAIL_BATTERY_DEAD"

    invoke-direct {v0, v4, v3}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_BATTERY_DEAD:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 18
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const/4 v4, 0x3

    const-string v5, "FAIL_BLOCKED_BY_UPDATE"

    invoke-direct {v0, v5, v4}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_BLOCKED_BY_UPDATE:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 19
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const/4 v5, 0x4

    const-string v6, "FAIL_NOT_PAIRED"

    invoke-direct {v0, v6, v5}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_NOT_PAIRED:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 20
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const/4 v6, 0x5

    const-string v7, "FAIL_SECURITY_ERROR"

    invoke-direct {v0, v7, v6}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_SECURITY_ERROR:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 21
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const/4 v7, 0x6

    const-string v8, "FAIL_TIMED_OUT"

    invoke-direct {v0, v8, v7}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_TIMED_OUT:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 22
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const/4 v8, 0x7

    const-string v9, "FAIL_UNKNOWN_ERROR"

    invoke-direct {v0, v9, v8}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_UNKNOWN_ERROR:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 23
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const/16 v9, 0x8

    const-string v10, "UPDATE_PENDING"

    invoke-direct {v0, v10, v9}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->UPDATE_PENDING:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    .line 24
    new-instance v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const/16 v10, 0x9

    const-string v11, "UPDATING"

    invoke-direct {v0, v11, v10}, Lcom/oculus/os/Controllers$VerifyConnectableResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->UPDATING:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    const/16 v0, 0xa

    .line 13
    new-array v0, v0, [Lcom/oculus/os/Controllers$VerifyConnectableResult;

    sget-object v11, Lcom/oculus/os/Controllers$VerifyConnectableResult;->CONNECTED:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v11, v0, v1

    sget-object v1, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_ALREADY_IN_PROGRESS:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_BATTERY_DEAD:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_BLOCKED_BY_UPDATE:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_NOT_PAIRED:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_SECURITY_ERROR:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_TIMED_OUT:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/os/Controllers$VerifyConnectableResult;->FAIL_UNKNOWN_ERROR:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oculus/os/Controllers$VerifyConnectableResult;->UPDATE_PENDING:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oculus/os/Controllers$VerifyConnectableResult;->UPDATING:Lcom/oculus/os/Controllers$VerifyConnectableResult;

    aput-object v1, v0, v10

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/os/Controllers$VerifyConnectableResult;
    .locals 1

    .line 13
    const-class v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/os/Controllers$VerifyConnectableResult;

    return-object p0
.end method

.method public static values()[Lcom/oculus/os/Controllers$VerifyConnectableResult;
    .locals 1

    .line 13
    sget-object v0, Lcom/oculus/os/Controllers$VerifyConnectableResult;->$VALUES:[Lcom/oculus/os/Controllers$VerifyConnectableResult;

    invoke-virtual {v0}, [Lcom/oculus/os/Controllers$VerifyConnectableResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/os/Controllers$VerifyConnectableResult;

    return-object v0
.end method
