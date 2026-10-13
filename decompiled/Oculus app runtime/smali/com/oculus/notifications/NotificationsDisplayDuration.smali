.class public final enum Lcom/oculus/notifications/NotificationsDisplayDuration;
.super Ljava/lang/Enum;
.source "NotificationsDisplayDuration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/notifications/NotificationsDisplayDuration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/notifications/NotificationsDisplayDuration;

.field public static final enum DEFAULT:Lcom/oculus/notifications/NotificationsDisplayDuration;

.field public static final enum LONG:Lcom/oculus/notifications/NotificationsDisplayDuration;

.field public static final enum SHORT:Lcom/oculus/notifications/NotificationsDisplayDuration;


# instance fields
.field public final length:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 6
    new-instance v0, Lcom/oculus/notifications/NotificationsDisplayDuration;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v1, v3}, Lcom/oculus/notifications/NotificationsDisplayDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/notifications/NotificationsDisplayDuration;->DEFAULT:Lcom/oculus/notifications/NotificationsDisplayDuration;

    .line 7
    new-instance v0, Lcom/oculus/notifications/NotificationsDisplayDuration;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-string v4, "SHORT"

    invoke-direct {v0, v4, v3, v2}, Lcom/oculus/notifications/NotificationsDisplayDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/notifications/NotificationsDisplayDuration;->SHORT:Lcom/oculus/notifications/NotificationsDisplayDuration;

    .line 8
    new-instance v0, Lcom/oculus/notifications/NotificationsDisplayDuration;

    const/4 v4, 0x2

    const-string v5, "LONG"

    const/4 v6, 0x7

    invoke-direct {v0, v5, v4, v6}, Lcom/oculus/notifications/NotificationsDisplayDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/notifications/NotificationsDisplayDuration;->LONG:Lcom/oculus/notifications/NotificationsDisplayDuration;

    .line 4
    new-array v0, v2, [Lcom/oculus/notifications/NotificationsDisplayDuration;

    sget-object v2, Lcom/oculus/notifications/NotificationsDisplayDuration;->DEFAULT:Lcom/oculus/notifications/NotificationsDisplayDuration;

    aput-object v2, v0, v1

    sget-object v1, Lcom/oculus/notifications/NotificationsDisplayDuration;->SHORT:Lcom/oculus/notifications/NotificationsDisplayDuration;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/notifications/NotificationsDisplayDuration;->LONG:Lcom/oculus/notifications/NotificationsDisplayDuration;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/notifications/NotificationsDisplayDuration;->$VALUES:[Lcom/oculus/notifications/NotificationsDisplayDuration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/oculus/notifications/NotificationsDisplayDuration;->length:I

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/oculus/notifications/NotificationsDisplayDuration;
    .locals 5

    .line 15
    invoke-static {}, Lcom/oculus/notifications/NotificationsDisplayDuration;->values()[Lcom/oculus/notifications/NotificationsDisplayDuration;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 16
    invoke-virtual {v3}, Lcom/oculus/notifications/NotificationsDisplayDuration;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_1
    sget-object p0, Lcom/oculus/notifications/NotificationsDisplayDuration;->DEFAULT:Lcom/oculus/notifications/NotificationsDisplayDuration;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/notifications/NotificationsDisplayDuration;
    .locals 1

    .line 4
    const-class v0, Lcom/oculus/notifications/NotificationsDisplayDuration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/notifications/NotificationsDisplayDuration;

    return-object p0
.end method

.method public static values()[Lcom/oculus/notifications/NotificationsDisplayDuration;
    .locals 1

    .line 4
    sget-object v0, Lcom/oculus/notifications/NotificationsDisplayDuration;->$VALUES:[Lcom/oculus/notifications/NotificationsDisplayDuration;

    invoke-virtual {v0}, [Lcom/oculus/notifications/NotificationsDisplayDuration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/notifications/NotificationsDisplayDuration;

    return-object v0
.end method
