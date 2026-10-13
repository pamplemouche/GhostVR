.class public final Lcom/oculus/vrshell/timer/TimeServiceElapsedRealtime;
.super Ljava/lang/Object;
.source "TimeServiceElapsedRealtime.java"

# interfaces
.implements Lcom/oculus/vrshell/timer/TimeService;


# static fields
.field private static final sInstance:Lcom/oculus/vrshell/timer/TimeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/oculus/vrshell/timer/TimeServiceElapsedRealtime;

    invoke-direct {v0}, Lcom/oculus/vrshell/timer/TimeServiceElapsedRealtime;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/timer/TimeServiceElapsedRealtime;->sInstance:Lcom/oculus/vrshell/timer/TimeService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oculus/vrshell/timer/TimeService;
    .locals 1

    .line 14
    sget-object v0, Lcom/oculus/vrshell/timer/TimeServiceElapsedRealtime;->sInstance:Lcom/oculus/vrshell/timer/TimeService;

    return-object v0
.end method


# virtual methods
.method public getCurrentMs()J
    .locals 2

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
