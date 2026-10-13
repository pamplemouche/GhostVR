.class public Lcom/facebook/analytics2/logger/PigeonIdentity;
.super Ljava/lang/Object;
.source "PigeonIdentity.java"


# instance fields
.field public final accountId:Ljava/lang/String;

.field public final userId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->userId:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->accountId:Ljava/lang/String;

    return-void
.end method

.method public static forActingIdentity(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/PigeonIdentity;
    .locals 1

    .line 67
    new-instance v0, Lcom/facebook/analytics2/logger/PigeonIdentity;

    invoke-direct {v0, p0, p1}, Lcom/facebook/analytics2/logger/PigeonIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forSingleUser(Ljava/lang/String;)Lcom/facebook/analytics2/logger/PigeonIdentity;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_0
    new-instance v0, Lcom/facebook/analytics2/logger/PigeonIdentity;

    invoke-direct {v0, p0, p0}, Lcom/facebook/analytics2/logger/PigeonIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public getBatchLevelFields()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->userId:Ljava/lang/String;

    const-string v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->accountId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/analytics2/logger/PigeonIdentity;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->accountId:Ljava/lang/String;

    const-string v2, "account_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getPrivacySensitiveId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->userId:Ljava/lang/String;

    return-object v0
.end method
