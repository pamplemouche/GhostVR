.class public final synthetic LPU;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LNU;


# static fields
.field public static final a:LNU;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LPU;

    invoke-direct {v0}, LPU;-><init>()V

    sput-object v0, LPU;->a:LNU;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/base/MemoryPressureListener;->a:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LNU;

    .line 2
    invoke-interface {v1, p1}, LNU;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
