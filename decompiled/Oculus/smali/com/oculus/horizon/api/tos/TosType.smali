.class public final enum Lcom/oculus/horizon/api/tos/TosType;
.super Ljava/lang/Enum;
.source "TosType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/api/tos/TosType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/api/tos/TosType;

.field public static final enum DEVELOPERS:Lcom/oculus/horizon/api/tos/TosType;

.field public static final enum PRIVACY_POLICY:Lcom/oculus/horizon/api/tos/TosType;

.field public static final enum TOS:Lcom/oculus/horizon/api/tos/TosType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/oculus/horizon/api/tos/TosType;

    const-string v1, "TOS"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/api/tos/TosType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/api/tos/TosType;->TOS:Lcom/oculus/horizon/api/tos/TosType;

    .line 8
    new-instance v0, Lcom/oculus/horizon/api/tos/TosType;

    const-string v1, "PRIVACY_POLICY"

    const-string v2, "PP"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/api/tos/TosType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/api/tos/TosType;->PRIVACY_POLICY:Lcom/oculus/horizon/api/tos/TosType;

    .line 9
    new-instance v0, Lcom/oculus/horizon/api/tos/TosType;

    const-string v1, "DEVELOPERS"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/api/tos/TosType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/api/tos/TosType;->DEVELOPERS:Lcom/oculus/horizon/api/tos/TosType;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/api/tos/TosType;

    sget-object v1, Lcom/oculus/horizon/api/tos/TosType;->TOS:Lcom/oculus/horizon/api/tos/TosType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/api/tos/TosType;->PRIVACY_POLICY:Lcom/oculus/horizon/api/tos/TosType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/api/tos/TosType;->DEVELOPERS:Lcom/oculus/horizon/api/tos/TosType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/api/tos/TosType;->$VALUES:[Lcom/oculus/horizon/api/tos/TosType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {p0}, Lcom/oculus/horizon/api/tos/TosType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/tos/TosType;->value:Ljava/lang/String;

    .line 16
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
    iput-object p3, p0, Lcom/oculus/horizon/api/tos/TosType;->value:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/api/tos/TosType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/horizon/api/tos/TosType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/tos/TosType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/api/tos/TosType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/horizon/api/tos/TosType;->$VALUES:[Lcom/oculus/horizon/api/tos/TosType;

    invoke-virtual {v0}, [Lcom/oculus/horizon/api/tos/TosType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/api/tos/TosType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/api/tos/TosType;->value:Ljava/lang/String;

    return-object v0
.end method
