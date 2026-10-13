.class public final Ldb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lrb;

.field public final b:Lcb;

.field public c:Lbb;

.field public d:I


# direct methods
.method public constructor <init>(Lrb;Lcb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldb;->a:Lrb;

    .line 3
    iput-object p2, p0, Ldb;->b:Lcb;

    .line 4
    sget-object p1, Lbb;->c:Lbb;

    iput-object p1, p0, Ldb;->c:Lbb;

    return-void
.end method
