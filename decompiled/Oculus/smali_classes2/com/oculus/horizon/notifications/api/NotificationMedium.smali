.class public final enum Lcom/oculus/horizon/notifications/api/NotificationMedium;
.super Ljava/lang/Enum;
.source "NotificationMedium.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/notifications/api/NotificationMedium;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/notifications/api/NotificationMedium;

.field public static final enum PUSH:Lcom/oculus/horizon/notifications/api/NotificationMedium;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/oculus/horizon/notifications/api/NotificationMedium;

    const-string v1, "PUSH"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/api/NotificationMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/api/NotificationMedium;->PUSH:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    .line 6
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oculus/horizon/notifications/api/NotificationMedium;

    sget-object v1, Lcom/oculus/horizon/notifications/api/NotificationMedium;->PUSH:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/horizon/notifications/api/NotificationMedium;->$VALUES:[Lcom/oculus/horizon/notifications/api/NotificationMedium;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/notifications/api/NotificationMedium;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/horizon/notifications/api/NotificationMedium;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/notifications/api/NotificationMedium;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/notifications/api/NotificationMedium;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/horizon/notifications/api/NotificationMedium;->$VALUES:[Lcom/oculus/horizon/notifications/api/NotificationMedium;

    invoke-virtual {v0}, [Lcom/oculus/horizon/notifications/api/NotificationMedium;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/notifications/api/NotificationMedium;

    return-object v0
.end method
