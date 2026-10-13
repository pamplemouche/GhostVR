.class public final LVz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lox;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:LIx;


# direct methods
.method public constructor <init>(LIx;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LVz;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, LVz;->b:LIx;

    return-void
.end method
