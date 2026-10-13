.class public LUh0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LrV0;


# instance fields
.field public final a:LBe0;


# direct methods
.method public constructor <init>(LBe0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LUh0;->a:LBe0;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    .line 1
    iget-object v0, p0, LUh0;->a:LBe0;

    check-cast v0, LDe0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LDe0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LdT;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
