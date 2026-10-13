.class public final enum Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;
.super Ljava/lang/Enum;
.source "ServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

.field public static final enum DROPBOX:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

.field public static final enum FACEBOOK:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

.field public static final enum GOOGLE:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

.field public static final enum INSTAGRAM:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

.field public static final enum REMOTE_MEDIA:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

.field public static final enum UNKNOWN:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    const-string v1, "DROPBOX"

    const-string v2, "DROPBOX"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->DROPBOX:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    .line 11
    new-instance v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    const-string v1, "FACEBOOK"

    const-string v2, "FACEBOOK"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->FACEBOOK:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    .line 12
    new-instance v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    const-string v1, "GOOGLE"

    const-string v2, "GOOGLE"

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->GOOGLE:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    .line 13
    new-instance v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    const-string v1, "INSTAGRAM"

    const-string v2, "INSTAGRAM"

    invoke-direct {v0, v1, v7, v2}, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->INSTAGRAM:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    .line 14
    new-instance v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    const-string v1, "REMOTE_MEDIA"

    const-string v2, "REMOTE_MEDIA"

    invoke-direct {v0, v1, v8, v2}, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->REMOTE_MEDIA:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    .line 15
    new-instance v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->UNKNOWN:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    sget-object v1, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->DROPBOX:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->FACEBOOK:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->GOOGLE:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->INSTAGRAM:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->REMOTE_MEDIA:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->UNKNOWN:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->$VALUES:[Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->mName:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    sget-object v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->UNKNOWN:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    .line 39
    :cond_0
    :goto_0
    return-object v0

    .line 33
    :cond_1
    invoke-static {}, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->values()[Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 34
    iget-object v4, v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->mName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 39
    :cond_2
    sget-object v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->UNKNOWN:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->$VALUES:[Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    invoke-virtual {v0}, [Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->mName:Ljava/lang/String;

    return-object v0
.end method
