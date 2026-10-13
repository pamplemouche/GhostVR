.class public final enum Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;
.super Ljava/lang/Enum;
.source "ReachabilityChecksMutationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReachabilityChecksType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;

.field public static final enum TYPE_NOTIFICATIONS_ENABLED:Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;

.field public static final enum TYPE_PUSH_REACHABLE:Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;

    const-string v1, "TYPE_PUSH_REACHABLE"

    const-string v2, "pushReachable"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;->TYPE_PUSH_REACHABLE:Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;

    .line 11
    new-instance v0, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;

    const-string v1, "TYPE_NOTIFICATIONS_ENABLED"

    const-string v2, "notificationsEnabled"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;->TYPE_NOTIFICATIONS_ENABLED:Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;

    sget-object v1, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;->TYPE_PUSH_REACHABLE:Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;->TYPE_NOTIFICATIONS_ENABLED:Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;->$VALUES:[Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;->text:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;->$VALUES:[Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;

    invoke-virtual {v0}, [Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;->text:Ljava/lang/String;

    return-object v0
.end method
