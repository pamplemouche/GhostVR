.class public Lcom/facebook/analytics2/logger/PigeonIdentity;
.super Ljava/lang/Object;
.source "PigeonIdentity.java"


# instance fields
.field public final accountId:Ljava/lang/String;

.field public final userId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->userId:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->accountId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static forSingleUser(Ljava/lang/String;)Lcom/facebook/analytics2/logger/PigeonIdentity;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/analytics2/logger/PigeonIdentity;

    invoke-direct {v0, p0, p0}, Lcom/facebook/analytics2/logger/PigeonIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 96
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getBatchLevelFields()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    const-string/jumbo v1, "uid"

    iget-object v2, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->accountId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/analytics2/logger/PigeonIdentity;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    const-string v1, "account_id"

    iget-object v2, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->accountId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    return-object v0
.end method

.method public getPrivacySensitiveId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->userId:Ljava/lang/String;

    return-object v0
.end method
