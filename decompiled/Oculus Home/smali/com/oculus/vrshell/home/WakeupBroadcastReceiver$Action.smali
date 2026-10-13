.class public final enum Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;
.super Ljava/lang/Enum;
.source "WakeupBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/home/WakeupBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

.field public static final enum DO_LOGGING:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

.field public static final enum FETCH_CONFIG:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

.field public static final enum FETCH_GK:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

.field public static final enum FETCH_QE:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

.field public static final enum ON_LOGOUT:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;


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

    .line 41
    new-instance v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    const-string v1, "DO_LOGGING"

    const-string v2, "com.oculus.home.wakeup.logging"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->DO_LOGGING:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    .line 42
    new-instance v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    const-string v1, "FETCH_GK"

    const-string v2, "com.oculus.home.wakeup.gkfetch"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->FETCH_GK:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    .line 43
    new-instance v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    const-string v1, "FETCH_QE"

    const-string v2, "com.oculus.home.wakeup.qefetch"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->FETCH_QE:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    .line 44
    new-instance v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    const-string v1, "ON_LOGOUT"

    const-string v2, "com.oculus.home.wakeup.logout"

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->ON_LOGOUT:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    .line 45
    new-instance v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    const-string v1, "FETCH_CONFIG"

    const-string v2, "com.oculus.home.wakeup.configfetch"

    invoke-direct {v0, v1, v7, v2}, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->FETCH_CONFIG:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    sget-object v1, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->DO_LOGGING:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->FETCH_GK:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->FETCH_QE:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->ON_LOGOUT:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->FETCH_CONFIG:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->$VALUES:[Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->extraKey:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    return-object v0
.end method

.method public static values()[Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->$VALUES:[Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    return-object v0
.end method
