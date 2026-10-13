.class public final enum Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;
.super Ljava/lang/Enum;
.source "LoggingKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/logging/LoggingKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FBLoginFlow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

.field public static final enum SDK:Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

.field public static final enum SSO:Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 283
    new-instance v0, Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    const-string v1, "SSO"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;->SSO:Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    .line 284
    new-instance v0, Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    const-string v1, "SDK"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;->SDK:Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    .line 282
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    sget-object v1, Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;->SSO:Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;->SDK:Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;->$VALUES:[Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

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
    .line 282
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;
    .locals 1

    .prologue
    .line 282
    const-class v0, Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;->$VALUES:[Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    invoke-virtual {v0}, [Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/logging/LoggingKeys$FBLoginFlow;

    return-object v0
.end method
