.class public final enum Lcom/oculus/horizon/social/request/SocialActivityParams$Role;
.super Ljava/lang/Enum;
.source "SocialActivityParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/social/request/SocialActivityParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/social/request/SocialActivityParams$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

.field public static final enum RECEIVER:Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

.field public static final enum SENDER:Lcom/oculus/horizon/social/request/SocialActivityParams$Role;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

    const-string v1, "SENDER"

    const-string v2, "SENDER"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;->SENDER:Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

    .line 14
    new-instance v0, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

    const-string v1, "RECEIVER"

    const-string v2, "RECEIVER"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;->RECEIVER:Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

    sget-object v1, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;->SENDER:Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;->RECEIVER:Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;->$VALUES:[Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;->value:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oculus/horizon/social/request/SocialActivityParams$Role;
    .locals 1

    .prologue
    .line 28
    const-string v0, "SENDER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;->SENDER:Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;->RECEIVER:Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/social/request/SocialActivityParams$Role;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/social/request/SocialActivityParams$Role;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;->$VALUES:[Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

    invoke-virtual {v0}, [Lcom/oculus/horizon/social/request/SocialActivityParams$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;->value:Ljava/lang/String;

    return-object v0
.end method
