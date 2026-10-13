.class final Lcom/oculus/database/sqlite/SqlKeys$1;
.super Ljava/lang/Object;
.source "SqlKeys.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/database/sqlite/SqlKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/oculus/database/sqlite/SqlKeys$SqlKey;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/oculus/database/sqlite/SqlKeys$SqlKey;

    invoke-virtual {p0, p1}, Lcom/oculus/database/sqlite/SqlKeys$1;->apply(Lcom/oculus/database/sqlite/SqlKeys$SqlKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lcom/oculus/database/sqlite/SqlKeys$SqlKey;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-interface {p1}, Lcom/oculus/database/sqlite/SqlKeys$SqlKey;->getSql()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
