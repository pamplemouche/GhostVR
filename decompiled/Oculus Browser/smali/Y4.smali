.class public abstract LY4;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public c:I

.field public d:LX4;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LY4;->a:I

    .line 3
    iput p2, p0, LY4;->b:I

    .line 4
    iput p3, p0, LY4;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, LY4;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, LY4;->a:I

    iget v1, p0, LY4;->b:I

    iget v2, p0, LY4;->c:I

    new-instance v3, LW4;

    invoke-direct {v3, p0}, LW4;-><init>(LY4;)V

    .line 3
    new-instance v4, LZ4;

    invoke-direct {v4, v0, v1, v2, v3}, LZ4;-><init>(IIILa5;)V

    .line 4
    iput-object v4, p0, LY4;->e:Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v0, p0, LY4;->e:Ljava/lang/Object;

    return-object v0
.end method
