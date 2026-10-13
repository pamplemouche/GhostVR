.class public final enum Lcom/oculus/horizon/social/model/PrivacyConcept;
.super Ljava/lang/Enum;
.source "PrivacyConcept.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/social/model/PrivacyConcept;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/social/model/PrivacyConcept;

.field public static final enum ACTIVITY:Lcom/oculus/horizon/social/model/PrivacyConcept;

.field public static final enum FRIENDS:Lcom/oculus/horizon/social/model/PrivacyConcept;

.field public static final enum PROFILE:Lcom/oculus/horizon/social/model/PrivacyConcept;


# instance fields
.field public final graphQLName:Ljava/lang/String;

.field public final usesIdentityInSearch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 9
    new-instance v0, Lcom/oculus/horizon/social/model/PrivacyConcept;

    const-string v1, "PROFILE"

    const-string v2, "REAL_WORLD_IDENTITY"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/oculus/horizon/social/model/PrivacyConcept;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/oculus/horizon/social/model/PrivacyConcept;->PROFILE:Lcom/oculus/horizon/social/model/PrivacyConcept;

    .line 12
    new-instance v0, Lcom/oculus/horizon/social/model/PrivacyConcept;

    const-string v1, "ACTIVITY"

    const-string v2, "CURRENT_ACTIVITY"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/social/model/PrivacyConcept;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/social/model/PrivacyConcept;->ACTIVITY:Lcom/oculus/horizon/social/model/PrivacyConcept;

    .line 15
    new-instance v0, Lcom/oculus/horizon/social/model/PrivacyConcept;

    const-string v1, "FRIENDS"

    const-string v2, "FRIENDS"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/social/model/PrivacyConcept;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/social/model/PrivacyConcept;->FRIENDS:Lcom/oculus/horizon/social/model/PrivacyConcept;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/social/model/PrivacyConcept;

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyConcept;->PROFILE:Lcom/oculus/horizon/social/model/PrivacyConcept;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyConcept;->ACTIVITY:Lcom/oculus/horizon/social/model/PrivacyConcept;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyConcept;->FRIENDS:Lcom/oculus/horizon/social/model/PrivacyConcept;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/social/model/PrivacyConcept;->$VALUES:[Lcom/oculus/horizon/social/model/PrivacyConcept;

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
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oculus/horizon/social/model/PrivacyConcept;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 22
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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/oculus/horizon/social/model/PrivacyConcept;->graphQLName:Ljava/lang/String;

    .line 26
    iput-boolean p4, p0, Lcom/oculus/horizon/social/model/PrivacyConcept;->usesIdentityInSearch:Z

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/social/model/PrivacyConcept;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/horizon/social/model/PrivacyConcept;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/social/model/PrivacyConcept;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/social/model/PrivacyConcept;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/horizon/social/model/PrivacyConcept;->$VALUES:[Lcom/oculus/horizon/social/model/PrivacyConcept;

    invoke-virtual {v0}, [Lcom/oculus/horizon/social/model/PrivacyConcept;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/social/model/PrivacyConcept;

    return-object v0
.end method


# virtual methods
.method public isIdentityInSearchSelectable(Lcom/oculus/horizon/social/model/PrivacyState;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/oculus/horizon/social/model/PrivacyConcept;->usesIdentityInSearch:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oculus/horizon/social/model/PrivacyState;->ANYONE:Lcom/oculus/horizon/social/model/PrivacyState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/social/model/PrivacyState;->FRIENDS:Lcom/oculus/horizon/social/model/PrivacyState;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAlwaysSendIdentityInSearch()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/oculus/horizon/social/model/PrivacyConcept;->usesIdentityInSearch:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/social/model/PrivacyConcept;->graphQLName:Ljava/lang/String;

    return-object v0
.end method
