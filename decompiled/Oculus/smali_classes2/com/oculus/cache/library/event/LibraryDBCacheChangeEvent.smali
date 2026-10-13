.class public Lcom/oculus/cache/library/event/LibraryDBCacheChangeEvent;
.super Ljava/lang/Object;
.source "LibraryDBCacheChangeEvent.java"


# instance fields
.field public final apps:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/oculus/cache/library/event/LibraryDBCacheChangeEvent;->apps:Lcom/google/common/collect/ImmutableList;

    .line 14
    return-void
.end method
