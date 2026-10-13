.class public final Lp2;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Lz2;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILz2;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lp2;->a:I

    .line 4
    iput-object p2, p0, Lp2;->b:Lz2;

    return-void
.end method
