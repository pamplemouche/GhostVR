.class public LH61;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:Ljava/util/List;

.field public c:LR61;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LH61;->a:Ljava/nio/ByteBuffer;

    .line 3
    iput-object p2, p0, LH61;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()LR61;
    .locals 1

    .line 1
    iget-object v0, p0, LH61;->c:LR61;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LR61;

    invoke-direct {v0, p0}, LR61;-><init>(LH61;)V

    iput-object v0, p0, LH61;->c:LR61;

    .line 3
    :cond_0
    iget-object v0, p0, LH61;->c:LR61;

    return-object v0
.end method
