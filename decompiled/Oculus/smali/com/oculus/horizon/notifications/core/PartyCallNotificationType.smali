.class public final enum Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;
.super Ljava/lang/Enum;
.source "PartyCallNotificationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

.field public static final enum PARTY_CALL:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

.field public static final enum PARTY_CALL_ACCEPT:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

.field public static final enum PARTY_CALL_CANCEL:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

.field public static final enum PARTY_CALL_REJECT:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;


# instance fields
.field public final graphQLName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    const-string v1, "PARTY_CALL"

    const-string v2, "oculus_party_call"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    .line 8
    new-instance v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    const-string v1, "PARTY_CALL_ACCEPT"

    const-string v2, "oculus_party_call_accept"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_ACCEPT:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    .line 9
    new-instance v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    const-string v1, "PARTY_CALL_REJECT"

    const-string v2, "oculus_party_call_reject"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_REJECT:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    .line 10
    new-instance v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    const-string v1, "PARTY_CALL_CANCEL"

    const-string v2, "oculus_party_call_cancel"

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_CANCEL:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    sget-object v1, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_ACCEPT:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_REJECT:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_CANCEL:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->$VALUES:[Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->graphQLName:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static fromGraphQLName(Ljava/lang/String;)Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    .line 33
    :goto_0
    return-object v0

    .line 28
    :cond_0
    sget-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_ACCEPT:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    sget-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_ACCEPT:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    goto :goto_0

    .line 30
    :cond_1
    sget-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_REJECT:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    sget-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_REJECT:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    goto :goto_0

    .line 33
    :cond_2
    sget-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_CANCEL:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    goto :goto_0
.end method

.method public static isPartyCallNotification(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_ACCEPT:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->graphQLName:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_REJECT:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->graphQLName:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_CANCEL:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->graphQLName:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->$VALUES:[Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    invoke-virtual {v0}, [Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    return-object v0
.end method
