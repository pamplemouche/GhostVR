.class public Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;
.super Ljava/lang/Object;
.source "DynamicGatekeeperRegistry.java"

# interfaces
.implements Lcom/oculus/config/gatekeeper/GatekeeperRegistry;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mGatekeeperSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/util/Set;)V
    .locals 1
    .param p1    # Landroid/content/SharedPreferences;
        .annotation runtime Lcom/oculus/config/annotations/GatekeeperSharedPrefs;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->mGatekeeperSet:Ljava/util/HashSet;

    .line 28
    invoke-virtual {p0, p2}, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->filterKeys(Ljava/util/Set;)V

    .line 29
    return-void
.end method


# virtual methods
.method public deregisterGateKeeper(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->mGatekeeperSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public filterKeys(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 32
    sget-object v0, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->TAG:Ljava/lang/String;

    const-string v1, "In filterKeys!!"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36
    const/4 v2, 0x0

    .line 37
    sget-object v4, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->TAG:Ljava/lang/String;

    const-string v5, "filterKey: %s:%s"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v5, v1, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    const-string v0, "^/gatekeepers/(.+)$"

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 42
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->TAG:Ljava/lang/String;

    const-string v2, "Actual GK Key = %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->registerGateKeeper(Ljava/lang/String;)Z

    goto :goto_0

    .line 45
    :cond_1
    const-string v0, "^/gatekeeper_overrides/(.+)$"

    .line 46
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->TAG:Ljava/lang/String;

    const-string v2, "Actual GKOverrRide Key = %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 57
    :cond_2
    return-void

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public getRegisteredGatekeepers()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->mGatekeeperSet:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public isGatekeeperRegistered(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->mGatekeeperSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public registerGateKeeper(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->TAG:Ljava/lang/String;

    const-string v1, "Adding %s to DynamicGatekeeperRegistry"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->mGatekeeperSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
