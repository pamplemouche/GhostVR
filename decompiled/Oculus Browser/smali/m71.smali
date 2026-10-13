.class public Lm71;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ll71;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ll71;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll71;-><init>(I)V

    .line 3
    iput-object v0, p0, Lm71;->a:Ll71;

    return-void
.end method
