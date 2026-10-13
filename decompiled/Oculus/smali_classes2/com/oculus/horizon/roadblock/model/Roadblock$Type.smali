.class public final enum Lcom/oculus/horizon/roadblock/model/Roadblock$Type;
.super Ljava/lang/Enum;
.source "Roadblock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/roadblock/model/Roadblock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/roadblock/model/Roadblock$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

.field public static final enum ACTIVITY_PRIVACY_UPDATE:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

.field public static final enum FIND_FRIENDS:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

.field public static final enum FORCE_UPGRADE:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

.field public static final enum HSW:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

.field public static final enum MALIBU_CONTROLLER:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

.field public static final enum PAYMENT_METHODS:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

.field public static final enum PRIVACY:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

.field public static final enum PROFILE_PICTURE:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

.field public static final enum PROFILE_PICTURE_INTRO:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;


# instance fields
.field private loggingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    new-instance v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    const-string v1, "FIND_FRIENDS"

    const-string v2, "find_friends"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->FIND_FRIENDS:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    .line 19
    new-instance v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    const-string v1, "FORCE_UPGRADE"

    const-string v2, "force_upgrade"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->FORCE_UPGRADE:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    .line 20
    new-instance v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    const-string v1, "PAYMENT_METHODS"

    const-string v2, "payment_methods"

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->PAYMENT_METHODS:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    .line 21
    new-instance v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    const-string v1, "PRIVACY"

    const-string v2, "privacy"

    invoke-direct {v0, v1, v7, v2}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->PRIVACY:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    .line 22
    new-instance v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    const-string v1, "PROFILE_PICTURE_INTRO"

    const-string v2, "profile_picture_intro"

    invoke-direct {v0, v1, v8, v2}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->PROFILE_PICTURE_INTRO:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    .line 23
    new-instance v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    const-string v1, "PROFILE_PICTURE"

    const/4 v2, 0x5

    const-string v3, "profile_picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->PROFILE_PICTURE:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    .line 24
    new-instance v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    const-string v1, "ACTIVITY_PRIVACY_UPDATE"

    const/4 v2, 0x6

    const-string v3, "activity_privacy_update"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->ACTIVITY_PRIVACY_UPDATE:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    .line 25
    new-instance v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    const-string v1, "HSW"

    const/4 v2, 0x7

    const-string v3, "hsw"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->HSW:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    .line 26
    new-instance v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    const-string v1, "MALIBU_CONTROLLER"

    const/16 v2, 0x8

    const-string v3, "malibu_controller"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->MALIBU_CONTROLLER:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    .line 17
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    sget-object v1, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->FIND_FRIENDS:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->FORCE_UPGRADE:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->PAYMENT_METHODS:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->PRIVACY:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->PROFILE_PICTURE_INTRO:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->PROFILE_PICTURE:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->ACTIVITY_PRIVACY_UPDATE:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->HSW:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->MALIBU_CONTROLLER:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->$VALUES:[Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->loggingName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/roadblock/model/Roadblock$Type;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/roadblock/model/Roadblock$Type;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->$VALUES:[Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    invoke-virtual {v0}, [Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->loggingName:Ljava/lang/String;

    return-object v0
.end method
