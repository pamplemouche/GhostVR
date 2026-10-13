.class public final enum Lcom/oculus/horizon/social/model/PrivacyState;
.super Ljava/lang/Enum;
.source "PrivacyState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/social/model/PrivacyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/social/model/PrivacyState;

.field public static final enum ANYONE:Lcom/oculus/horizon/social/model/PrivacyState;

.field public static final enum FRIENDS:Lcom/oculus/horizon/social/model/PrivacyState;

.field public static final enum SELF:Lcom/oculus/horizon/social/model/PrivacyState;

.field public static final enum SPECIFIC_FRIENDS:Lcom/oculus/horizon/social/model/PrivacyState;


# instance fields
.field public final graphQLName:Ljava/lang/String;

.field public final usesIncludedFriends:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 9
    new-instance v0, Lcom/oculus/horizon/social/model/PrivacyState;

    const-string v1, "ANYONE"

    const-string v2, "ANYONE"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/social/model/PrivacyState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/social/model/PrivacyState;->ANYONE:Lcom/oculus/horizon/social/model/PrivacyState;

    .line 12
    new-instance v0, Lcom/oculus/horizon/social/model/PrivacyState;

    const-string v1, "FRIENDS"

    const-string v2, "FRIENDS"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/social/model/PrivacyState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/social/model/PrivacyState;->FRIENDS:Lcom/oculus/horizon/social/model/PrivacyState;

    .line 15
    new-instance v0, Lcom/oculus/horizon/social/model/PrivacyState;

    const-string v1, "SPECIFIC_FRIENDS"

    const-string v2, "SPECIFIC_FRIENDS"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/oculus/horizon/social/model/PrivacyState;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/oculus/horizon/social/model/PrivacyState;->SPECIFIC_FRIENDS:Lcom/oculus/horizon/social/model/PrivacyState;

    .line 18
    new-instance v0, Lcom/oculus/horizon/social/model/PrivacyState;

    const-string v1, "SELF"

    const-string v2, "SELF"

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/horizon/social/model/PrivacyState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/social/model/PrivacyState;->SELF:Lcom/oculus/horizon/social/model/PrivacyState;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/horizon/social/model/PrivacyState;

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->ANYONE:Lcom/oculus/horizon/social/model/PrivacyState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->FRIENDS:Lcom/oculus/horizon/social/model/PrivacyState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->SPECIFIC_FRIENDS:Lcom/oculus/horizon/social/model/PrivacyState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->SELF:Lcom/oculus/horizon/social/model/PrivacyState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oculus/horizon/social/model/PrivacyState;->$VALUES:[Lcom/oculus/horizon/social/model/PrivacyState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oculus/horizon/social/model/PrivacyState;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 25
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/oculus/horizon/social/model/PrivacyState;->graphQLName:Ljava/lang/String;

    .line 29
    iput-boolean p4, p0, Lcom/oculus/horizon/social/model/PrivacyState;->usesIncludedFriends:Z

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/social/model/PrivacyState;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/horizon/social/model/PrivacyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/social/model/PrivacyState;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/social/model/PrivacyState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/horizon/social/model/PrivacyState;->$VALUES:[Lcom/oculus/horizon/social/model/PrivacyState;

    invoke-virtual {v0}, [Lcom/oculus/horizon/social/model/PrivacyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/social/model/PrivacyState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/social/model/PrivacyState;->graphQLName:Ljava/lang/String;

    return-object v0
.end method
