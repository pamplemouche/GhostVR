.class public Lcom/oculus/extras/ExtrasBuilder;
.super Ljava/lang/Object;
.source "ExtrasBuilder.java"


# instance fields
.field private mData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/oculus/extras/ExtrasBuilder;-><init>(Ljava/util/Map;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/oculus/extras/ExtrasBuilder;->mData:Ljava/util/Map;

    .line 23
    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/extras/Extras;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/oculus/extras/Extras;

    iget-object v1, p0, Lcom/oculus/extras/ExtrasBuilder;->mData:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/oculus/extras/Extras;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getData()Ljava/util/Map;
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
    .line 69
    iget-object v0, p0, Lcom/oculus/extras/ExtrasBuilder;->mData:Ljava/util/Map;

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/oculus/extras/ExtrasBuilder;
    .locals 1

    .prologue
    .line 52
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/extras/ExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/oculus/extras/ExtrasBuilder;
    .locals 1

    .prologue
    .line 47
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/extras/ExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    move-result-object v0

    return-object v0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/oculus/extras/ExtrasBuilder;
    .locals 1

    .prologue
    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/extras/ExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    move-result-object v0

    return-object v0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;
    .locals 2

    .prologue
    .line 37
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/extras/ExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;
    .locals 1

    .prologue
    .line 27
    if-nez p2, :cond_0

    .line 28
    iget-object v0, p0, Lcom/oculus/extras/ExtrasBuilder;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :goto_0
    return-object p0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/oculus/extras/ExtrasBuilder;->mData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
