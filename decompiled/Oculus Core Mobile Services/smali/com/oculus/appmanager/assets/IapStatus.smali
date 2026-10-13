.class public final enum Lcom/oculus/appmanager/assets/IapStatus;
.super Ljava/lang/Enum;
.source "IapStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/appmanager/assets/IapStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/appmanager/assets/IapStatus;

.field public static final enum ENTITLED:Lcom/oculus/appmanager/assets/IapStatus;

.field public static final enum FREE:Lcom/oculus/appmanager/assets/IapStatus;

.field public static final enum NOT_ENTITLED:Lcom/oculus/appmanager/assets/IapStatus;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/oculus/appmanager/assets/IapStatus;

    const-string v1, "FREE"

    const-string v2, "free"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/appmanager/assets/IapStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/assets/IapStatus;->FREE:Lcom/oculus/appmanager/assets/IapStatus;

    .line 7
    new-instance v0, Lcom/oculus/appmanager/assets/IapStatus;

    const-string v1, "ENTITLED"

    const-string v2, "entitled"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/appmanager/assets/IapStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/assets/IapStatus;->ENTITLED:Lcom/oculus/appmanager/assets/IapStatus;

    .line 8
    new-instance v0, Lcom/oculus/appmanager/assets/IapStatus;

    const-string v1, "NOT_ENTITLED"

    const-string v2, "not-entitled"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/appmanager/assets/IapStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/assets/IapStatus;->NOT_ENTITLED:Lcom/oculus/appmanager/assets/IapStatus;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/appmanager/assets/IapStatus;

    sget-object v1, Lcom/oculus/appmanager/assets/IapStatus;->FREE:Lcom/oculus/appmanager/assets/IapStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/appmanager/assets/IapStatus;->ENTITLED:Lcom/oculus/appmanager/assets/IapStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/appmanager/assets/IapStatus;->NOT_ENTITLED:Lcom/oculus/appmanager/assets/IapStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/appmanager/assets/IapStatus;->$VALUES:[Lcom/oculus/appmanager/assets/IapStatus;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/oculus/appmanager/assets/IapStatus;->value:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/assets/IapStatus;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/oculus/appmanager/assets/IapStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/assets/IapStatus;

    return-object v0
.end method

.method public static values()[Lcom/oculus/appmanager/assets/IapStatus;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/appmanager/assets/IapStatus;->$VALUES:[Lcom/oculus/appmanager/assets/IapStatus;

    invoke-virtual {v0}, [Lcom/oculus/appmanager/assets/IapStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/appmanager/assets/IapStatus;

    return-object v0
.end method
