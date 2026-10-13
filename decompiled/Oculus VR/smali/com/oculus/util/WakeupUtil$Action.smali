.class public final enum Lcom/oculus/util/WakeupUtil$Action;
.super Ljava/lang/Enum;
.source "WakeupUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/util/WakeupUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/util/WakeupUtil$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/util/WakeupUtil$Action;

.field public static final enum DO_LOGGING:Lcom/oculus/util/WakeupUtil$Action;

.field public static final enum FETCH_CONFIG:Lcom/oculus/util/WakeupUtil$Action;

.field public static final enum FETCH_GK:Lcom/oculus/util/WakeupUtil$Action;

.field public static final enum FETCH_QE:Lcom/oculus/util/WakeupUtil$Action;

.field public static final enum ON_LOGOUT:Lcom/oculus/util/WakeupUtil$Action;


# instance fields
.field public final extraKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/oculus/util/WakeupUtil$Action;

    const-string v1, "DO_LOGGING"

    const-string v2, "com.oculus.home.wakeup.logging"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/util/WakeupUtil$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/util/WakeupUtil$Action;->DO_LOGGING:Lcom/oculus/util/WakeupUtil$Action;

    .line 20
    new-instance v0, Lcom/oculus/util/WakeupUtil$Action;

    const-string v1, "FETCH_GK"

    const-string v2, "com.oculus.home.wakeup.gkfetch"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/util/WakeupUtil$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/util/WakeupUtil$Action;->FETCH_GK:Lcom/oculus/util/WakeupUtil$Action;

    .line 21
    new-instance v0, Lcom/oculus/util/WakeupUtil$Action;

    const-string v1, "FETCH_QE"

    const-string v2, "com.oculus.home.wakeup.qefetch"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/util/WakeupUtil$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/util/WakeupUtil$Action;->FETCH_QE:Lcom/oculus/util/WakeupUtil$Action;

    .line 22
    new-instance v0, Lcom/oculus/util/WakeupUtil$Action;

    const-string v1, "ON_LOGOUT"

    const-string v2, "com.oculus.home.wakeup.logout"

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/util/WakeupUtil$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/util/WakeupUtil$Action;->ON_LOGOUT:Lcom/oculus/util/WakeupUtil$Action;

    .line 23
    new-instance v0, Lcom/oculus/util/WakeupUtil$Action;

    const-string v1, "FETCH_CONFIG"

    const-string v2, "com.oculus.home.wakeup.configfetch"

    invoke-direct {v0, v1, v7, v2}, Lcom/oculus/util/WakeupUtil$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/util/WakeupUtil$Action;->FETCH_CONFIG:Lcom/oculus/util/WakeupUtil$Action;

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oculus/util/WakeupUtil$Action;

    sget-object v1, Lcom/oculus/util/WakeupUtil$Action;->DO_LOGGING:Lcom/oculus/util/WakeupUtil$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/util/WakeupUtil$Action;->FETCH_GK:Lcom/oculus/util/WakeupUtil$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/util/WakeupUtil$Action;->FETCH_QE:Lcom/oculus/util/WakeupUtil$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/util/WakeupUtil$Action;->ON_LOGOUT:Lcom/oculus/util/WakeupUtil$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/util/WakeupUtil$Action;->FETCH_CONFIG:Lcom/oculus/util/WakeupUtil$Action;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oculus/util/WakeupUtil$Action;->$VALUES:[Lcom/oculus/util/WakeupUtil$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/oculus/util/WakeupUtil$Action;->extraKey:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/util/WakeupUtil$Action;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/oculus/util/WakeupUtil$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/util/WakeupUtil$Action;

    return-object v0
.end method

.method public static values()[Lcom/oculus/util/WakeupUtil$Action;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/oculus/util/WakeupUtil$Action;->$VALUES:[Lcom/oculus/util/WakeupUtil$Action;

    invoke-virtual {v0}, [Lcom/oculus/util/WakeupUtil$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/util/WakeupUtil$Action;

    return-object v0
.end method
