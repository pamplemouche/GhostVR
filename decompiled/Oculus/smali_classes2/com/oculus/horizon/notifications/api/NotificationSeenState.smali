.class public final enum Lcom/oculus/horizon/notifications/api/NotificationSeenState;
.super Ljava/lang/Enum;
.source "NotificationSeenState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/notifications/api/NotificationSeenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/notifications/api/NotificationSeenState;

.field public static final enum SEEN_AND_READ:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

.field public static final enum SEEN_BUT_UNREAD:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

.field public static final enum UNSEEN_AND_UNREAD:Lcom/oculus/horizon/notifications/api/NotificationSeenState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    const-string v1, "UNSEEN_AND_UNREAD"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/api/NotificationSeenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/api/NotificationSeenState;->UNSEEN_AND_UNREAD:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    .line 7
    new-instance v0, Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    const-string v1, "SEEN_BUT_UNREAD"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/notifications/api/NotificationSeenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/api/NotificationSeenState;->SEEN_BUT_UNREAD:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    .line 8
    new-instance v0, Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    const-string v1, "SEEN_AND_READ"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/notifications/api/NotificationSeenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/api/NotificationSeenState;->SEEN_AND_READ:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    sget-object v1, Lcom/oculus/horizon/notifications/api/NotificationSeenState;->UNSEEN_AND_UNREAD:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/notifications/api/NotificationSeenState;->SEEN_BUT_UNREAD:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/notifications/api/NotificationSeenState;->SEEN_AND_READ:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/horizon/notifications/api/NotificationSeenState;->$VALUES:[Lcom/oculus/horizon/notifications/api/NotificationSeenState;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/notifications/api/NotificationSeenState;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/notifications/api/NotificationSeenState;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/horizon/notifications/api/NotificationSeenState;->$VALUES:[Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    invoke-virtual {v0}, [Lcom/oculus/horizon/notifications/api/NotificationSeenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    return-object v0
.end method
