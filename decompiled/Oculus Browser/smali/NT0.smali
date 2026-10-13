.class public abstract LNT0;
.super LhC;
.source "PG"


# static fields
.field public static w:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, LNT0;->w:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method
