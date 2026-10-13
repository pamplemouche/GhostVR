.class public final enum Lcom/oculus/vrshell/notifications/NotificationsType;
.super Ljava/lang/Enum;
.source "NotificationsType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrshell/notifications/NotificationsType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/notifications/NotificationsType;

.field public static final enum ALL:Lcom/oculus/vrshell/notifications/NotificationsType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/vrshell/notifications/NotificationsType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DOWNLOADS:Lcom/oculus/vrshell/notifications/NotificationsType;

.field public static final enum DOWNLOAD_IN_PROGRESS:Lcom/oculus/vrshell/notifications/NotificationsType;

.field public static final enum SOCIAL:Lcom/oculus/vrshell/notifications/NotificationsType;

.field public static final enum SYSTEM:Lcom/oculus/vrshell/notifications/NotificationsType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lcom/oculus/vrshell/notifications/NotificationsType;

    const/4 v1, 0x0

    const-string v2, "ALL"

    invoke-direct {v0, v2, v1}, Lcom/oculus/vrshell/notifications/NotificationsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/notifications/NotificationsType;->ALL:Lcom/oculus/vrshell/notifications/NotificationsType;

    .line 10
    new-instance v0, Lcom/oculus/vrshell/notifications/NotificationsType;

    const/4 v2, 0x1

    const-string v3, "SOCIAL"

    invoke-direct {v0, v3, v2}, Lcom/oculus/vrshell/notifications/NotificationsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/notifications/NotificationsType;->SOCIAL:Lcom/oculus/vrshell/notifications/NotificationsType;

    .line 11
    new-instance v0, Lcom/oculus/vrshell/notifications/NotificationsType;

    const/4 v3, 0x2

    const-string v4, "SYSTEM"

    invoke-direct {v0, v4, v3}, Lcom/oculus/vrshell/notifications/NotificationsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/notifications/NotificationsType;->SYSTEM:Lcom/oculus/vrshell/notifications/NotificationsType;

    .line 12
    new-instance v0, Lcom/oculus/vrshell/notifications/NotificationsType;

    const/4 v4, 0x3

    const-string v5, "DOWNLOADS"

    invoke-direct {v0, v5, v4}, Lcom/oculus/vrshell/notifications/NotificationsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/notifications/NotificationsType;->DOWNLOADS:Lcom/oculus/vrshell/notifications/NotificationsType;

    .line 13
    new-instance v0, Lcom/oculus/vrshell/notifications/NotificationsType;

    const/4 v5, 0x4

    const-string v6, "DOWNLOAD_IN_PROGRESS"

    invoke-direct {v0, v6, v5}, Lcom/oculus/vrshell/notifications/NotificationsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/notifications/NotificationsType;->DOWNLOAD_IN_PROGRESS:Lcom/oculus/vrshell/notifications/NotificationsType;

    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [Lcom/oculus/vrshell/notifications/NotificationsType;

    sget-object v6, Lcom/oculus/vrshell/notifications/NotificationsType;->ALL:Lcom/oculus/vrshell/notifications/NotificationsType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/oculus/vrshell/notifications/NotificationsType;->SOCIAL:Lcom/oculus/vrshell/notifications/NotificationsType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrshell/notifications/NotificationsType;->SYSTEM:Lcom/oculus/vrshell/notifications/NotificationsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrshell/notifications/NotificationsType;->DOWNLOADS:Lcom/oculus/vrshell/notifications/NotificationsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/vrshell/notifications/NotificationsType;->DOWNLOAD_IN_PROGRESS:Lcom/oculus/vrshell/notifications/NotificationsType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/vrshell/notifications/NotificationsType;->$VALUES:[Lcom/oculus/vrshell/notifications/NotificationsType;

    .line 25
    new-instance v0, Lcom/oculus/vrshell/notifications/NotificationsType$1;

    invoke-direct {v0}, Lcom/oculus/vrshell/notifications/NotificationsType$1;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/notifications/NotificationsType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/notifications/NotificationsType;
    .locals 1

    .line 7
    const-class v0, Lcom/oculus/vrshell/notifications/NotificationsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrshell/notifications/NotificationsType;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrshell/notifications/NotificationsType;
    .locals 1

    .line 7
    sget-object v0, Lcom/oculus/vrshell/notifications/NotificationsType;->$VALUES:[Lcom/oculus/vrshell/notifications/NotificationsType;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/notifications/NotificationsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/notifications/NotificationsType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/oculus/vrshell/notifications/NotificationsType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
