.class public final enum Lcom/oculus/horizon/api/common/InternetConnection;
.super Ljava/lang/Enum;
.source "InternetConnection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/api/common/InternetConnection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/api/common/InternetConnection;

.field public static final enum NOT_REQUIRED:Lcom/oculus/horizon/api/common/InternetConnection;

.field public static final enum REQUIRED:Lcom/oculus/horizon/api/common/InternetConnection;

.field public static final enum REQUIRED_FOR_DOWNLOAD:Lcom/oculus/horizon/api/common/InternetConnection;


# instance fields
.field public final graphQLName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/oculus/horizon/api/common/InternetConnection;

    const-string v1, "REQUIRED"

    const-string v2, "REQUIRED"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/api/common/InternetConnection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/api/common/InternetConnection;->REQUIRED:Lcom/oculus/horizon/api/common/InternetConnection;

    .line 10
    new-instance v0, Lcom/oculus/horizon/api/common/InternetConnection;

    const-string v1, "NOT_REQUIRED"

    const-string v2, "NOT_REQUIRED"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/api/common/InternetConnection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/api/common/InternetConnection;->NOT_REQUIRED:Lcom/oculus/horizon/api/common/InternetConnection;

    .line 11
    new-instance v0, Lcom/oculus/horizon/api/common/InternetConnection;

    const-string v1, "REQUIRED_FOR_DOWNLOAD"

    const-string v2, "REQUIRED_FOR_DOWNLOAD"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/api/common/InternetConnection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/api/common/InternetConnection;->REQUIRED_FOR_DOWNLOAD:Lcom/oculus/horizon/api/common/InternetConnection;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/api/common/InternetConnection;

    sget-object v1, Lcom/oculus/horizon/api/common/InternetConnection;->REQUIRED:Lcom/oculus/horizon/api/common/InternetConnection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/api/common/InternetConnection;->NOT_REQUIRED:Lcom/oculus/horizon/api/common/InternetConnection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/api/common/InternetConnection;->REQUIRED_FOR_DOWNLOAD:Lcom/oculus/horizon/api/common/InternetConnection;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/api/common/InternetConnection;->$VALUES:[Lcom/oculus/horizon/api/common/InternetConnection;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/oculus/horizon/api/common/InternetConnection;->graphQLName:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oculus/horizon/api/common/InternetConnection;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 25
    if-eqz p0, :cond_1

    .line 26
    invoke-static {}, Lcom/oculus/horizon/api/common/InternetConnection;->values()[Lcom/oculus/horizon/api/common/InternetConnection;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 27
    iget-object v4, v0, Lcom/oculus/horizon/api/common/InternetConnection;->graphQLName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    :goto_1
    return-object v0

    .line 26
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/api/common/InternetConnection;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/oculus/horizon/api/common/InternetConnection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/InternetConnection;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/api/common/InternetConnection;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/oculus/horizon/api/common/InternetConnection;->$VALUES:[Lcom/oculus/horizon/api/common/InternetConnection;

    invoke-virtual {v0}, [Lcom/oculus/horizon/api/common/InternetConnection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/api/common/InternetConnection;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/horizon/api/common/InternetConnection;->graphQLName:Ljava/lang/String;

    return-object v0
.end method
