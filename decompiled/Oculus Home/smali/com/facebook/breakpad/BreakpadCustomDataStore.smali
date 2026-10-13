.class public Lcom/facebook/breakpad/BreakpadCustomDataStore;
.super Ljava/lang/Object;
.source "BreakpadCustomDataStore.java"

# interfaces
.implements Lcom/facebook/acra/customdata/CustomDataStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p1}, Lcom/facebook/breakpad/BreakpadManager;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 17
    invoke-static {p1}, Lcom/facebook/breakpad/BreakpadManager;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshot()Ljava/util/Map;
    .locals 1
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
    .line 32
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->getCustomDataSnapshot()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public removeCustomData(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p1}, Lcom/facebook/breakpad/BreakpadManager;->removeCustomData(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public varargs setCustomData(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fmt"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 27
    invoke-static {p1, p2, p3}, Lcom/facebook/breakpad/BreakpadManager;->setCustomData(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method
