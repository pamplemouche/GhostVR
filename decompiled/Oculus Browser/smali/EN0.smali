.class public LEN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LE01;


# instance fields
.field public final synthetic a:LnU;


# direct methods
.method public constructor <init>(LnU;)V
    .locals 0

    .line 1
    iput-object p1, p0, LEN0;->a:LnU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LEN0;->a:LnU;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LnU;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, LEN0;->a:LnU;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LnU;->a(Ljava/lang/Object;)V

    return-void
.end method
