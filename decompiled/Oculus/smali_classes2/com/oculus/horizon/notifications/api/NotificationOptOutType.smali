.class public final enum Lcom/oculus/horizon/notifications/api/NotificationOptOutType;
.super Ljava/lang/Enum;
.source "NotificationOptOutType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/notifications/api/NotificationOptOutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

.field public static final enum CAMPAIGN:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

.field public static final enum FRIEND_ACTIVITY:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

.field public static final enum FRIEND_ONLINE:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

.field public static final enum FRIEND_ONLINE_BROADCAST:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

.field public static final enum MY_ACTIVITY:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

.field public static final enum SALES_AND_PROMOTIONS:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

.field public static final enum TIPS_AND_REMINDERS:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    const-string v1, "CAMPAIGN"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->CAMPAIGN:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    .line 8
    new-instance v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    const-string v1, "FRIEND_ACTIVITY"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->FRIEND_ACTIVITY:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    .line 9
    new-instance v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    const-string v1, "FRIEND_ONLINE"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->FRIEND_ONLINE:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    .line 10
    new-instance v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    const-string v1, "FRIEND_ONLINE_BROADCAST"

    invoke-direct {v0, v1, v6}, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->FRIEND_ONLINE_BROADCAST:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    .line 11
    new-instance v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    const-string v1, "MY_ACTIVITY"

    invoke-direct {v0, v1, v7}, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->MY_ACTIVITY:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    .line 12
    new-instance v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    const-string v1, "SALES_AND_PROMOTIONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->SALES_AND_PROMOTIONS:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    .line 13
    new-instance v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    const-string v1, "TIPS_AND_REMINDERS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->TIPS_AND_REMINDERS:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    sget-object v1, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->CAMPAIGN:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->FRIEND_ACTIVITY:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->FRIEND_ONLINE:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->FRIEND_ONLINE_BROADCAST:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->MY_ACTIVITY:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->SALES_AND_PROMOTIONS:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->TIPS_AND_REMINDERS:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->$VALUES:[Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/notifications/api/NotificationOptOutType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/notifications/api/NotificationOptOutType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->$VALUES:[Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    invoke-virtual {v0}, [Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    return-object v0
.end method
