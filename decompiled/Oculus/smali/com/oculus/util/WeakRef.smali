.class public Lcom/oculus/util/WeakRef;
.super Ljava/lang/ref/WeakReference;
.source "WeakRef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 30
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/oculus/util/WeakRef;

    if-nez v1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    check-cast p1, Lcom/oculus/util/WeakRef;

    .line 35
    invoke-virtual {p0}, Lcom/oculus/util/WeakRef;->get()Ljava/lang/Object;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lcom/oculus/util/WeakRef;->get()Ljava/lang/Object;

    move-result-object v2

    .line 38
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/oculus/util/WeakRef;->get()Ljava/lang/Object;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 23
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
