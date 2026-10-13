.class public final enum Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;
.super Ljava/lang/Enum;
.source "LoggingKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/logging/LoggingKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityPrivacyRoadblockEvents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

.field public static final enum CONTINUE:Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

.field public static final enum FINISH:Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

.field public static final enum LEARN_MORE:Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

.field public static final enum SKIP:Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    new-instance v0, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;->CONTINUE:Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    .line 99
    new-instance v0, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    const-string v1, "FINISH"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;->FINISH:Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    .line 100
    new-instance v0, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    const-string v1, "LEARN_MORE"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;->LEARN_MORE:Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    .line 101
    new-instance v0, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    const-string v1, "SKIP"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;->SKIP:Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    sget-object v1, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;->CONTINUE:Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;->FINISH:Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;->LEARN_MORE:Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;->SKIP:Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;->$VALUES:[Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

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
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;
    .locals 1

    .prologue
    .line 97
    const-class v0, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;->$VALUES:[Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    invoke-virtual {v0}, [Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    return-object v0
.end method
