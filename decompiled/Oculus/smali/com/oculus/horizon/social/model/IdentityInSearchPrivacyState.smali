.class public final enum Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;
.super Ljava/lang/Enum;
.source "IdentityInSearchPrivacyState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

.field public static final enum DISABLED:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

.field public static final enum ENABLED:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

.field public static final enum IRRELEVANT:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;


# instance fields
.field public final graphQLName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    const-string v1, "ENABLED"

    const-string v2, "ENABLED"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->ENABLED:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    .line 8
    new-instance v0, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    const-string v1, "DISABLED"

    const-string v2, "DISABLED"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->DISABLED:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    .line 9
    new-instance v0, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    const-string v1, "IRRELEVANT"

    const-string v2, "IRRELEVANT"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->IRRELEVANT:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    sget-object v1, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->ENABLED:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->DISABLED:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->IRRELEVANT:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->$VALUES:[Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->graphQLName:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->$VALUES:[Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    invoke-virtual {v0}, [Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    return-object v0
.end method
