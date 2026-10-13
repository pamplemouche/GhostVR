.class public Lsx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsx;->a:Ljava/lang/Object;

    .line 3
    iput-boolean p2, p0, Lsx;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lsx;
    .locals 2

    .line 1
    new-instance v0, Lsx;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lsx;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public static b()Lsx;
    .locals 3

    .line 1
    new-instance v0, Lsx;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsx;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 2
    iget-boolean v0, p0, Lsx;->b:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lsx;->a:Ljava/lang/Object;

    invoke-static {v0}, Ltx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot retrieve value for failed result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
