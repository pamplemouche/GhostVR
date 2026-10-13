.class public final enum Lcom/oculus/horizon/social/api/SearchResultMode;
.super Ljava/lang/Enum;
.source "SearchResultMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/social/api/SearchResultMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/social/api/SearchResultMode;

.field public static final enum ALIAS:Lcom/oculus/horizon/social/api/SearchResultMode;

.field public static final enum EMAIL:Lcom/oculus/horizon/social/api/SearchResultMode;

.field public static final enum REAL_NAME:Lcom/oculus/horizon/social/api/SearchResultMode;

.field public static final enum UNKNOWN:Lcom/oculus/horizon/social/api/SearchResultMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/oculus/horizon/social/api/SearchResultMode;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/social/api/SearchResultMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/social/api/SearchResultMode;->UNKNOWN:Lcom/oculus/horizon/social/api/SearchResultMode;

    .line 13
    new-instance v0, Lcom/oculus/horizon/social/api/SearchResultMode;

    const-string v1, "ALIAS"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/social/api/SearchResultMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/social/api/SearchResultMode;->ALIAS:Lcom/oculus/horizon/social/api/SearchResultMode;

    .line 14
    new-instance v0, Lcom/oculus/horizon/social/api/SearchResultMode;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/social/api/SearchResultMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/social/api/SearchResultMode;->EMAIL:Lcom/oculus/horizon/social/api/SearchResultMode;

    .line 15
    new-instance v0, Lcom/oculus/horizon/social/api/SearchResultMode;

    const-string v1, "REAL_NAME"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/social/api/SearchResultMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/social/api/SearchResultMode;->REAL_NAME:Lcom/oculus/horizon/social/api/SearchResultMode;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/horizon/social/api/SearchResultMode;

    sget-object v1, Lcom/oculus/horizon/social/api/SearchResultMode;->UNKNOWN:Lcom/oculus/horizon/social/api/SearchResultMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/social/api/SearchResultMode;->ALIAS:Lcom/oculus/horizon/social/api/SearchResultMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/social/api/SearchResultMode;->EMAIL:Lcom/oculus/horizon/social/api/SearchResultMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/social/api/SearchResultMode;->REAL_NAME:Lcom/oculus/horizon/social/api/SearchResultMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/social/api/SearchResultMode;->$VALUES:[Lcom/oculus/horizon/social/api/SearchResultMode;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/social/api/SearchResultMode;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/oculus/horizon/social/api/SearchResultMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/social/api/SearchResultMode;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/social/api/SearchResultMode;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/oculus/horizon/social/api/SearchResultMode;->$VALUES:[Lcom/oculus/horizon/social/api/SearchResultMode;

    invoke-virtual {v0}, [Lcom/oculus/horizon/social/api/SearchResultMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/social/api/SearchResultMode;

    return-object v0
.end method
