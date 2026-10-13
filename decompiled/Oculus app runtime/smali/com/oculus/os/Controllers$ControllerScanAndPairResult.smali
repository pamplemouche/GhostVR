.class public final enum Lcom/oculus/os/Controllers$ControllerScanAndPairResult;
.super Ljava/lang/Enum;
.source "Controllers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/os/Controllers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControllerScanAndPairResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/os/Controllers$ControllerScanAndPairResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

.field public static final enum ALREADY_IN_PROGRESS:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

.field public static final enum FAILED_TO_PAIR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

.field public static final enum INTERNAL_ERROR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

.field public static final enum SUCCESS:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

.field public static final enum TIMED_OUT:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

.field public static final enum UNKNOWN_ERROR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 39
    new-instance v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    const/4 v1, 0x0

    const-string v2, "ALREADY_IN_PROGRESS"

    invoke-direct {v0, v2, v1}, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->ALREADY_IN_PROGRESS:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    .line 40
    new-instance v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    const/4 v2, 0x1

    const-string v3, "FAILED_TO_PAIR"

    invoke-direct {v0, v3, v2}, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->FAILED_TO_PAIR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    .line 41
    new-instance v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    const/4 v3, 0x2

    const-string v4, "INTERNAL_ERROR"

    invoke-direct {v0, v4, v3}, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->INTERNAL_ERROR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    .line 42
    new-instance v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    const/4 v4, 0x3

    const-string v5, "SUCCESS"

    invoke-direct {v0, v5, v4}, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->SUCCESS:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    .line 43
    new-instance v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    const/4 v5, 0x4

    const-string v6, "TIMED_OUT"

    invoke-direct {v0, v6, v5}, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->TIMED_OUT:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    .line 44
    new-instance v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    const/4 v6, 0x5

    const-string v7, "UNKNOWN_ERROR"

    invoke-direct {v0, v7, v6}, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->UNKNOWN_ERROR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    const/4 v0, 0x6

    .line 37
    new-array v0, v0, [Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    sget-object v7, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->ALREADY_IN_PROGRESS:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    aput-object v7, v0, v1

    sget-object v1, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->FAILED_TO_PAIR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->INTERNAL_ERROR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->SUCCESS:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->TIMED_OUT:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->UNKNOWN_ERROR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->$VALUES:[Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/os/Controllers$ControllerScanAndPairResult;
    .locals 1

    .line 37
    const-class v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    return-object p0
.end method

.method public static values()[Lcom/oculus/os/Controllers$ControllerScanAndPairResult;
    .locals 1

    .line 37
    sget-object v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->$VALUES:[Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    invoke-virtual {v0}, [Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    return-object v0
.end method
