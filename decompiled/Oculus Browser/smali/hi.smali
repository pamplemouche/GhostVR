.class public Lhi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static d:LZ6;


# instance fields
.field public a:I

.field public b:LIg;

.field public c:LIg;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La7;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, La7;-><init>(I)V

    sput-object v0, Lhi;->d:LZ6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lhi;
    .locals 1

    .line 1
    sget-object v0, Lhi;->d:LZ6;

    invoke-interface {v0}, LZ6;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhi;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lhi;

    invoke-direct {v0}, Lhi;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static a(Lhi;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lhi;->a:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lhi;->b:LIg;

    .line 5
    iput-object v0, p0, Lhi;->c:LIg;

    .line 6
    sget-object v0, Lhi;->d:LZ6;

    invoke-interface {v0, p0}, LZ6;->a(Ljava/lang/Object;)Z

    return-void
.end method
