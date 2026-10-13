.class public final LUz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnx;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:LIx;


# direct methods
.method public constructor <init>(LIx;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LUz;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, LUz;->b:LIx;

    return-void
.end method
