.class final Lcom/oculus/database/sqlite/SqlColumn$2;
.super Ljava/lang/Object;
.source "SqlColumn.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/database/sqlite/SqlColumn;
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
        "Lcom/oculus/database/sqlite/SqlColumn;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    check-cast p1, Lcom/oculus/database/sqlite/SqlColumn;

    invoke-virtual {p0, p1}, Lcom/oculus/database/sqlite/SqlColumn$2;->apply(Lcom/oculus/database/sqlite/SqlColumn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lcom/oculus/database/sqlite/SqlColumn;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/oculus/database/sqlite/SqlColumn;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
